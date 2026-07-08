-- ===============================
-- Limpiar tablas en orden correcto
-- ===============================
DELETE FROM enfermedad_sintoma;
DELETE FROM enfermedades;
DELETE FROM sintomas;

-- ===============================
-- Datos iniciales para SINTOMA
-- ===============================
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 'Tos', 'Síntoma respiratorio típico');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'Dolor de cabeza', 'Síntoma neurológico general');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('ccccccc3-cccc-cccc-cccc-ccccccccccc3', 'Fiebre', 'Aumento de la temperatura corporal');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('ddddddd4-dddd-dddd-dddd-ddddddddddd4', 'Fatiga', 'Cansancio extremo');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('eeeeeee5-eeee-eeee-eeee-eeeeeeeeeee5', 'Dolor de pecho', 'Dolor en la zona torácica');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('fffffff6-ffff-ffff-ffff-fffffffffff6', 'Dificultad para respirar', 'Disnea o falta de aire');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('ggggggg7-gggg-gggg-gggg-ggggggggggg7', 'Náuseas', 'Sensación de malestar estomacal');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('hhhhhhh8-hhhh-hhhh-hhhh-hhhhhhhhhhh8', 'Vómitos', 'Expulsión del contenido gástrico');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('iiiiiii9-iiii-iiii-iiii-iiiiiiiiiii9', 'Diarrea', 'Deposiciones líquidas frecuentes');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('jjjjjjj0-jjjj-jjjj-jjjj-jjjjjjjjjjj0', 'Dolor abdominal', 'Dolor en la zona del abdomen');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('kkkkkkka-kkkk-kkkk-kkkk-kkkkkkkkkkka', 'Mareos', 'Sensación de inestabilidad');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('lllllllb-llll-llll-llll-lllllllllllb', 'Pérdida de peso', 'Reducción involuntaria del peso corporal');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('mmmmmmc-mmmm-mmmm-mmmm-mmmmmmmmmmc', 'Visión borrosa', 'Dificultad para ver con claridad');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('nnnnnnd-nnnn-nnnn-nnnn-nnnnnnnnnnd', 'Sed excesiva', 'Polidipsia');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('oooooe-oooo-oooo-oooo-oooooooooe', 'Micción frecuente', 'Necesidad frecuente de orinar');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('pppppf-pppp-pppp-pppp-ppppppppf', 'Dolor articular', 'Dolor en las articulaciones');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('qqqqqg-qqqq-qqqq-qqqq-qqqqqqqqqg', 'Erupción cutánea', 'Sarpullido o rojez en la piel');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('rrrrrh-rrrr-rrrr-rrrr-rrrrrrrrh', 'Confusión mental', 'Desorientación o dificultad para pensar');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('sssssi-ssss-ssss-ssss-sssssssi', 'Palpitaciones', 'Latidos cardíacos irregulares o rápidos');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('tttttj-tttt-tttt-tttt-tttttttj', 'Hinchazón', 'Edema o inflamación en alguna parte del cuerpo');

-- ===============================
-- Datos iniciales para ENFERMEDAD
-- ===============================
-- Cardiovasculares
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('11111111-1111-1111-1111-111111111111', 'Diabetes tipo 2', 'ALTO', FALSE, 'Metformina, Insulina, Sulfonilureas, Inhibidores de DPP-4');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('22222222-2222-2222-2222-222222222222', 'Hipertensión', 'ALTO', FALSE, 'IECA, Betabloqueantes, Diuréticos, Calcioantagonistas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('33333333-3333-3333-3333-333333333333', 'Infarto de miocardio', 'ALTO', TRUE, 'Anticoagulantes, Trombolíticos, Angioplastia, Betabloqueantes');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('44444444-4444-4444-4444-444444444444', 'Insuficiencia cardíaca', 'ALTO', FALSE, 'Diuréticos, IECA, Betabloqueantes, Digoxina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('55555555-5555-5555-5555-555555555555', 'Arritmia cardíaca', 'ALTO', FALSE, 'Antiarrítmicos, Betabloqueantes, Cardioversión eléctrica');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('66666666-6666-6666-6666-666666666666', 'Cardiopatía isquémica', 'ALTO', FALSE, 'Nitratos, Betabloqueantes, Antiagregantes plaquetarios');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('77777777-7777-7777-7777-777777777777', 'Accidente cerebrovascular', 'ALTO', TRUE, 'Anticoagulantes, Trombólisis, Antiplaquetarios (Aspirina)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('88888888-8888-8888-8888-888888888888', 'Pericarditis', 'ALTO', FALSE, 'AINEs, Colchicina, Corticoides');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('99999999-9999-9999-9999-999999999999', 'Endocarditis', 'ALTO', FALSE, 'Antibióticos intravenosos (Penicilina, Vancomicina)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Trombosis venosa profunda', 'ALTO', FALSE, 'Anticoagulantes (Heparina, Warfarina), Trombolíticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Colesterol alto', 'Moderado', FALSE, 'Estatinas, Fibratos, Ezetimiba, Ácidos grasos omega-3');

-- Respiratorias
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Asma', 'Moderado', FALSE, 'Broncodilatadores (Salbutamol), Corticoides inhalados');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('dddddddd-dddd-dddd-dddd-dddddddddddd', 'EPOC', 'ALTO', FALSE, 'Broncodilatadores, Corticoides inhalados, Oxigenoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Neumonía', 'ALTO', FALSE, 'Antibióticos (Amoxicilina, Ceftriaxona, Levofloxacino)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ffffffff-ffff-ffff-ffff-ffffffffffff', 'Tuberculosis', 'ALTO', FALSE, 'Rifampicina, Isoniazida, Etambutol, Pirazinamida');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('gggggggg-gggg-gggg-gggg-gggggggggggg', 'Bronquitis crónica', 'Moderado', FALSE, 'Broncodilatadores, Corticoides inhalados, Antibióticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('hhhhhhhh-hhhh-hhhh-hhhh-hhhhhhhhhhhh', 'Fibrosis pulmonar', 'ALTO', FALSE, 'Pirfenidona, Nintedanib, Oxigenoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('iiiiiiii-iiii-iiii-iiii-iiiiiiiiiiii', 'Embolia pulmonar', 'ALTO', FALSE, 'Anticoagulantes, Trombolíticos, Filtro de vena cava');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('jjjjjjjj-jjjj-jjjj-jjjj-jjjjjjjjjjjj', 'Sinusitis crónica', 'Moderado', FALSE, 'Corticoides nasales, Antibióticos, Descongestionantes');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('kkkkkkkk-kkkk-kkkk-kkkk-kkkkkkkkkkkk', 'Rinitis alérgica', 'Bajo', FALSE, 'Antihistamínicos, Corticoides nasales, Inmunoterapia');

-- Neurológicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('llllllll-llll-llll-llll-llllllllllll', 'Migraña', 'Moderado', FALSE, 'Triptanes, AINEs, Betabloqueantes profilácticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('mmmmmmmm-mmmm-mmmm-mmmm-mmmmmmmmmmmm', 'Epilepsia', 'Moderado', FALSE, 'Antiepilépticos: Fenitoína, Carbamazepina, Valproato');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('nnnnnnnn-nnnn-nnnn-nnnn-nnnnnnnnnnnn', 'Alzheimer', 'ALTO', FALSE, 'Donepezilo, Rivastigmina, Memantina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('oooooooo-oooo-oooo-oooo-oooooooooooo', 'Parkinson', 'ALTO', FALSE, 'Levodopa, Agonistas dopaminérgicos, Inhibidores de COMT');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('pppppppp-pppp-pppp-pppp-pppppppppppp', 'Esclerosis múltiple', 'ALTO', FALSE, 'Interferones beta, Glatiramer, Corticoides');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('qqqqqqqq-qqqq-qqqq-qqqq-qqqqqqqqqqqq', 'Meningitis', 'ALTO', FALSE, 'Antibióticos (Ceftriaxona, Vancomicina), Corticoides');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('rrrrrrrr-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'Neuropatía periférica', 'Moderado', FALSE, 'Gabapentina, Pregabalina, Amitriptilina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ssssssss-ssss-ssss-ssss-ssssssssssss', 'ELA', 'ALTO', FALSE, 'Riluzol, Terapias de soporte, Fisioterapia');

-- Digestivas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('tttttttt-tttt-tttt-tttt-tttttttttttt', 'Gastritis', 'Moderado', FALSE, 'Inhibidores de bomba de protones, Antiácidos, Antibióticos si H. pylori');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('uuuuuuuu-uuuu-uuuu-uuuu-uuuuuuuuuuuu', 'Úlcera péptica', 'Moderado', FALSE, 'IBP, Antibióticos (si H. pylori), Antiácidos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('vvvvvvvv-vvvv-vvvv-vvvv-vvvvvvvvvvvv', 'Enfermedad de Crohn', 'ALTO', FALSE, 'Corticoides, Inmunosupresores, Biológicos (Infliximab)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('wwwwwwww-wwww-wwww-wwww-wwwwwwwwwwww', 'Colitis ulcerosa', 'ALTO', FALSE, 'Mesalazina, Corticoides, Inmunosupresores');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', 'Cirrosis hepática', 'ALTO', FALSE, 'Diuréticos, Betabloqueantes, Trasplante hepático en casos graves');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy', 'Hepatitis B', 'ALTO', FALSE, 'Tenofovir, Entecavir, Interferón alfa');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('zzzzzzzz-zzzz-zzzz-zzzz-zzzzzzzzzzzz', 'Hepatitis C', 'ALTO', FALSE, 'Sofosbuvir, Ledipasvir, Daclatasvir');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('a1a1a1a1-a1a1-a1a1-a1a1-a1a1a1a1a1a1', 'Pancreatitis', 'ALTO', FALSE, 'Ayuno, Hidratación IV, Analgésicos, Antibióticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('b2b2b2b2-b2b2-b2b2-b2b2-b2b2b2b2b2b2', 'Colelitiasis', 'Moderado', TRUE, 'Colecistectomía laparoscópica, Ácido ursodesoxicólico');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('c3c3c3c3-c3c3-c3c3-c3c3-c3c3c3c3c3c3', 'Apendicitis', 'ALTO', TRUE, 'Apendicectomía, Antibióticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('d4d4d4d4-d4d4-d4d4-d4d4-d4d4d4d4d4d4', 'Celiaquía', 'Moderado', FALSE, 'Dieta estricta sin gluten, Suplementos nutricionales');

-- Endocrinas/Metabólicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5e5e5e5-e5e5-e5e5-e5e5-e5e5e5e5e5e5', 'Diabetes tipo 1', 'ALTO', FALSE, 'Insulina, Control glucémico, Dieta');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('f6f6f6f6-f6f6-f6f6-f6f6-f6f6f6f6f6f6', 'Hipotiroidismo', 'Moderado', FALSE, 'Levotiroxina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('g7g7g7g7-g7g7-g7g7-g7g7-g7g7g7g7g7g7', 'Hipertiroidismo', 'Moderado', FALSE, 'Metimazol, Propiltiouracilo, Yodo radiactivo');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('h8h8h8h8-h8h8-h8h8-h8h8-h8h8h8h8h8h8', 'Obesidad', 'ALTO', FALSE, 'Dieta, Ejercicio, Orlistat, Cirugía bariátrica');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('i9i9i9i9-i9i9-i9i9-i9i9-i9i9i9i9i9i9', 'Síndrome metabólico', 'ALTO', FALSE, 'Dieta, Ejercicio, Metformina, Estatinas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('j0j0j0j0-j0j0-j0j0-j0j0-j0j0j0j0j0j0', 'Gota', 'Moderado', FALSE, 'Colchicina, AINEs, Alopurinol, Probenecid');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('k1k1k1k1-k1k1-k1k1-k1k1-k1k1k1k1k1k1', 'Osteoporosis', 'Moderado', FALSE, 'Bifosfonatos, Calcio, Vitamina D, Ranelato de estroncio');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('l2l2l2l2-l2l2-l2l2-l2l2-l2l2l2l2l2l2', 'Anemia ferropénica', 'Moderado', FALSE, 'Suplementos de hierro, Ácido fólico, Vitamina B12');

-- Renal/Urológicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('m3m3m3m3-m3m3-m3m3-m3m3-m3m3m3m3m3m3', 'Insuficiencia renal crónica', 'ALTO', FALSE, 'Control TA, Diuréticos, Diálisis en fases avanzadas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('n4n4n4n4-n4n4-n4n4-n4n4-n4n4n4n4n4n4', 'Cálculos renales', 'Moderado', FALSE, 'Analgésicos, Hidratación, Litotricia, Cirugía');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('o5o5o5o5-o5o5-o5o5-o5o5-o5o5o5o5o5o5', 'Infección urinaria', 'Moderado', FALSE, 'Antibióticos (Ciprofloxacino, Nitrofurantoína)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('p6p6p6p6-p6p6-p6p6-p6p6-p6p6p6p6p6p6', 'Glomerulonefritis', 'ALTO', FALSE, 'Corticoides, Inmunosupresores, Antihipertensivos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('q7q7q7q7-q7q7-q7q7-q7q7-q7q7q7q7q7q7', 'Cistitis', 'Moderado', FALSE, 'Antibióticos (Nitrofurantoína, Ciprofloxacino)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('r8r8r8r8-r8r8-r8r8-r8r8-r8r8r8r8r8r8', 'Hiperplasia prostática benigna', 'Moderado', FALSE, 'Tamsulosina, Finasterida, Dutasterida');

-- Musculoesqueléticas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('s9s9s9s9-s9s9-s9s9-s9s9-s9s9s9s9s9s9', 'Artritis reumatoide', 'ALTO', FALSE, 'Metotrexato, Leflunomida, Biológicos (Adalimumab)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('t0t0t0t0-t0t0-t0t0-t0t0-t0t0t0t0t0t0', 'Osteoartritis', 'Moderado', FALSE, 'AINEs, Paracetamol, Corticoides intraarticulares');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('u1u1u1u1-u1u1-u1u1-u1u1-u1u1u1u1u1u1', 'Lupus eritematoso', 'ALTO', FALSE, 'Hidroxicloroquina, Corticoides, Inmunosupresores');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('v2v2v2v2-v2v2-v2v2-v2v2-v2v2v2v2v2v2', 'Fibromialgia', 'Moderado', FALSE, 'Duloxetina, Pregabalina, Fisioterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('w3w3w3w3-w3w3-w3w3-w3w3-w3w3w3w3w3w3', 'Espondilitis anquilosante', 'Moderado', FALSE, 'AINEs, Biológicos (Etanercept), Fisioterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('x4x4x4x4-x4x4-x4x4-x4x4-x4x4x4x4x4x4', 'Hernia discal', 'Moderado', FALSE, 'Analgésicos, Fisioterapia, Cirugía en casos graves');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('y5y5y5y5-y5y5-y5y5-y5y5-y5y5y5y5y5y5', 'Tendinitis', 'Bajo', FALSE, 'Reposo, AINEs, Fisioterapia, Corticoides locales');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('z6z6z6z6-z6z6-z6z6-z6z6-z6z6z6z6z6z6', 'Esguince', 'Bajo', FALSE, 'Reposo, Hielo, Compresión, Elevación (RICE)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('a7a7a7a7-a7a7-a7a7-a7a7-a7a7a7a7a7a7', 'Escoliosis', 'Moderado', FALSE, 'Fisioterapia, Corsé ortopédico, Cirugía en casos graves');

-- Mentales/Psiquiátricas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('b8b8b8b8-b8b8-b8b8-b8b8-b8b8b8b8b8b8', 'Depresión', 'ALTO', FALSE, 'Antidepresivos (Fluoxetina, Sertralina), Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('c9c9c9c9-c9c9-c9c9-c9c9-c9c9c9c9c9c9', 'Ansiedad generalizada', 'Moderado', FALSE, 'Ansiolíticos, Antidepresivos (ISRS), Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('d0d0d0d0-d0d0-d0d0-d0d0-d0d0d0d0d0d0', 'Trastorno bipolar', 'ALTO', FALSE, 'Litio, Valproato, Antipsicóticos, Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1e1e1e1-e1e1-e1e1-e1e1-e1e1e1e1e1e1', 'Esquizofrenia', 'ALTO', FALSE, 'Antipsicóticos (Risperidona, Olanzapina), Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('f2f2f2f2-f2f2-f2f2-f2f2-f2f2f2f2f2f2', 'TOC', 'Moderado', FALSE, 'ISRS (Fluoxetina), Terapia cognitivo-conductual');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('g3g3g3g3-g3g3-g3g3-g3g3-g3g3g3g3g3g3', 'TEPT', 'Moderado', FALSE, 'Antidepresivos (Sertralina), Terapia cognitivo-conductual');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('h4h4h4h4-h4h4-h4h4-h4h4-h4h4h4h4h4h4', 'Insomnio crónico', 'Moderado', FALSE, 'Higiene del sueño, Melatonina, Benzodiacepinas, TCC');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('i5i5i5i5-i5i5-i5i5-i5i5-i5i5i5i5i5i5', 'Anorexia nerviosa', 'ALTO', FALSE, 'Psicoterapia, Suplementos nutricionales, Antidepresivos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('j6j6j6j6-j6j6-j6j6-j6j6-j6j6j6j6j6j6', 'Bulimia nerviosa', 'ALTO', FALSE, 'Psicoterapia (TCC), Fluoxetina, Hospitalización si grave');

-- Oncológicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('k7k7k7k7-k7k7-k7k7-k7k7-k7k7k7k7k7k7', 'Cáncer de mama', 'ALTO', TRUE, 'Cirugía, Quimioterapia, Radioterapia, Terapia hormonal');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('l8l8l8l8-l8l8-l8l8-l8l8-l8l8l8l8l8l8', 'Cáncer de pulmón', 'ALTO', TRUE, 'Cirugía, Quimioterapia, Radioterapia, Inmunoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('m9m9m9m9-m9m9-m9m9-m9m9-m9m9m9m9m9m9', 'Cáncer de próstata', 'ALTO', TRUE, 'Cirugía, Radioterapia, Terapia hormonal');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('n0n0n0n0-n0n0-n0n0-n0n0-n0n0n0n0n0n0', 'Cáncer de colon', 'ALTO', TRUE, 'Cirugía, Quimioterapia, Radioterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('o1o1o1o1-o1o1-o1o1-o1o1-o1o1o1o1o1o1', 'Leucemia', 'ALTO', FALSE, 'Quimioterapia, Trasplante de médula ósea, Inmunoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('p2p2p2p2-p2p2-p2p2-p2p2-p2p2p2p2p2p2', 'Linfoma', 'ALTO', FALSE, 'Quimioterapia, Radioterapia, Trasplante de células madre');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('q3q3q3q3-q3q3-q3q3-q3q3-q3q3q3q3q3q3', 'Melanoma', 'ALTO', TRUE, 'Cirugía, Inmunoterapia, Terapias dirigidas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('r4r4r4r4-r4r4-r4r4-r4r4-r4r4r4r4r4r4', 'Cáncer de vejiga', 'ALTO', TRUE, 'Cirugía, Quimioterapia, Inmunoterapia (BCG)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('s5s5s5s5-s5s5-s5s5-s5s5-s5s5s5s5s5s5', 'Glioblastoma', 'ALTO', TRUE, 'Cirugía, Radioterapia, Temozolomida');

-- Dermatológicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('t6t6t6t6-t6t6-t6t6-t6t6-t6t6t6t6t6t6', 'Psoriasis', 'Moderado', FALSE, 'Corticoides tópicos, Metotrexato, Biológicos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('u7u7u7u7-u7u7-u7u7-u7u7-u7u7u7u7u7u7', 'Dermatitis atópica', 'Bajo', FALSE, 'Corticoides tópicos, Tacrolimus, Antihistamínicos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('v8v8v8v8-v8v8-v8v8-v8v8-v8v8v8v8v8v8', 'Acné', 'Bajo', FALSE, 'Peróxido de benzoilo, Retinoides, Antibióticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('w9w9w9w9-w9w9-w9w9-w9w9-w9w9w9w9w9w9', 'Urticaria', 'Moderado', FALSE, 'Antihistamínicos, Corticoides, Adrenalina si anafilaxia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('x0x0x0x0-x0x0-x0x0-x0x0-x0x0x0x0x0x0', 'Vitiligo', 'Bajo', FALSE, 'Corticoides tópicos, Fototerapia, Tacrolimus');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('y1y1y1y1-y1y1-y1y1-y1y1-y1y1y1y1y1y1', 'Rosácea', 'Bajo', FALSE, 'Metronidazol tópico, Antibióticos, Evitar desencadenantes');

-- Infecciosas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('z2z2z2z2-z2z2-z2z2-z2z2-z2z2z2z2z2z2', 'Gripe', 'Bajo', FALSE, 'Oseltamivir, Reposo, Analgésicos, Hidratación');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('a3a3a3a3-a3a3-a3a3-a3a3-a3a3a3a3a3a3', 'Resfriado común', 'Bajo', FALSE, 'Reposo, Hidratación, Analgésicos, Descongestionantes');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('b4b4b4b4-b4b4-b4b4-b4b4-b4b4b4b4b4b4', 'Varicela', 'Bajo', FALSE, 'Aciclovir, Antihistamínicos, Calamina, Paracetamol');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('c5c5c5c5-c5c5-c5c5-c5c5-c5c5c5c5c5c5', 'Mononucleosis', 'Moderado', FALSE, 'Reposo, Analgésicos, Corticoides si complicaciones');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('d6d6d6d6-d6d6-d6d6-d6d6-d6d6d6d6d6d6', 'VIH/SIDA', 'ALTO', FALSE, 'Antirretrovirales (TARGA), Profilaxis de infecciones oportunistas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7e7e7e7-e7e7-e7e7-e7e7-e7e7e7e7e7e7', 'Salmonelosis', 'Moderado', FALSE, 'Hidratación, Antibióticos si grave (Ciprofloxacino)');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('f8f8f8f8-f8f8-f8f8-f8f8-f8f8f8f8f8f8', 'Lyme', 'Moderado', FALSE, 'Antibióticos (Doxiciclina, Amoxicilina)');

-- Oftalmológicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('g9g9g9g9-g9g9-g9g9-g9g9-g9g9g9g9g9g9', 'Cataratas', 'Moderado', TRUE, 'Cirugía de cataratas con lente intraocular');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('h0h0h0h0-h0h0-h0h0-h0h0-h0h0h0h0h0h0', 'Glaucoma', 'ALTO', FALSE, 'Colirios (Latanoprost, Timolol), Cirugía láser');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('i1i1i1i1-i1i1-i1i1-i1i1-i1i1i1i1i1i1', 'Degeneración macular', 'ALTO', FALSE, 'Anti-VEGF (Ranibizumab), Fotocoagulación');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('j2j2j2j2-j2j2-j2j2-j2j2-j2j2j2j2j2j2', 'Conjuntivitis', 'Bajo', FALSE, 'Colirios antibióticos, Antihistamínicos, Compresas frías');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('k3k3k3k3-k3k3-k3k3-k3k3-k3k3k3k3k3k3', 'Retinopatía diabética', 'ALTO', FALSE, 'Control glucémico, Anti-VEGF, Fotocoagulación láser');

-- Otorrinolaringológicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('l4l4l4l4-l4l4-l4l4-l4l4-l4l4l4l4l4l4', 'Otitis media', 'Moderado', FALSE, 'Antibióticos (Amoxicilina), Analgésicos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('m5m5m5m5-m5m5-m5m5-m5m5-m5m5m5m5m5m5', 'Faringitis', 'Bajo', FALSE, 'Antibióticos si bacteriana, Analgésicos, Gargarismos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('n6n6n6n6-n6n6-n6n6-n6n6-n6n6n6n6n6n6', 'Amigdalitis', 'Moderado', FALSE, 'Antibióticos (Penicilina), Analgésicos, Amigdalectomía si recurrente');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('o7o7o7o7-o7o7-o7o7-o7o7-o7o7o7o7o7o7', 'Tinnitus', 'Moderado', FALSE, 'Terapia de sonido, Antidepresivos, TCC');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('p8p8p8p8-p8p8-p8p8-p8p8-p8p8p8p8p8p8', 'Vértigo', 'Moderado', FALSE, 'Betahistina, Maniobras de reposicionamiento, Antihistamínicos');

-- ========================================
-- Relaciones iniciales ENFERMEDAD_SINTOMA
-- ========================================
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('11111111-1111-1111-1111-111111111111', 'nnnnnnd-nnnn-nnnn-nnnn-nnnnnnnnnnd');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('11111111-1111-1111-1111-111111111111', 'oooooe-oooo-oooo-oooo-oooooooooe');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('11111111-1111-1111-1111-111111111111', 'mmmmmmc-mmmm-mmmm-mmmm-mmmmmmmmmmc');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('22222222-2222-2222-2222-222222222222', 'kkkkkkka-kkkk-kkkk-kkkk-kkkkkkkkkkka');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('33333333-3333-3333-3333-333333333333', 'eeeeeee5-eeee-eeee-eeee-eeeeeeeeeee5');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('33333333-3333-3333-3333-333333333333', 'fffffff6-ffff-ffff-ffff-fffffffffff6');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('33333333-3333-3333-3333-333333333333', 'sssssi-ssss-ssss-ssss-sssssssi');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('cccccccc-cccc-cccc-cccc-cccccccccccc', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('cccccccc-cccc-cccc-cccc-cccccccccccc', 'fffffff6-ffff-ffff-ffff-fffffffffff6');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'ccccccc3-cccc-cccc-cccc-ccccccccccc3');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'fffffff6-ffff-ffff-ffff-fffffffffff6');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('b8b8b8b8-b8b8-b8b8-b8b8-b8b8b8b8b8b8', 'ddddddd4-dddd-dddd-dddd-ddddddddddd4');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('b8b8b8b8-b8b8-b8b8-b8b8-b8b8b8b8b8b8', 'lllllllb-llll-llll-llll-lllllllllllb');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('nnnnnnnn-nnnn-nnnn-nnnn-nnnnnnnnnnnn', 'rrrrrh-rrrr-rrrr-rrrr-rrrrrrrrh');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('llllllll-llll-llll-llll-llllllllllll', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('llllllll-llll-llll-llll-llllllllllll', 'ggggggg7-gggg-gggg-gggg-ggggggggggg7');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('z2z2z2z2-z2z2-z2z2-z2z2-z2z2z2z2z2z2', 'ccccccc3-cccc-cccc-cccc-ccccccccccc3');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('z2z2z2z2-z2z2-z2z2-z2z2-z2z2z2z2z2z2', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('z2z2z2z2-z2z2-z2z2-z2z2-z2z2z2z2z2z2', 'ddddddd4-dddd-dddd-dddd-ddddddddddd4');