USE spperto;

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
(13, 'STARTUP', '13 4039-4052', 'assets/images/logo_startup.svg')
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    telefone = VALUES(telefone),
    logo = VALUES(logo);

INSERT INTO link (empresa_id, url, name) VALUES
(1, '', 'Site Oficial'), (1, '', 'SOE'), (1, '', 'SIDECC'), (1, '', 'SIBH'), (1, '', 'SAISP'),
(2, '', 'Site Oficial'), (2, '', 'SOE'), (2, '', 'SIDECC'), (2, '', 'SIBH'), (2, '', 'SAISP'),
(3, '', 'Site Oficial'), (3, '', 'SOE'), (3, '', 'SIDECC'), (3, '', 'SIBH'), (3, '', 'SAISP'),
(4, '', 'Site Oficial'), (4, '', 'SOE'), (4, '', 'SIDECC'), (4, '', 'SIBH'), (4, '', 'SAISP'),
(5, 'http://www.daee.sp.gov.br/site/', 'Site Oficial'), (5, 'http://soe.daee.sp.gov.br/rq_portal/', 'SOE'), (5, 'http://sidecc.daee.sp.gov.br/bmt/', 'SIDECC'), (5, 'https://cth.daee.sp.gov.br/sibh/', 'SIBH'), (5, 'https://www.saisp.br/online/produtos-publicos/', 'SAISP'),
(6, '', 'Site Oficial'), (6, '', 'SOE'), (6, '', 'SIDECC'), (6, '', 'SIBH'), (6, '', 'SAISP'),
(7, '', 'Site Oficial'), (7, '', 'SOE'), (7, '', 'SIDECC'), (7, '', 'SIBH'), (7, '', 'SAISP'),
(8, '', 'Site Oficial'), (8, '', 'SOE'), (8, '', 'SIDECC'), (8, '', 'SIBH'), (8, '', 'SAISP'),
(9, '', 'Site Oficial'), (9, '', 'SOE'), (9, '', 'SIDECC'), (9, '', 'SIBH'), (9, '', 'SAISP'),
(10, '', 'Site Oficial'), (10, '', 'SOE'), (10, '', 'SIDECC'), (10, '', 'SIBH'), (10, '', 'SAISP'),
(11, '', 'Site Oficial'), (11, '', 'SOE'), (11, '', 'SIDECC'), (11, '', 'SIBH'), (11, '', 'SAISP'),
(12, '', 'Site Oficial'), (12, '', 'SOE'), (12, '', 'SIDECC'), (12, '', 'SIBH'), (12, '', 'SAISP'),
(13, '', 'Site Oficial'), (13, '', 'SOE'), (13, '', 'SIDECC'), (13, '', 'SIBH'), (13, '', 'SAISP')
ON DUPLICATE KEY UPDATE
    url = VALUES(url),
    name = VALUES(name);
