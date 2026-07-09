-- ===============================
-- Limpiar tablas en orden correcto
-- ===============================
DELETE FROM enfermedad_sintoma;
DELETE FROM enfermedades;
DELETE FROM sintomas;

-- ===============================
-- Datos iniciales para SINTOMA
-- ===============================
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a1a1a1a1-0001-0001-0001-a1a1a1a1a1a1', 'Tos', 'Sintoma respiratorio tipico');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a2a2a2a2-0002-0002-0002-a2a2a2a2a2a2', 'Dolor de cabeza', 'Sintoma neurologico general');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a3a3a3a3-0003-0003-0003-a3a3a3a3a3a3', 'Fiebre', 'Aumento de la temperatura corporal');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a4a4a4a4-0004-0004-0004-a4a4a4a4a4a4', 'Fatiga', 'Cansancio extremo');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a5a5a5a5-0005-0005-0005-a5a5a5a5a5a5', 'Dolor de pecho', 'Dolor en la zona toracica');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a6a6a6a6-0006-0006-0006-a6a6a6a6a6a6', 'Dificultad para respirar', 'Disnea o falta de aire');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a7a7a7a7-0007-0007-0007-a7a7a7a7a7a7', 'Nauseas', 'Sensacion de malestar estomacal');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a8a8a8a8-0008-0008-0008-a8a8a8a8a8a8', 'Vomitos', 'Expulsion del contenido gastrico');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('a9a9a9a9-0009-0009-0009-a9a9a9a9a9a9', 'Diarrea', 'Deposiciones liquidas frecuentes');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b1b1b1b1-0001-0001-0001-b1b1b1b1b1b1', 'Dolor abdominal', 'Dolor en la zona del abdomen');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b2b2b2b2-0002-0002-0002-b2b2b2b2b2b2', 'Mareos', 'Sensacion de inestabilidad');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b3b3b3b3-0003-0003-0003-b3b3b3b3b3b3', 'Perdida de peso', 'Reduccion involuntaria del peso corporal');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b4b4b4b4-0004-0004-0004-b4b4b4b4b4b4', 'Vision borrosa', 'Dificultad para ver con claridad');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b5b5b5b5-0005-0005-0005-b5b5b5b5b5b5', 'Sed excesiva', 'Polidipsia');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b6b6b6b6-0006-0006-0006-b6b6b6b6b6b6', 'Miccion frecuente', 'Necesidad frecuente de orinar');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b7b7b7b7-0007-0007-0007-b7b7b7b7b7b7', 'Dolor articular', 'Dolor en las articulaciones');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b8b8b8b8-0008-0008-0008-b8b8b8b8b8b8', 'Erupcion cutanea', 'Sarpullido o rojez en la piel');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('b9b9b9b9-0009-0009-0009-b9b9b9b9b9b9', 'Confusion mental', 'Desorientacion o dificultad para pensar');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('c1c1c1c1-0001-0001-0001-c1c1c1c1c1c1', 'Palpitaciones', 'Latidos cardiacos irregulares o rapidos');
INSERT INTO sintomas (ID, NOMBRE, DESCRIPCION) VALUES ('c2c2c2c2-0002-0002-0002-c2c2c2c2c2c2', 'Hinchazon', 'Edema o inflamacion en alguna parte del cuerpo');

-- ===============================
-- Datos iniciales para ENFERMEDAD
-- ===============================
-- Cardiovasculares
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000001-0000-0000-0000-000000000001', 'Diabetes tipo 2', 'ALTO', FALSE, 'Metformina, Insulina, Sulfonilureas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000002-0000-0000-0000-000000000002', 'Hipertension arterial', 'ALTO', FALSE, 'IECA, Betabloqueantes, Diureticos, Calcioantagonistas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000003-0000-0000-0000-000000000003', 'Infarto de miocardio', 'ALTO', TRUE, 'Anticoagulantes, Tromboliticos, Angioplastia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000004-0000-0000-0000-000000000004', 'Insuficiencia cardiaca', 'ALTO', FALSE, 'Diureticos, IECA, Betabloqueantes, Digoxina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000005-0000-0000-0000-000000000005', 'Arritmia cardiaca', 'ALTO', FALSE, 'Antiarritmicos, Betabloqueantes, Cardioversion electrica');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000006-0000-0000-0000-000000000006', 'Cardiopatia isquemica', 'ALTO', FALSE, 'Nitratos, Betabloqueantes, Antiagregantes plaquetarios');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000007-0000-0000-0000-000000000007', 'Accidente cerebrovascular', 'ALTO', TRUE, 'Anticoagulantes, Trombolis, Antiplaquetarios');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000008-0000-0000-0000-000000000008', 'Pericarditis', 'ALTO', FALSE, 'AINEs, Colchicina, Corticoides');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000009-0000-0000-0000-000000000009', 'Endocarditis', 'ALTO', FALSE, 'Antibioticos IV: Penicilina, Vancomicina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000010-0000-0000-0000-000000000010', 'Trombosis venosa profunda', 'ALTO', FALSE, 'Anticoagulantes: Heparina, Warfarina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000011-0000-0000-0000-000000000011', 'Colesterol alto', 'MODERADO', FALSE, 'Estatinas, Fibratos, Ezetimiba');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000012-0000-0000-0000-000000000012', 'Miocardiopatia', 'ALTO', FALSE, 'Betabloqueantes, IECA, Diureticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e1000013-0000-0000-0000-000000000013', 'Angina de pecho', 'ALTO', FALSE, 'Nitratos, Betabloqueantes, Calcioantagonistas');

-- Respiratorias
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000001-0000-0000-0000-000000000001', 'Asma', 'MODERADO', FALSE, 'Broncodilatadores: Salbutamol, Corticoides inhalados');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000002-0000-0000-0000-000000000002', 'EPOC', 'ALTO', FALSE, 'Broncodilatadores, Corticoides inhalados, Oxigenoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000003-0000-0000-0000-000000000003', 'Neumonia', 'ALTO', FALSE, 'Antibioticos: Amoxicilina, Ceftriaxona, Levofloxacino');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000004-0000-0000-0000-000000000004', 'Tuberculosis', 'ALTO', FALSE, 'Rifampicina, Isoniazida, Etambutol, Pirazinamida');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000005-0000-0000-0000-000000000005', 'Bronquitis cronica', 'MODERADO', FALSE, 'Broncodilatadores, Corticoides inhalados, Antibioticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000006-0000-0000-0000-000000000006', 'Fibrosis pulmonar', 'ALTO', FALSE, 'Pirfenidona, Nintedanib, Oxigenoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000007-0000-0000-0000-000000000007', 'Embolia pulmonar', 'ALTO', FALSE, 'Anticoagulantes, Tromboliticos, Filtro de vena cava');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000008-0000-0000-0000-000000000008', 'Sinusitis cronica', 'MODERADO', FALSE, 'Corticoides nasales, Antibioticos, Descongestionantes');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000009-0000-0000-0000-000000000009', 'Rinitis alergica', 'BAJO', FALSE, 'Antihistaminicos, Corticoides nasales, Inmunoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e2000010-0000-0000-0000-000000000010', 'Apnea del sueno', 'MODERADO', FALSE, 'CPAP, Perdida de peso, Cirugia en casos graves');

-- Neurologicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000001-0000-0000-0000-000000000001', 'Migrana', 'MODERADO', FALSE, 'Triptanes, AINEs, Betabloqueantes profilacticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000002-0000-0000-0000-000000000002', 'Epilepsia', 'MODERADO', FALSE, 'Antiepilépticos: Fenitoina, Carbamazepina, Valproato');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000003-0000-0000-0000-000000000003', 'Alzheimer', 'ALTO', FALSE, 'Donepezilo, Rivastigmina, Memantina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000004-0000-0000-0000-000000000004', 'Parkinson', 'ALTO', FALSE, 'Levodopa, Agonistas dopaminergicos, Inhibidores de COMT');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000005-0000-0000-0000-000000000005', 'Esclerosis multiple', 'ALTO', FALSE, 'Interferones beta, Glatiramer, Corticoides');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000006-0000-0000-0000-000000000006', 'Meningitis', 'ALTO', FALSE, 'Antibioticos: Ceftriaxona, Vancomicina, Corticoides');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000007-0000-0000-0000-000000000007', 'Neuropatia periferica', 'MODERADO', FALSE, 'Gabapentina, Pregabalina, Amitriptilina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000008-0000-0000-0000-000000000008', 'ELA', 'ALTO', FALSE, 'Riluzol, Terapias de soporte, Fisioterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e3000009-0000-0000-0000-000000000009', 'Hidrocefalia', 'ALTO', TRUE, 'Derivacion ventriculoperitoneal, Ventriculostomia');

-- Digestivas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000001-0000-0000-0000-000000000001', 'Gastritis', 'MODERADO', FALSE, 'Inhibidores de bomba de protones, Antiacidos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000002-0000-0000-0000-000000000002', 'Ulcera peptica', 'MODERADO', FALSE, 'IBP, Antibioticos si H. pylori, Antiacidos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000003-0000-0000-0000-000000000003', 'Enfermedad de Crohn', 'ALTO', FALSE, 'Corticoides, Inmunosupresores, Biologicos: Infliximab');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000004-0000-0000-0000-000000000004', 'Colitis ulcerosa', 'ALTO', FALSE, 'Mesalazina, Corticoides, Inmunosupresores');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000005-0000-0000-0000-000000000005', 'Cirrosis hepatica', 'ALTO', FALSE, 'Diureticos, Betabloqueantes, Trasplante hepatico');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000006-0000-0000-0000-000000000006', 'Hepatitis B', 'ALTO', FALSE, 'Tenofovir, Entecavir, Interferon alfa');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000007-0000-0000-0000-000000000007', 'Hepatitis C', 'ALTO', FALSE, 'Sofosbuvir, Ledipasvir, Daclatasvir');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000008-0000-0000-0000-000000000008', 'Pancreatitis', 'ALTO', FALSE, 'Ayuno, Hidratacion IV, Analgesicos, Antibioticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000009-0000-0000-0000-000000000009', 'Colelitiasis', 'MODERADO', TRUE, 'Colecistectomia laparoscopica, Acido ursodesoxicolico');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000010-0000-0000-0000-000000000010', 'Apendicitis', 'ALTO', TRUE, 'Apendicectomia, Antibioticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000011-0000-0000-0000-000000000011', 'Celiaquia', 'MODERADO', FALSE, 'Dieta estricta sin gluten, Suplementos nutricionales');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e4000012-0000-0000-0000-000000000012', 'Sindrome de intestino irritable', 'BAJO', FALSE, 'Antiespasmódicos, Dieta, Probioticos');

-- Endocrinas y Metabolicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000001-0000-0000-0000-000000000001', 'Diabetes tipo 1', 'ALTO', FALSE, 'Insulina, Control glucemico, Dieta');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000002-0000-0000-0000-000000000002', 'Hipotiroidismo', 'MODERADO', FALSE, 'Levotiroxina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000003-0000-0000-0000-000000000003', 'Hipertiroidismo', 'MODERADO', FALSE, 'Metimazol, Propiltiouracilo, Yodo radiactivo');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000004-0000-0000-0000-000000000004', 'Obesidad', 'ALTO', FALSE, 'Dieta, Ejercicio, Orlistat, Cirugia bariatrica');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000005-0000-0000-0000-000000000005', 'Sindrome metabolico', 'ALTO', FALSE, 'Dieta, Ejercicio, Metformina, Estatinas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000006-0000-0000-0000-000000000006', 'Gota', 'MODERADO', FALSE, 'Colchicina, AINEs, Alopurinol, Probenecid');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000007-0000-0000-0000-000000000007', 'Osteoporosis', 'MODERADO', FALSE, 'Bifosfonatos, Calcio, Vitamina D');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000008-0000-0000-0000-000000000008', 'Anemia ferropenica', 'MODERADO', FALSE, 'Suplementos de hierro, Acido folico, Vitamina B12');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000009-0000-0000-0000-000000000009', 'Cushing', 'ALTO', FALSE, 'Ketoconazol, Metirapona, Cirugia suprarrenal');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e5000010-0000-0000-0000-000000000010', 'Addison', 'ALTO', FALSE, 'Hidrocortisona, Fludrocortisona');

-- Renal y Urologicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e6000001-0000-0000-0000-000000000001', 'Insuficiencia renal cronica', 'ALTO', FALSE, 'Control TA, Diureticos, Dialisis en fases avanzadas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e6000002-0000-0000-0000-000000000002', 'Calculos renales', 'MODERADO', FALSE, 'Analgesicos, Hidratacion, Litotricia, Cirugia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e6000003-0000-0000-0000-000000000003', 'Infeccion urinaria', 'MODERADO', FALSE, 'Antibioticos: Ciprofloxacino, Nitrofurantoina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e6000004-0000-0000-0000-000000000004', 'Glomerulonefritis', 'ALTO', FALSE, 'Corticoides, Inmunosupresores, Antihipertensivos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e6000005-0000-0000-0000-000000000005', 'Cistitis', 'MODERADO', FALSE, 'Antibioticos: Nitrofurantoina, Ciprofloxacino');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e6000006-0000-0000-0000-000000000006', 'Hiperplasia prostatica benigna', 'MODERADO', FALSE, 'Tamsulosina, Finasterida, Dutasterida');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e6000007-0000-0000-0000-000000000007', 'Pielonefritis', 'ALTO', FALSE, 'Antibioticos IV: Ceftriaxona, Ciprofloxacino');

-- Musculoesqueleticas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000001-0000-0000-0000-000000000001', 'Artritis reumatoide', 'ALTO', FALSE, 'Metotrexato, Leflunomida, Biologicos: Adalimumab');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000002-0000-0000-0000-000000000002', 'Osteoartritis', 'MODERADO', FALSE, 'AINEs, Paracetamol, Corticoides intraarticulares');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000003-0000-0000-0000-000000000003', 'Lupus eritematoso', 'ALTO', FALSE, 'Hidroxicloroquina, Corticoides, Inmunosupresores');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000004-0000-0000-0000-000000000004', 'Fibromialgia', 'MODERADO', FALSE, 'Duloxetina, Pregabalina, Fisioterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000005-0000-0000-0000-000000000005', 'Espondilitis anquilosante', 'MODERADO', FALSE, 'AINEs, Biologicos: Etanercept, Fisioterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000006-0000-0000-0000-000000000006', 'Hernia discal', 'MODERADO', FALSE, 'Analgesicos, Fisioterapia, Cirugia en casos graves');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000007-0000-0000-0000-000000000007', 'Tendinitis', 'BAJO', FALSE, 'Reposo, AINEs, Fisioterapia, Corticoides locales');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000008-0000-0000-0000-000000000008', 'Esguince', 'BAJO', FALSE, 'Reposo, Hielo, Compresion, Elevacion');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000009-0000-0000-0000-000000000009', 'Escoliosis', 'MODERADO', FALSE, 'Fisioterapia, Corse ortopedico, Cirugia en casos graves');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e7000010-0000-0000-0000-000000000010', 'Fractura osea', 'MODERADO', TRUE, 'Inmovilizacion, Cirugia, Rehabilitacion');

-- Psiquiatricas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000001-0000-0000-0000-000000000001', 'Depresion', 'ALTO', FALSE, 'Antidepresivos: Fluoxetina, Sertralina, Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000002-0000-0000-0000-000000000002', 'Ansiedad generalizada', 'MODERADO', FALSE, 'Ansioliticos, Antidepresivos ISRS, Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000003-0000-0000-0000-000000000003', 'Trastorno bipolar', 'ALTO', FALSE, 'Litio, Valproato, Antipsicoticos, Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000004-0000-0000-0000-000000000004', 'Esquizofrenia', 'ALTO', FALSE, 'Antipsicoticos: Risperidona, Olanzapina, Psicoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000005-0000-0000-0000-000000000005', 'TOC', 'MODERADO', FALSE, 'ISRS: Fluoxetina, Terapia cognitivo-conductual');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000006-0000-0000-0000-000000000006', 'TEPT', 'MODERADO', FALSE, 'Antidepresivos: Sertralina, Terapia cognitivo-conductual');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000007-0000-0000-0000-000000000007', 'Insomnio cronico', 'MODERADO', FALSE, 'Higiene del sueno, Melatonina, Benzodiacepinas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000008-0000-0000-0000-000000000008', 'Anorexia nerviosa', 'ALTO', FALSE, 'Psicoterapia, Suplementos nutricionales, Antidepresivos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000009-0000-0000-0000-000000000009', 'Bulimia nerviosa', 'ALTO', FALSE, 'Psicoterapia TCC, Fluoxetina, Hospitalizacion si grave');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e8000010-0000-0000-0000-000000000010', 'TDAH', 'MODERADO', FALSE, 'Metilfenidato, Atomoxetina, Psicoterapia');

-- Oncologicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000001-0000-0000-0000-000000000001', 'Cancer de mama', 'ALTO', TRUE, 'Cirugia, Quimioterapia, Radioterapia, Terapia hormonal');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000002-0000-0000-0000-000000000002', 'Cancer de pulmon', 'ALTO', TRUE, 'Cirugia, Quimioterapia, Radioterapia, Inmunoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000003-0000-0000-0000-000000000003', 'Cancer de prostata', 'ALTO', TRUE, 'Cirugia, Radioterapia, Terapia hormonal');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000004-0000-0000-0000-000000000004', 'Cancer de colon', 'ALTO', TRUE, 'Cirugia, Quimioterapia, Radioterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000005-0000-0000-0000-000000000005', 'Leucemia', 'ALTO', FALSE, 'Quimioterapia, Trasplante de medula osea, Inmunoterapia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000006-0000-0000-0000-000000000006', 'Linfoma', 'ALTO', FALSE, 'Quimioterapia, Radioterapia, Trasplante de celulas madre');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000007-0000-0000-0000-000000000007', 'Melanoma', 'ALTO', TRUE, 'Cirugia, Inmunoterapia, Terapias dirigidas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000008-0000-0000-0000-000000000008', 'Cancer de vejiga', 'ALTO', TRUE, 'Cirugia, Quimioterapia, Inmunoterapia BCG');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000009-0000-0000-0000-000000000009', 'Glioblastoma', 'ALTO', TRUE, 'Cirugia, Radioterapia, Temozolomida');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('e9000010-0000-0000-0000-000000000010', 'Cancer de cervix', 'ALTO', TRUE, 'Cirugia, Radioterapia, Quimioterapia, Vacuna VPH');

-- Dermatologicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000001-0000-0000-0000-000000000001', 'Psoriasis', 'MODERADO', FALSE, 'Corticoides topicos, Metotrexato, Biologicos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000002-0000-0000-0000-000000000002', 'Dermatitis atopica', 'BAJO', FALSE, 'Corticoides topicos, Tacrolimus, Antihistaminicos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000003-0000-0000-0000-000000000003', 'Acne', 'BAJO', FALSE, 'Peroxido de benzoilo, Retinoides, Antibioticos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000004-0000-0000-0000-000000000004', 'Urticaria', 'MODERADO', FALSE, 'Antihistaminicos, Corticoides, Adrenalina si anafilaxia');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000005-0000-0000-0000-000000000005', 'Vitiligo', 'BAJO', FALSE, 'Corticoides topicos, Fototerapia, Tacrolimus');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000006-0000-0000-0000-000000000006', 'Rosacea', 'BAJO', FALSE, 'Metronidazol topico, Antibioticos, Evitar desencadenantes');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000007-0000-0000-0000-000000000007', 'Carcinoma basocelular', 'MODERADO', TRUE, 'Cirugia, Crioterapia, Imiquimod topico');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000008-0000-0000-0000-000000000008', 'Queratosis actinica', 'MODERADO', FALSE, 'Crioterapia, 5-fluorouracilo topico, Imiquimod');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ea000009-0000-0000-0000-000000000009', 'Herpes zoster', 'MODERADO', FALSE, 'Aciclovir, Valaciclovir, Analgesicos, Vacuna');

-- Infecciosas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000001-0000-0000-0000-000000000001', 'Gripe', 'BAJO', FALSE, 'Oseltamivir, Reposo, Analgesicos, Hidratacion');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000002-0000-0000-0000-000000000002', 'Resfriado comun', 'BAJO', FALSE, 'Reposo, Hidratacion, Analgesicos, Descongestionantes');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000003-0000-0000-0000-000000000003', 'Varicela', 'BAJO', FALSE, 'Aciclovir, Antihistaminicos, Calamina, Paracetamol');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000004-0000-0000-0000-000000000004', 'Mononucleosis', 'MODERADO', FALSE, 'Reposo, Analgesicos, Corticoides si complicaciones');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000005-0000-0000-0000-000000000005', 'VIH/SIDA', 'ALTO', FALSE, 'Antiretrovirales TARGA, Profilaxis de infecciones oportunistas');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000006-0000-0000-0000-000000000006', 'Salmonelosis', 'MODERADO', FALSE, 'Hidratacion, Antibioticos si grave: Ciprofloxacino');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000007-0000-0000-0000-000000000007', 'Lyme', 'MODERADO', FALSE, 'Antibioticos: Doxiciclina, Amoxicilina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000008-0000-0000-0000-000000000008', 'Malaria', 'ALTO', FALSE, 'Cloroquina, Artemisina, Primaquina');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('eb000009-0000-0000-0000-000000000009', 'Dengue', 'ALTO', FALSE, 'Tratamiento de soporte, Hidratacion, Analgesicos');

-- Oftalmologicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ec000001-0000-0000-0000-000000000001', 'Cataratas', 'MODERADO', TRUE, 'Cirugia de cataratas con lente intraocular');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ec000002-0000-0000-0000-000000000002', 'Glaucoma', 'ALTO', FALSE, 'Colirios: Latanoprost, Timolol, Cirugia laser');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ec000003-0000-0000-0000-000000000003', 'Degeneracion macular', 'ALTO', FALSE, 'Anti-VEGF: Ranibizumab, Fotocoagulacion');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ec000004-0000-0000-0000-000000000004', 'Conjuntivitis', 'BAJO', FALSE, 'Colirios antibioticos, Antihistaminicos, Compresas frias');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ec000005-0000-0000-0000-000000000005', 'Retinopatia diabetica', 'ALTO', FALSE, 'Control glucemico, Anti-VEGF, Fotocoagulacion laser');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ec000006-0000-0000-0000-000000000006', 'Desprendimiento de retina', 'ALTO', TRUE, 'Cirugia: vitrectomia, banda escleral, laser');

-- Otorrinolaringologicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ed000001-0000-0000-0000-000000000001', 'Otitis media', 'MODERADO', FALSE, 'Antibioticos: Amoxicilina, Analgesicos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ed000002-0000-0000-0000-000000000002', 'Faringitis', 'BAJO', FALSE, 'Antibioticos si bacteriana, Analgesicos, Gargarismos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ed000003-0000-0000-0000-000000000003', 'Amigdalitis', 'MODERADO', FALSE, 'Antibioticos: Penicilina, Analgesicos, Amigdalectomia si recurrente');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ed000004-0000-0000-0000-000000000004', 'Tinnitus', 'MODERADO', FALSE, 'Terapia de sonido, Antidepresivos, TCC');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ed000005-0000-0000-0000-000000000005', 'Vertigo', 'MODERADO', FALSE, 'Betahistina, Maniobras de reposicionamiento, Antihistaminicos');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ed000006-0000-0000-0000-000000000006', 'Hipoacusia', 'MODERADO', FALSE, 'Audifonos, Implante coclear, Rehabilitacion auditiva');

-- Ginecologicas y Urologicas
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ee000001-0000-0000-0000-000000000001', 'Endometriosis', 'MODERADO', FALSE, 'Anticonceptivos hormonales, Progestagenos, Cirugia laparoscopica');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ee000002-0000-0000-0000-000000000002', 'Sindrome de ovario poliquistico', 'MODERADO', FALSE, 'Anticonceptivos hormonales, Metformina, Espironolactona');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ee000003-0000-0000-0000-000000000003', 'Cancer de ovario', 'ALTO', TRUE, 'Cirugia, Quimioterapia: Carboplatino, Paclitaxel');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ee000004-0000-0000-0000-000000000004', 'Prostatitis', 'MODERADO', FALSE, 'Antibioticos: Ciprofloxacino, Alfabloqueantes');
INSERT INTO enfermedades (ID, NOMBRE, NIVEL_RIESGO, OPERAR, TRATAMIENTO) VALUES ('ee000005-0000-0000-0000-000000000005', 'Incontinencia urinaria', 'BAJO', FALSE, 'Ejercicios de Kegel, Anticolinergicos, Cirugia');

-- ========================================
-- Relaciones iniciales ENFERMEDAD_SINTOMA
-- ========================================
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000001-0000-0000-0000-000000000001', 'b5b5b5b5-0005-0005-0005-b5b5b5b5b5b5');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000001-0000-0000-0000-000000000001', 'b6b6b6b6-0006-0006-0006-b6b6b6b6b6b6');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000001-0000-0000-0000-000000000001', 'b4b4b4b4-0004-0004-0004-b4b4b4b4b4b4');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000001-0000-0000-0000-000000000001', 'b3b3b3b3-0003-0003-0003-b3b3b3b3b3b3');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000002-0000-0000-0000-000000000002', 'a2a2a2a2-0002-0002-0002-a2a2a2a2a2a2');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000002-0000-0000-0000-000000000002', 'b2b2b2b2-0002-0002-0002-b2b2b2b2b2b2');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000003-0000-0000-0000-000000000003', 'a5a5a5a5-0005-0005-0005-a5a5a5a5a5a5');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000003-0000-0000-0000-000000000003', 'a6a6a6a6-0006-0006-0006-a6a6a6a6a6a6');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e1000003-0000-0000-0000-000000000003', 'c1c1c1c1-0001-0001-0001-c1c1c1c1c1c1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e2000003-0000-0000-0000-000000000003', 'a3a3a3a3-0003-0003-0003-a3a3a3a3a3a3');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e2000003-0000-0000-0000-000000000003', 'a1a1a1a1-0001-0001-0001-a1a1a1a1a1a1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e2000003-0000-0000-0000-000000000003', 'a6a6a6a6-0006-0006-0006-a6a6a6a6a6a6');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e2000001-0000-0000-0000-000000000001', 'a1a1a1a1-0001-0001-0001-a1a1a1a1a1a1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e2000001-0000-0000-0000-000000000001', 'a6a6a6a6-0006-0006-0006-a6a6a6a6a6a6');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e3000001-0000-0000-0000-000000000001', 'a2a2a2a2-0002-0002-0002-a2a2a2a2a2a2');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e3000001-0000-0000-0000-000000000001', 'a7a7a7a7-0007-0007-0007-a7a7a7a7a7a7');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e3000003-0000-0000-0000-000000000003', 'b9b9b9b9-0009-0009-0009-b9b9b9b9b9b9');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e3000003-0000-0000-0000-000000000003', 'b3b3b3b3-0003-0003-0003-b3b3b3b3b3b3');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e8000001-0000-0000-0000-000000000001', 'a4a4a4a4-0004-0004-0004-a4a4a4a4a4a4');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('e8000001-0000-0000-0000-000000000001', 'b3b3b3b3-0003-0003-0003-b3b3b3b3b3b3');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('eb000001-0000-0000-0000-000000000001', 'a3a3a3a3-0003-0003-0003-a3a3a3a3a3a3');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('eb000001-0000-0000-0000-000000000001', 'a1a1a1a1-0001-0001-0001-a1a1a1a1a1a1');
INSERT INTO enfermedad_sintoma (ENFERMEDAD_ID, SINTOMA_ID) VALUES ('eb000001-0000-0000-0000-000000000001', 'a4a4a4a4-0004-0004-0004-a4a4a4a4a4a4');
