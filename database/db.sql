Create DATABASE spperto;

USE spperto;

CREATE TABLE empresa (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(20),
    logo VARCHAR(255)
);

CREATE TABLE link (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    url VARCHAR(255),
    name VARCHAR(255),
    FOREIGN KEY (empresa_id) REFERENCES empresa(id)
);

#Inserir Dados 
INSERT INTO empresa (id, nome, telefone, logo) VALUES
(1, 'SAA', '13 4039-4052', 'assets/images/logo_sp.svg'),
(2, 'CAT', '13 4039-4052', 'assets/images/logo_cati.svg'),
(3, 'DEFESA AFROPECUÁRIA', '13 4039-4052', 'assets/images/logo_defesa.svg'),
(4, 'CETESB', '13 4039-4052', 'assets/images/logo_cetesb.svg'),
(5, 'DAEE', '13 4039-4052', 'assets/images/logo_daee.svg'),
(6, 'DETRAN', '13 4039-4052', 'assets/images/logo_detran.svg'),
(7, 'CRT/PAT', '13 4039-4052', 'assets/images/logo_sp.svg'),
(8, 'DRADS', '13 4039-4052', 'assets/images/logo_sp.svg'),
(9, 'ESPORTE', '13 4039-4052', 'assets/images/logo_sp.svg'),
(10, 'FUNDAÇÃO FLORESTAL', '13 4039-4052', 'assets/images/logo_florestal.svg'),
(11, 'MEIO AMBIENTE', '13 4039-4052', 'assets/images/logo_meioAmbiente.svg'),
(12, 'PROC GERAL DO ESTADO', '13 4039-4052', 'assets/images/logo_procuradoria.svg'),
(13, 'STARTUP', '13 4039-4052', 'assets/images/logo_startup.svg');

INSERT INTO link (empresa_id, url, name) VALUES
(1, '', 'Link 1'), (1, '', 'Link 2'), (1, '', 'Link 3'), (1, '', 'Link 4'), (1, '', 'Link 5'),
(2, '', 'Link 1'), (2, '', 'Link 2'), (2, '', 'Link 3'), (2, '', 'Link 4'), (2, '', 'Link 5'),
(3, '', 'Link 1'), (3, '', 'Link 2'), (3, '', 'Link 3'), (3, '', 'Link 4'), (3, '', 'Link 5'),
(4, '', 'Link 1'), (4, '', 'Link 2'), (4, '', 'Link 3'), (4, '', 'Link 4'), (4, '', 'Link 5'),
(5, 'http://www.daee.sp.gov.br/site/', 'Site Oficial'), (5, 'http://soe.daee.sp.gov.br/rq_portal/', 'SOE'), (5, 'http://sidecc.daee.sp.gov.br/bmt/', 'SIDECC'), (5, 'https://cth.daee.sp.gov.br/sibh/', 'SIBH'), (5, 'https://www.saisp.br/online/produtos-publicos/', 'SAISP'),
(6, '', 'Link 1'), (6, '', 'Link 2'), (6, '', 'Link 3'), (6, '', 'Link 4'), (6, '', 'Link 5'),
(7, '', 'Link 1'), (7, '', 'Link 2'), (7, '', 'Link 3'), (7, '', 'Link 4'), (7, '', 'Link 5'),
(8, '', 'Link 1'), (8, '', 'Link 2'), (8, '', 'Link 3'), (8, '', 'Link 4'), (8, '', 'Link 5'),
(9, '', 'Link 1'), (9, '', 'Link 2'), (9, '', 'Link 3'), (9, '', 'Link 4'), (9, '', 'Link 5'),
(10, '', 'Link 1'), (10, '', 'Link 2'), (10, '', 'Link 3'), (10, '', 'Link 4'), (10, '', 'Link 5'),
(11, '', 'Link 1'), (11, '', 'Link 2'), (11, '', 'Link 3'), (11, '', 'Link 4'), (11, '', 'Link 5'),
(12, '', 'Link 1'), (12, '', 'Link 2'), (12, '', 'Link 3'), (12, '', 'Link 4'), (12, '', 'Link 5'),
(13, '', 'Link 1'), (13, '', 'Link 2'), (13, '', 'Link 3'), (13, '', 'Link 4'), (13, '', 'Link 5');

#Consulta SQL para Formar o JSON
SELECT JSON_ARRAYAGG(
    JSON_OBJECT(
        'id', e.id,
        'nome', e.nome,
        'telefone', e.telefone,
        'logo', e.logo,
        'links', (
            SELECT JSON_ARRAYAGG(
                JSON_OBJECT(
                    'url', l.url,
                    'name', l.name
                )
            )
            FROM link l
            WHERE l.empresa_id = e.id
        )
    )
) AS empresas_json
FROM empresa e;
