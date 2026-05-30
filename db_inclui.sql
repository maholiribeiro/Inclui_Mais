CREATE TABLE usuarios (
    id_user SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
	tel CHAR(11) UNIQUE,
    senha_hash TEXT NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE usuarios 
ADD COLUMN tipo_perfil VARCHAR(20) DEFAULT 'Comun'; 

CREATE TABLE endereco_user (
    id_end SERIAL PRIMARY KEY,
    rua_user VARCHAR(150) NOT NULL,
    num_user  VARCHAR(5) NOT NULL,
    bairro_user VARCHAR(150) NOT NULL,
	cidade_user VARCHAR(150) NOT NULL,
	estado_user CHAR (2) NOT NULL,
	cep_user char(9) NOT NULL,
    id_user INTEGER UNIQUE REFERENCES usuarios(id_user)
);

CREATE TABLE recuperacao_senha (
	id_recuperacao SERIAL PRIMARY KEY,
	token_rec VARCHAR (255) NOT NULL, 
	data_solicitacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	data_expiracao TIMESTAMP NOT NULL,
	id_user INTEGER REFERENCES usuarios(id_user)
);

SELECT * FROM usuarios;

INSERT INTO estabelecimento 
(id_api, nome_est, categoria, rua_est, num_est, bairro_est, cidade_est, estado_est, cep_est)
VALUES
('XXXXXX', 'Teste', 'Restaurante', 'rua do teste', '11', 'bairro teste', 'cidade teste', 'SP', '00000-000');

INSERT INTO criterio_acessibilidade (nome_criterio, descricao_criterio, status_criterio, id_est)
VALUES 
-- ACESSO EXTERNO E ESTACIONAMENTO
('Calçada Rebaixada', 'Rebaixamento de calçada com inclinação adequada para travessia de pedestres.', true, 1),
('Vaga PCN - Sinalização Vertical', 'Placa indicativa de vaga reservada para pessoa com deficiência.', true, 1),
('Vaga PCN - Sinalização Horizontal', 'Pintura no chão do símbolo internacional de acesso na vaga.', true, 1),
('Faixa de Pedestre Acessível', 'Faixa de pedestre alinhada ao rebaixamento da calçada.', true, 1),
('Rota Acessível Externa', 'Caminho livre de obstáculos da calçada até a entrada do local.', true, 1),

-- ENTRADAS E CIRCULAÇÃO
('Rampa Principal', 'Rampa com inclinação máxima de 8,33% e patamares de descanso.', true, 1),
('Porta de Entrada - Largura', 'Vão livre mínimo de 0,80m na porta principal.', true, 1),
('Maçanetas Alavanca', 'Maçanetas que permitem abertura com um único movimento (tipo alavanca).', true, 1),
('Soleiras Niveladas', 'Soleiras de portas com no máximo 2cm de altura e chanfradas.', true, 1),
('Corredores - Largura Mínima', 'Corredores com largura mínima de 0,90m para passagem de cadeira de rodas.', true, 1),
('Área de Manobra - 180 Graus', 'Espaço que permite o giro de 180 graus de uma cadeira de rodas.', true, 1),

-- PISO E SINALIZAÇÃO TÁTIL
('Piso Tátil de Alerta - Escadas', 'Sinalização tátil no início e no fim de cada lance de escada.', false, 1),
('Piso Tátil de Alerta - Rampas', 'Sinalização tátil no início e no fim de cada rampa.', false, 1),
('Piso Tátil de Alerta - Elevadores', 'Sinalização tátil em frente às portas de elevadores.', false, 1),
('Piso Tátil Direcional - Áreas Amplas', 'Piso tátil para guiar o trajeto em grandes vãos livres.', false, 1),
('Contraste Visual em Degraus', 'Faixas de cor contrastante no focinho dos degraus.', false, 1),

-- SANITÁRIOS
('Sanitário - Barras de Apoio Laterais', 'Barras fixas ao lado do vaso sanitário conforme norma.', true, 1),
('Sanitário - Barra de Apoio Porta', 'Barra horizontal na porta para facilitar o fechamento.', true, 1),
('Sanitário - Pia Suspensa', 'Pia sem coluna ou armário embaixo para permitir encaixe da cadeira.', true, 1),
('Sanitário - Espelho Inclinado', 'Espelho instalado em altura ou inclinação para cadeirantes.', true, 1),
('Sanitário - Botão de Emergência', 'Dispositivo de alerta acessível em caso de queda no banheiro.', false, 1),
('Sanitário - Alcance de Acessórios', 'Saboneteira e papel toalha em altura acessível.', true, 1),

-- MOBILIÁRIO E EQUIPAMENTOS
('Balcão de Atendimento Acessível', 'Parte do balcão com altura entre 0,75m e 0,85m.', false, 1),
('Bebedouro - Altura da Bica', 'Bica em altura que permita o uso por cadeirantes.', true, 1),
('Bebedouro - Acionamento Frontal', 'Botão de acionamento fácil na parte frontal ou lateral.', true, 1),
('Mobiliário Fixo - Espaço Inferior', 'Mesas com vão livre para as pernas de quem usa cadeira de rodas.', true, 1),
('Interruptores e Tomadas', 'Instalados entre 0,40m e 1,20m de altura do piso.', true, 1),

-- COMUNICAÇÃO E EMERGÊNCIA
('Sinalização Visual de Emergência', 'Alarmes com luzes estroboscópicas para pessoas surdas.', false, 1),
('Sinalização Sonora', 'Avisos sonoros em elevadores e áreas de risco.', false, 1),
('Mapa Tátil', 'Mapa em relevo e Braille localizado na entrada principal.', false, 1),
('Identificação de Salas em Braille', 'Placas táteis ao lado das portas das salas.', false, 1),
('Cardápio/Informativo em Braille', 'Disponibilidade de informações escritas em Braille.', false, 1),
('Interprete de LIBRAS', 'Disponibilidade de atendimento ou suporte em LIBRAS.', false, 1),

-- TECNOLOGIA E DIGITAL (No local)
('Terminais de Autoatendimento', 'Equipamentos com teclado em Braille e saída de áudio.', false, 1),
('Wi-Fi Acessível', 'Rede disponível com instruções de conexão simplificadas.', true, 1),
('QRCode Informativo', 'Códigos que levam a descrições em áudio sobre o local.', false, 1);