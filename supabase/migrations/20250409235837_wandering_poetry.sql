/*
  # Services Data Migration
  
  This migration inserts all 32 services with their complete information including:
  - Detailed descriptions
  - Price ranges
  - Features
  - Icons
  - Categories
*/

-- Insert services data
INSERT INTO nossos_servicos (
    title,
    short_description,
    detailed_description,
    features,
    price_range,
    price_type,
    icon,
    category,
    recommended_for
) VALUES
-- SEO
(
    'SEO',
    'Melhore seu posicionamento orgânico nos motores de busca e aumente sua visibilidade online.',
    'Nossa estratégia de SEO é completa, abrangendo otimização on-page, off-page e técnica para melhorar o ranking do seu site nas páginas de resultados dos mecanismos de busca. Trabalhamos com pesquisa avançada de palavras-chave, análise de concorrentes, criação de conteúdo otimizado e construção de links de qualidade.',
    ARRAY[
        'Análise técnica completa do site',
        'Pesquisa avançada de palavras-chave',
        'Otimização on-page',
        'Construção de links de qualidade',
        'Relatórios mensais de performance',
        'Análise de concorrentes',
        'Monitoramento de rankings'
    ],
    'R$ 800 - R$ 3.500 / mês',
    'monthly',
    'search',
    'Marketing Digital',
    ARRAY[
        'Empresas que buscam visibilidade orgânica',
        'Negócios focados em presença digital',
        'E-commerces',
        'Empresas B2B e B2C'
    ]
),

-- Google Ads
(
    'Google Ads',
    'Campanhas de anúncios otimizadas no Google para atrair leads qualificados e aumentar conversões.',
    'Nossas campanhas de Google Ads são cuidadosamente planejadas e otimizadas para maximizar o retorno sobre o investimento. Utilizamos segmentação avançada, palavras-chave de alta conversão e criamos anúncios persuasivos que convertem visitantes em clientes.',
    ARRAY[
        'Configuração completa de campanhas',
        'Segmentação avançada de públicos',
        'Criação de anúncios persuasivos',
        'Otimização contínua de campanhas',
        'Relatórios semanais de performance',
        'Remarketing estratégico',
        'Testes A/B de anúncios'
    ],
    'R$ 1.500 - R$ 5.000 / mês + investimento em mídia',
    'monthly',
    'bar-chart-3',
    'Marketing Digital',
    ARRAY[
        'Empresas que buscam resultados rápidos',
        'Negócios com orçamento para mídia paga',
        'E-commerces',
        'Empresas B2B e B2C'
    ]
),

-- Facebook Ads
(
    'Facebook Ads',
    'Anúncios direcionados ao perfil ideal do seu cliente nas plataformas do Meta.',
    'Nossa estratégia de Facebook Ads é focada em resultados. Criamos campanhas segmentadas, anúncios visualmente atrativos e mensagens persuasivas para alcançar o público certo no momento certo, maximizando suas conversões nas plataformas do Meta.',
    ARRAY[
        'Configuração completa de campanhas',
        'Segmentação avançada de públicos',
        'Criação de anúncios criativos',
        'Testes de elementos visuais e mensagens',
        'Otimização contínua de campanhas',
        'Remarketing estratégico',
        'Relatórios semanais de performance'
    ],
    'R$ 1.500 - R$ 5.000 / mês + investimento em mídia',
    'monthly',
    'target',
    'Marketing Digital',
    ARRAY[
        'Empresas B2C',
        'E-commerces',
        'Marcas de lifestyle',
        'Negócios locais'
    ]
),

-- Instagram Ads
(
    'Instagram Ads',
    'Anúncios estratégicos no Instagram para aumentar visibilidade, engajamento e conversões.',
    'Nossas campanhas de Instagram Ads são criadas para capturar a atenção do seu público-alvo em um ambiente altamente visual. Desenvolvemos estratégias que utilizam todos os formatos da plataforma para maximizar engajamento e conversões para seu negócio.',
    ARRAY[
        'Criação de anúncios visuais de alto impacto',
        'Estratégias para Feed, Stories, Reels e Explore',
        'Segmentação precisa de audiência',
        'Campanhas de remarketing avançadas',
        'Otimização contínua de performance',
        'Integração com catálogo de produtos',
        'Relatórios detalhados de resultados'
    ],
    'R$ 1.500 - R$ 5.000 / mês + investimento em mídia',
    'monthly',
    'instagram',
    'Marketing Digital',
    ARRAY[
        'Marcas de moda e lifestyle',
        'E-commerces',
        'Influenciadores',
        'Empresas B2C'
    ]
),

-- LinkedIn Ads
(
    'LinkedIn Ads',
    'Campanhas publicitárias no LinkedIn focadas em leads B2B e recrutamento.',
    'Nossas campanhas no LinkedIn são especialmente desenvolvidas para mercados B2B e profissionais. Utilizamos a segmentação avançada da plataforma para alcançar tomadores de decisão e profissionais específicos, gerando leads qualificados para seu negócio.',
    ARRAY[
        'Segmentação por cargo, empresa e habilidades',
        'Campanhas de geração de leads B2B',
        'Anúncios de recrutamento e employer branding',
        'Formatos de InMail, conteúdo e display',
        'Otimização para objetivos de conversão',
        'Estratégias de conteúdo para audiência profissional',
        'Análise de ROI e custo por lead'
    ],
    'R$ 2.000 - R$ 6.000 / mês + investimento em mídia',
    'monthly',
    'linkedin',
    'Marketing Digital',
    ARRAY[
        'Empresas B2B',
        'Consultorias',
        'Empresas de tecnologia',
        'Recrutamento e RH'
    ]
),

-- Marketing de Conteúdo
(
    'Marketing de Conteúdo',
    'Conteúdos relevantes e otimizados para atrair, converter e fidelizar clientes.',
    'Nosso serviço de marketing de conteúdo é focado em criar materiais relevantes e valiosos que atraem, engajam e convertem sua audiência. Desde artigos de blog até e-books e infográficos, desenvolvemos conteúdos alinhados com sua estratégia de negócio e otimizados para SEO.',
    ARRAY[
        'Planejamento estratégico de conteúdo',
        'Pesquisa de palavras-chave',
        'Produção de artigos otimizados para SEO',
        'Criação de e-books e materiais ricos',
        'Revisão e otimização de conteúdos existentes',
        'Distribuição estratégica de conteúdo',
        'Análise de performance'
    ],
    'R$ 1.000 - R$ 4.500 / mês',
    'monthly',
    'line-chart',
    'Marketing Digital',
    ARRAY[
        'Empresas que valorizam autoridade',
        'Negócios B2B e B2C',
        'Startups',
        'Consultorias'
    ]
),

-- Email Marketing
(
    'Email Marketing',
    'Estratégias de email marketing eficazes para nutrir leads e aumentar vendas.',
    'Desenvolvemos campanhas de email marketing que engajam sua audiência e impulsionam conversões. Desde newsletters até fluxos automatizados de nutrição de leads, criamos estratégias que fortalecem o relacionamento com clientes e geram resultados mensuráveis.',
    ARRAY[
        'Criação de templates personalizados',
        'Segmentação avançada de listas',
        'Automação de fluxos de emails',
        'Testes A/B para otimização',
        'Relatórios e análise de performance',
        'Integração com CRM e plataformas de vendas',
        'Estratégias de engajamento e reativação'
    ],
    'R$ 1.500 - R$ 6.000 / mês',
    'monthly',
    'mail',
    'Marketing Digital',
    ARRAY[
        'E-commerces',
        'Empresas B2B',
        'Infoprodutos',
        'Serviços por assinatura'
    ]
),

-- Redes Sociais
(
    'Redes Sociais',
    'Gestão estratégica de redes sociais para engajar seu público e fortalecer sua marca.',
    'Nossa gestão de redes sociais vai muito além de apenas publicações. Desenvolvemos estratégias personalizadas para cada plataforma, criamos conteúdos envolventes, interagimos com sua audiência e analisamos os resultados para otimizar continuamente sua presença digital.',
    ARRAY[
        'Planejamento estratégico mensal',
        'Produção de conteúdo personalizado',
        'Design gráfico para posts',
        'Calendário editorial',
        'Monitoramento e interação com a audiência',
        'Análise de métricas e insights',
        'Relatórios de desempenho mensais'
    ],
    'R$ 1.200 - R$ 4.000 / mês',
    'monthly',
    'monitor-smartphone',
    'Marketing Digital',
    ARRAY[
        'Empresas B2C',
        'Marcas de lifestyle',
        'Negócios locais',
        'Profissionais liberais'
    ]
),

-- Análise de Dados
(
    'Análise de Dados',
    'Monitoramento e análise de dados para otimizar estratégias e maximizar resultados.',
    'Nossa análise de dados transforma informações complexas em insights acionáveis para seu negócio. Monitoramos métricas-chave, identificamos tendências e oportunidades, e fornecemos recomendações estratégicas para otimizar seus resultados de marketing digital.',
    ARRAY[
        'Configuração de Google Analytics 4',
        'Criação de dashboards personalizados',
        'Análise de funil de conversão',
        'Identificação de oportunidades de otimização',
        'Rastreamento de KPIs de marketing',
        'Relatórios executivos mensais',
        'Recomendações estratégicas baseadas em dados'
    ],
    'R$ 1.500 - R$ 4.000 / mês',
    'monthly',
    'database',
    'Marketing Digital',
    ARRAY[
        'E-commerces',
        'Empresas data-driven',
        'Startups',
        'Empresas em crescimento'
    ]
),

-- Automação de Marketing
(
    'Automação de Marketing',
    'Automatize processos de marketing para aumentar eficiência e melhorar resultados.',
    'Nossas soluções de automação de marketing ajudam a otimizar seus fluxos de trabalho, personalizar a comunicação com clientes e aumentar a eficiência operacional. Implementamos ferramentas e estratégias que permitem campanhas mais inteligentes e orientadas por dados.',
    ARRAY[
        'Configuração de fluxos de automação',
        'Segmentação avançada de clientes',
        'Nurturing de leads automatizado',
        'Integração entre plataformas de marketing',
        'Personalização em escala',
        'Testes A/B automatizados',
        'Relatórios de performance'
    ],
    'R$ 2.500 - R$ 7.000 / mês',
    'monthly',
    'mail-warning',
    'Marketing Digital',
    ARRAY[
        'Empresas B2B',
        'E-commerces',
        'Empresas SaaS',
        'Negócios escaláveis'
    ]
),

-- Branding Digital
(
    'Branding Digital',
    'Desenvolva uma identidade de marca forte e consistente no ambiente digital.',
    'Nosso serviço de branding digital ajuda a construir e fortalecer a identidade da sua marca no ambiente online. Desenvolvemos estratégias que comunicam os valores da sua empresa de forma consistente, memorável e impactante em todos os pontos de contato digitais.',
    ARRAY[
        'Análise de posicionamento de marca',
        'Desenvolvimento de identidade visual',
        'Estratégia de comunicação digital',
        'Guia de voz e tom da marca',
        'Design de elementos visuais',
        'Diretrizes de aplicação da marca',
        'Estratégia de conteúdo alinhado à marca'
    ],
    'R$ 5.000 - R$ 20.000 / projeto',
    'project',
    'star',
    'Marketing Digital',
    ARRAY[
        'Startups',
        'Empresas em rebranding',
        'Novos negócios',
        'Empresas em expansão'
    ]
),

-- Consultoria de Marketing Digital
(
    'Consultoria de Marketing Digital',
    'Orientação estratégica personalizada para maximizar seus resultados de marketing digital.',
    'Nossa consultoria oferece orientação especializada para otimizar suas estratégias de marketing digital. Analisamos seu negócio, mercado e concorrência para criar um plano personalizado que maximize seus resultados e retorno sobre investimento.',
    ARRAY[
        'Análise completa da presença digital',
        'Auditoria de marketing digital',
        'Planejamento estratégico personalizado',
        'Recomendações baseadas em dados',
        'Mentoria para equipes internas',
        'Workshops e treinamentos',
        'Acompanhamento contínuo de resultados'
    ],
    'R$ 3.000 - R$ 10.000 / mês',
    'monthly',
    'message-circle',
    'Marketing Digital',
    ARRAY[
        'Empresas em transformação digital',
        'Negócios em crescimento',
        'Startups',
        'Equipes internas de marketing'
    ]
),

-- Copywriting
(
    'Copywriting',
    'Textos persuasivos que vendem, criam conexões e transformam visitantes em clientes.',
    'Nosso serviço de copywriting é especializado em criar textos persuasivos que geram conversão. De páginas de vendas a emails marketing e descrições de produtos, criamos conteúdos que cativam, engajam e incentivam seu público a tomar ação.',
    ARRAY[
        'Desenvolvimento de páginas de vendas',
        'Criação de sequências de emails',
        'Redação de anúncios persuasivos',
        'Descrições de produtos otimizadas',
        'Revisão e otimização de textos existentes',
        'Desenvolvimento de headlines impactantes',
        'CTAs eficientes'
    ],
    'R$ 1.200 - R$ 5.000 / projeto',
    'project',
    'message-square',
    'Marketing Digital',
    ARRAY[
        'E-commerces',
        'Infoprodutos',
        'Empresas B2B e B2C',
        'Startups'
    ]
),

-- Design Gráfico e Criação Visual
(
    'Design Gráfico e Criação Visual',
    'Criação visual de alta qualidade para suas campanhas de marketing digital.',
    'Nossa equipe de designers desenvolve materiais visuais de alto impacto que destacam sua marca e comunicam sua mensagem com eficiência. Criamos desde peças para redes sociais até materiais complexos para campanhas integradas.',
    ARRAY[
        'Design para redes sociais',
        'Criação de banners e anúncios',
        'Design de emails marketing',
        'Infográficos e apresentações',
        'Materiais para campanhas digitais',
        'Identidade visual para projetos',
        'Edição e tratamento de imagens'
    ],
    'R$ 2.000 - R$ 8.000 / mês',
    'monthly',
    'brush',
    'Design e Desenvolvimento',
    ARRAY[
        'Empresas com presença digital ativa',
        'E-commerces',
        'Agências',
        'Startups'
    ]
),

-- Desenvolvimento Web
(
    'Desenvolvimento Web',
    'Sites e landing pages de alta performance focados em conversão e experiência do usuário.',
    'Desenvolvemos sites e landing pages que não são apenas visualmente atrativos, mas também altamente funcionais e otimizados para conversão. Nosso foco está em criar experiências digitais que engajam visitantes e os transformam em clientes fiéis.',
    ARRAY[
        'Design personalizado e responsivo',
        'Desenvolvimento com tecnologias modernas',
        'Otimização para SEO técnico',
        'Integração com ferramentas de marketing',
        'Formulários de captura de leads',
        'Páginas de checkout otimizadas',
        'Treinamento para gestão do site'
    ],
    'R$ 3.000 - R$ 15.000 / projeto',
    'project',
    'globe',
    'Design e Desenvolvimento',
    ARRAY[
        'Empresas que precisam de presença online',
        'E-commerces',
        'Startups',
        'Profissionais liberais'
    ]
),

-- Desenvolvimento de Site e Landing Pages
(
    'Desenvolvimento de Site e Landing Pages',
    'Criação de sites e páginas de conversão otimizadas para resultados.',
    'Criamos sites e landing pages estrategicamente desenvolvidos para converter visitantes em leads e clientes. Nossos projetos combinam design atrativo, usabilidade e elementos de conversão para maximizar os resultados do seu negócio digital.',
    ARRAY[
        'Sites institucionais e corporativos',
        'Landing pages de alta conversão',
        'Design responsivo para todos dispositivos',
        'Otimização de taxa de conversão',
        'Integração com CMS e ferramentas de marketing',
        'Testes A/B para melhorias contínuas',
        'Suporte técnico especializado'
    ],
    'R$ 2.500 - R$ 15.000 / projeto',
    'project',
    'layout',
    'Design e Desenvolvimento',
    ARRAY[
        'Empresas que precisam de presença online',
        'Negócios em crescimento',
        'Startups',
        'Profissionais liberais'
    ]
),

-- Aplicativos Móveis e Desenvolvimento de Soluções Digitais
(
    'Aplicativos Móveis e Desenvolvimento de Soluções Digitais',
    'Criação de aplicativos mobile e soluções digitais personalizadas para seu negócio.',
    'Nossa equipe de desenvolvimento cria aplicativos móveis e soluções digitais personalizadas de alta performance que atendem às necessidades específicas do seu negócio. Desenvolvemos aplicativos nativos e híbridos para iOS e Android, além de sistemas web responsivos e progressivos.',
    ARRAY[
        'Desenvolvimento de aplicativos iOS e Android',
        'Aplicativos PWA (Progressive Web Apps)',
        'UX/UI para aplicativos móveis',
        'Integrações com APIs e serviços',
        'Manutenção e suporte técnico',
        'Testes de usabilidade',
        'Analytics e monitoramento'
    ],
    'R$ 10.000 - R$ 50.000 / projeto',
    'project',
    'shopping-bag',
    'Design e Desenvolvimento',
    ARRAY[
        'Empresas que precisam de soluções móveis',
        'Startups',
        'E-commerces',
        'Empresas inovadoras'
    ]
),

-- Gestão de Campanhas de Publicidade em Vídeo
(
    'Gestão de Campanhas de Publicidade em Vídeo',
    'Criação e gestão de campanhas de vídeo para plataformas como YouTube, TikTok e Instagram.',
    'Nossas campanhas de publicidade em vídeo são estrategicamente planejadas para captar a atenção do público-alvo e gerar engajamento significativo. Trabalhamos com plataformas como YouTube, TikTok, Instagram e Facebook para maximizar o alcance e impacto dos seus vídeos.',
    ARRAY[
        'Estratégia de conteúdo em vídeo',
        'Produção e edição de vídeos publicitários',
        'Configuração de campanhas segmentadas',
        'Otimização para diferentes plataformas',
        'Análise de métricas de engajamento',
        'Testes de formatos e mensagens',
        'Relatórios detalhados de performance'
    ],
    'R$ 3.000 - R$ 15.000 / mês + investimento em mídia',
    'monthly',
    'shopping-bag',
    'Marketing Digital',
    ARRAY[
        'Empresas que investem em vídeo marketing',
        'E-commerces',
        'Marcas de lifestyle',
        'Empresas B2C'
    ]
),

-- Gestão de Comunidades Online
(
    'Gestão de Comunidades Online',
    'Criação e gerenciamento de comunidades online para fortalecer o relacionamento com clientes.',
    'Desenvolvemos e gerenciamos comunidades online que criam um senso de pertencimento entre seus clientes e sua marca. Através de conteúdo relevante e interações estratégicas, transformamos seguidores em defensores ativos do seu negócio.',
    ARRAY[
        'Criação de grupos e comunidades em plataformas sociais',
        'Moderação e engajamento contínuo',
        'Produção de conteúdo exclusivo para comunidades',
        'Eventos online e atividades de engajamento',
        'Coleta de feedback e pesquisas',
        'Gestão de crises e situações sensíveis',
        'Análise de crescimento e engajamento'
    ],
    'R$ 2.000 - R$ 6.000 / mês',
    'monthly',
    'users',
    'Marketing Digital',
    ARRAY[
        'Empresas com base de clientes ativa',
        'Marcas com forte presença online',
        'Startups',
        'Empresas SaaS'
    ]
),

-- Gestão de Reputação Online (ORM)
(
    'Gestão de Reputação Online (ORM)',
    'Monitoramento e gestão da reputação da sua marca no ambiente digital.',
    'Nosso serviço de gestão de reputação online protege e fortalece a imagem da sua marca na internet. Monitoramos menções, avaliações e comentários, respondendo estrategicamente e trabalhando para construir uma percepção positiva do seu negócio.',
    ARRAY[
        'Monitoramento de menções à marca',
        'Gestão de avaliações em plataformas',
        'Resposta estratégica a feedbacks negativos',
        'Amplificação de conteúdo positivo',
        'Desenvolvimento de protocolos de crise',
        'Relatórios de sentimento e percepção',
        'Estratégias proativas de construção de reputação'
    ],
    'R$ 2.500 - R$ 8.000 / mês',
    'monthly',
    'message-circle',
    'Marketing Digital',
    ARRAY[
        'Empresas com forte presença online',
        'Marcas de varejo',
        'Empresas B2C',
        'Profissionais liberais'
    ]
),

-- Gestão de Tráfego Pago
(
    'Gestão de Tráfego Pago',
    'Gerenciamento completo de campanhas pagas para maximizar seu retorno sobre investimento.',
    'Nossa gestão de tráfego pago integra múltiplas plataformas de anúncios para criar uma estratégia coesa que maximiza seu ROI. Trabalhamos continuamente na otimização de campanhas, testes de criativos e ajustes de segmentação para entregar os melhores resultados.',
    ARRAY[
        'Estratégia multi-plataforma integrada',
        'Criação de campanhas em Google, Facebook, Instagram e LinkedIn',
        'Segmentação avançada de públicos',
        'Desenvolvimento de criativos de alto desempenho',
        'Otimização contínua baseada em dados',
        'Atribuição e análise de conversão',
        'Relatórios consolidados de performance'
    ],
    'R$ 2.500 - R$ 10.000 / mês + investimento em mídia',
    'monthly',
    'dollar-sign',
    'Marketing Digital',
    ARRAY[
        'Empresas com orçamento para mídia',
        'E-commerces',
        'Startups',
        'Empresas B2B e B2C'
    ]
),

-- Google Analytics e Relatórios de Dados
(
    'Google Analytics e Relatórios de Dados',
    'Implementação, configuração e análise de dados para tomada de decisões estratégicas.',
    'Nosso serviço especializado de Google Analytics e relatórios de dados oferece insights valiosos para sua estratégia digital. Configuramos, analisamos e traduzimos dados complexos em informações acionáveis que impulsionam o crescimento do seu negócio.',
    ARRAY[
        'Implementação e configuração do GA4',
        'Criação de objetivos e eventos personalizados',
        'Configuração de e-commerce avançado',
        'Integração com Google Ads e outras plataformas',
        'Dashboards personalizados para KPIs',
        'Análise mensal de dados e insights',
        'Recomendações baseadas em dados'
    ],
    'R$ 1.800 - R$ 5.000 / mês',
    'monthly',
    'database',
    'Marketing Digital',
    ARRAY[
        'Empresas data-driven',
        'E-commerces',
        'Startups',
        'Empresas em crescimento'
    ]
),

-- Influencer Marketing
(
    'Influencer Marketing',
    'Estratégias de colaboração com influenciadores para amplificar sua marca.',
    'Nosso serviço de Influencer Marketing conecta sua marca aos influenciadores mais relevantes para seu público-alvo. Desenvolvemos parcerias estratégicas que amplificam sua mensagem, geram credibilidade e impulsionam resultados através de conteúdo autêntico.',
    ARRAY[
        'Identificação de influenciadores alinhados à marca',
        'Desenvolvimento de estratégias de colaboração',
        'Negociação e gestão de parcerias',
        'Criação de briefings e diretrizes de conteúdo',
        'Monitoramento de publicações e engajamento',
        'Análise de ROI e performance',
        'Relatórios de resultados e insights'
    ],
    'R$ 3.000 - R$ 15.000 / campanha',
    'project',
    'users',
    'Marketing Digital',
    ARRAY[
        'Marcas de consumo',
        'E-commerces',
        'Startups',
        'Empresas B2C'
    ]
),

-- Marketing de Afiliados
(
    'Marketing de Afiliados',
    'Estratégias de afiliados para expandir alcance e aumentar vendas com pagamento por resultado.',
    'Nosso programa de marketing de afiliados cria parcerias estratégicas que amplificam o alcance da sua marca e aumentam suas vendas. Desenvolvemos e gerenciamos programas completos que atraem afiliados qualificados e otimizam suas performances.',
    ARRAY[
        'Estruturação de programa de afiliados',
        'Recrutamento de afiliados relevantes',
        'Criação de materiais promocionais',
        'Acompanhamento de performance',
        'Gestão de comissões e pagamentos',
        'Treinamento e suporte para afiliados',
        'Otimização contínua do programa'
    ],
    'R$ 2.500 - R$ 8.000 / mês + comissões',
    'monthly',
    'dollar-sign',
    'Marketing Digital',
    ARRAY[
        'E-commerces',
        'Infoprodutos',
        'Empresas SaaS',
        'Programas de assinatura'
    ]
),

-- Marketing Imobiliário
(
    'Marketing Imobiliário',
    'Estratégias digitais específicas para o mercado imobiliário e de construção.',
    'Nosso marketing imobiliário é especializado nas necessidades únicas do setor. Criamos estratégias digitais que destacam propriedades, atraem compradores qualificados e apoiam corretores e incorporadoras no processo de vendas, desde o lançamento até o fechamento.',
    ARRAY[
        'Tours virtuais e experiências imersivas',
        'Campanhas segmentadas para compradores potenciais',
        'Marketing de conteúdo especializado',
        'Landing pages de alta conversão para imóveis',
        'Gestão de leads e nurturing para o setor',
        'Estratégias para marketplaces imobiliários',
        'Análise de ROI por empreendimento'
    ],
    'R$ 3.000 - R$ 12.000 / mês',
    'monthly',
    'building',
    'Marketing Digital',
    ARRAY[
        'Incorporadoras',
        'Imobiliárias',
        'Corretores',
        'Construtoras'
    ]
),

-- Marketing para eCommerce
(
    'Marketing para eCommerce',
    'Estratégias específicas para lojas virtuais aumentarem tráfego, conversão e recorrência.',
    'Nossas estratégias para e-commerce são desenvolvidas para cada etapa do funil de vendas online. Trabalhamos para aumentar o tráfego qualificado, otimizar taxas de conversão e maximizar o valor médio de pedido e a recorrência de compras na sua loja virtual.',
    ARRAY[
        'Otimização de lojas virtuais',
        'Estratégias de aquisição de tráfego',
        'Campanhas de remarketing para carrinhos abandonados',
        'Email marketing para e-commerce',
        'Otimização de páginas de produto',
        'Estratégias de cross-selling e up-selling',
        'Análise de funil de vendas e comportamento de usuário'
    ],
    'R$ 3.000 - R$ 10.000 / mês',
    'monthly',
    'shopping-bag',
    'Marketing Digital',
    ARRAY[
        'E-commerces',
        'Marketplaces',
        'Lojas virtuais',
        'Varejo online'
    ]
),

-- PPC (Pay-Per-Click) em Google e Bing
(
    'PPC (Pay-Per-Click) em Google e Bing',
    'Gestão de campanhas de anúncios por clique em múltiplos buscadores.',
    'Nossa gestão de campanhas PPC abrange múltiplos motores de busca para maximizar seu alcance e conversões. Desenvolvemos e otimizamos campanhas no Google Ads, Microsoft Advertising (Bing) e outras plataformas, garantindo o melhor retorno sobre seu investimento em links patrocinados.',
    ARRAY[
        'Estratégia multicanal de PPC',
        'Pesquisa avançada de palavras-chave',
        'Criação de anúncios de alto desempenho',
        'Gestão de lances e orçamentos',
        'Otimização de landing pages',
        'Teste de mensagens e extensões',
        'Relatórios comparativos entre plataformas'
    ],
    'R$ 1.800 - R$ 6.000 / mês + investimento em mídia',
    'monthly',
    'mouse-pointer',
    'Marketing Digital',
    ARRAY[
        'Empresas B2B e B2C',
        'E-commerces',
        'Startups',
        'Empresas de serviços'
    ]
),

-- Pesquisa de Mercado e Análise de Competidores
(
    'Pesquisa de Mercado e Análise de Competidores',
    'Estudos aprofundados de mercado para embasar estratégias competitivas eficazes.',
    'Nossa pesquisa de mercado e análise competitiva fornece insights valiosos sobre seu setor, público-alvo e concorrentes. Coletamos e analisamos dados relevantes para fundamentar suas decisões estratégicas e identificar oportunidades de diferenciação e crescimento.',
    ARRAY[
        'Análise detalhada de concorrentes',
        'Pesquisa de comportamento do consumidor',
        'Identificação de tendências de mercado',
        'Benchmarking de estratégias digitais',
        'Análise SWOT competitiva',
        'Mapeamento de oportunidades',
        'Recomendações estratégicas baseadas em dados'
    ],
    'R$ 3.500 - R$ 15.000 / projeto',
    'project',
    'search',
    'Marketing Digital',
    ARRAY[
        'Empresas em expansão',
        'Startups',
        'Novos negócios',
        'Empresas em reposicionamento'
    ]
),

-- Remarketing/Retargeting
(
    'Remarketing/Retargeting',
    'Estratégias para reconquistar visitantes e aumentar taxas de conversão.',
    'Nossas campanhas de remarketing alcançam visitantes que já demonstraram interesse em seu negócio, mas não converteram. Através de anúncios estratégicos em diversos canais, reengajamos esse público qualificado e aumentamos significativamente suas taxas de conversão.',
    ARRAY[
        'Configuração de públicos segmentados',
        'Estratégias multi-canal (display, redes sociais, email)',
        'Criação de criativos específicos por segmento',
        'Campanhas para carrinhos abandonados',
        'Sequências de anúncios progressivos',
        'Otimização de frequência e impressões',
        'Análise de retorno sobre investimento'
    ],
    'R$ 1.500 - R$ 4.500 / mês + investimento em mídia',
    'monthly',
    'refresh-cw',
    'Marketing Digital',
    ARRAY[
        'E-commerces',
        'Empresas B2B e B2C',
        'Infoprodutos',
        'Serviços online'
    ]
),

-- Vídeo Marketing
(
    'Vídeo Marketing',
    'Estratégias de conteúdo em vídeo para engajar e converter sua audiência.',
    'Nosso serviço de vídeo marketing desenvolve estratégias completas de conteúdo em vídeo que cativam sua audiência e fortalecem sua marca. Da concepção à distribuição, criamos vídeos que comunicam sua mensagem de forma impactante e geram resultados mensuráveis.',
    ARRAY[
        'Planejamento estratégico de conteúdo em vídeo',
        'Produção audiovisual profissional',
        'Edição e pós-produção',
        'Otimização para diferentes plataformas',
        'Estratégias de distribuição e promoção',
        'Análise de métricas de engajamento',
        'Conteúdo para diferentes estágios do funil'
    ],
    'R$ 3.000 - R$ 15.000 / mês ou projeto',
    'monthly',
    'video',
    'Marketing Digital',
    ARRAY[
        'Empresas que investem em conteúdo',
        'E-commerces',
        'Marcas de lifestyle',
        'Empresas B2B e B2C'
    ]
),

-- Web Analytics & Conversion Optimization
(
    'Web Analytics & Conversion Optimization',
    'Análise de dados e otimização continua para maximizar suas taxas de conversão.',
    'Nosso serviço combina análise avançada de dados com estratégias de otimização de conversão para melhorar continuamente os resultados do seu site. Identificamos oportunidades, implementamos testes e fazemos melhorias baseadas em comportamento real dos usuários.',
    ARRAY[
        'Análise de comportamento do usuário',
        'Implementação de testes A/B',
        'Otimização de funis de conversão',
        'Análise de mapas de calor e gravações',
        'Identificação e remoção de pontos de atrito',
        'Otimização de páginas-chave',
        'Implementação de melhorias baseadas em dados'
    ],
    'R$ 2.500 - R$ 8.000 / mês',
    'monthly',
    'bar-chart-horizontal',
    'Marketing Digital',
    ARRAY[
        'E-commerces',
        'SaaS',
        'Sites de alto tráfego',
        'Empresas focadas em conversão'
    ]
),

-- Estratégias de Expansão Internacional (Global Marketing)
(
    'Estratégias de Expansão Internacional (Global Marketing)',
    'Planejamento e execução de estratégias para expansão de negócios em mercados internacionais.',
    'Nossa expertise em expansão internacional ajuda empresas a conquistarem novos mercados globais. Desenvolvemos estratégias personalizadas que consideram aspectos culturais, legais e de mercado para garantir uma presença digital efetiva em diferentes países.',
    ARRAY[
        'Pesquisa de mercado internacional',
        'Adaptação cultural de conteúdo e campanhas',
        'Estratégias de SEO internacional',
        'Publicidade digital em múltiplos países',
        'Localização de sites e plataformas',
        'Compliance com regulamentações locais',
        'Estratégias de posicionamento global'
    ],
    'R$ 5.000 - R$ 20.000 / mês',
    'monthly',
    'locate',
    'Marketing Digital',
    ARRAY[
        'Empresas em expansão internacional',
        'E-commerces globais',
        'Startups escaláveis',
        'Empresas B2B internacionais'
    ]
);