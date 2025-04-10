/*
  # Services Table Migration Fix

  1. Changes
    - Drop existing table if exists
    - Recreate table with updated schema
    - Add indexes and policies
    - Create triggers for order management

  2. Security
    - Enable RLS
    - Add policies for public read access
    - Add policies for authenticated users to manage content
*/

-- Drop existing table and related objects
DROP TRIGGER IF EXISTS service_deleted ON nossos_servicos;
DROP TRIGGER IF EXISTS set_service_order ON nossos_servicos;
DROP FUNCTION IF EXISTS handle_service_deletion();
DROP FUNCTION IF EXISTS update_service_order();
DROP TABLE IF EXISTS nossos_servicos;

-- Create nossos_servicos table
CREATE TABLE nossos_servicos (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    created_at TIMESTAMPTZ DEFAULT now(),
    title TEXT NOT NULL UNIQUE,
    short_description TEXT NOT NULL,
    detailed_description TEXT NOT NULL,
    features TEXT[] NOT NULL DEFAULT '{}',
    price_range TEXT NOT NULL,
    base_price NUMERIC(10,2),
    price_type TEXT CHECK (price_type IN ('fixed', 'hourly', 'monthly', 'project')),
    minimum_contract_months INTEGER,
    setup_fee NUMERIC(10,2),
    delivery_time TEXT,
    active BOOLEAN DEFAULT true,
    "order" INTEGER,
    icon TEXT,
    category TEXT,
    seo_keywords TEXT[] DEFAULT '{}',
    recommended_for TEXT[] DEFAULT '{}',
    requirements TEXT[] DEFAULT '{}'
);

-- Enable Row Level Security
ALTER TABLE nossos_servicos ENABLE ROW LEVEL SECURITY;

-- Create indexes
CREATE INDEX idx_nossos_servicos_active ON nossos_servicos(active);
CREATE INDEX idx_nossos_servicos_category ON nossos_servicos(category);
CREATE INDEX idx_nossos_servicos_order ON nossos_servicos("order");
CREATE UNIQUE INDEX unique_service_title ON nossos_servicos(title);

-- Create policies
CREATE POLICY "Enable select for all users" ON nossos_servicos
    FOR SELECT TO public
    USING (active = true);

CREATE POLICY "Enable insert for authenticated users" ON nossos_servicos
    FOR INSERT TO authenticated
    WITH CHECK (true);

CREATE POLICY "Enable update for authenticated users" ON nossos_servicos
    FOR UPDATE TO authenticated
    USING (true)
    WITH CHECK (true);

CREATE POLICY "Enable delete for authenticated users" ON nossos_servicos
    FOR DELETE TO authenticated
    USING (true);

-- Create function to handle service deletion
CREATE OR REPLACE FUNCTION handle_service_deletion()
RETURNS TRIGGER AS $$
BEGIN
    -- If service is being deleted or deactivated
    IF (TG_OP = 'DELETE' OR (TG_OP = 'UPDATE' AND NEW.active = false)) THEN
        -- Update order of remaining services
        UPDATE nossos_servicos
        SET "order" = "order" - 1
        WHERE "order" > OLD."order" AND active = true;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for service deletion
CREATE TRIGGER service_deleted
    AFTER DELETE OR UPDATE OF active ON nossos_servicos
    FOR EACH ROW
    EXECUTE FUNCTION handle_service_deletion();

-- Create function to update service order
CREATE OR REPLACE FUNCTION update_service_order()
RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT' OR (TG_OP = 'UPDATE' AND (OLD.title != NEW.title OR OLD.active != NEW.active))) THEN
        -- Get the current maximum order
        SELECT COALESCE(MAX("order"), 0) + 1 INTO NEW."order"
        FROM nossos_servicos
        WHERE active = true;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for service order
CREATE TRIGGER set_service_order
    BEFORE INSERT OR UPDATE OF title, active ON nossos_servicos
    FOR EACH ROW
    EXECUTE FUNCTION update_service_order();

-- Add comment
COMMENT ON TABLE nossos_servicos IS 'Tabela para gerenciar os serviços oferecidos com informações detalhadas';