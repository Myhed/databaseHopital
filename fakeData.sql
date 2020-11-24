-- docteur
use hospital;

INSERT INTO docteur(id_docteur, nom, prenom, tel, specialite)
VALUES(null, 'Cohen', 'Fred', '0621198058', 'cardiologue');

INSERT INTO docteur(id_docteur, nom, prenom, tel, specialite)
VALUES(null, 'Mayer', 'Jean-yves', '0683322117', 'gynécologue');

INSERT INTO docteur(id_docteur, nom, prenom, tel, specialite)
VALUES(null, 'Longo', 'Christina', '0637435231', 'ORL');

INSERT INTO docteur(id_docteur, nom, prenom, tel, specialite)
VALUES(null, 'Fusch', 'Micheline', '0758621183', 'generaliste');

INSERT INTO docteur(id_docteur, nom, prenom, tel, specialite)
VALUES(null, 'Muler', 'André', '0758621173', 'chirurgien');

-- service
INSERT INTO serviceP(id_service, nom, batiment)
VALUES(200, 'chirurgie', 'A');

INSERT INTO serviceP(id_service, nom, batiment)
VALUES(300, 'toxicologie', 'B');

INSERT INTO serviceP(id_service, nom, batiment)
VALUES(400, 'dermatologie', 'C');

INSERT INTO serviceP(id_service, nom, batiment)
VALUES(500, 'pédiatrie', 'D');

INSERT INTO serviceP(id_service, nom, batiment)
VALUES(600, 'neurologie', 'E');

INSERT INTO serviceP(id_service, nom, batiment)
VALUES(700, 'écographie', 'A');

INSERT INTO serviceP(id_service, nom, batiment)
VALUES(800, 'maternité', 'D');

INSERT INTO serviceP(id_service, nom, batiment)
VALUES(900, 'radiologie', 'C');

-- infirmier
INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'Fournier', 'Audrey', '0671821323', 1441, 800);

INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'hamila', 'maher', '0708374329', 1783, 200);

INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'Chapin', 'Magali', '0611423709', 1200, 300);

INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'Perrez', 'Laurence', '0601291853', 1500, 700);

INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'Deschamps', 'Alexis', '0724996215', 1729, 600);

INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'Grairi', 'Sonia', '0627314233', 1881, 400);

INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'Rossi', 'Alessandro', '0742196192', 1474, 500);

INSERT INTO infirmier 
(id_infirmier, nom, prenom, tel, salaire, id_service)
VALUES(null, 'Moulinasse', 'Manon', '0792670332', 1567, 900);

-- malade

INSERT INTO malade
(id_malade, nom, prenom, tel, adresse, diagnostic)
VALUES (null, 'Duhlin', 'josephine', '0627431132', '37 boulevard victor hugo', 'suivi de grossesse');

INSERT INTO malade
(id_malade, nom, prenom, tel, adresse, diagnostic)
VALUES(null, 'Williams', 'Kendrick', '0720093891', '48 avenu de grande-bretagne', 'suspicion de fracture de la maléole');

INSERT INTO malade
(id_malade, nom, prenom, tel, adresse, diagnostic)
VALUES(null, 'Beaunet', 'Brigite', '0627431394', '11 boulevard général leclerc', 'vaccination enfant');

INSERT INTO malade
(id_malade, nom, prenom, tel, adresse, diagnostic)
VALUES(null, 'dellonoy', 'Jean', '0613501406', '8 chemins des mimosa', 'sclérose en plaque');

INSERT INTO malade
(id_malade, nom, prenom, tel, adresse, diagnostic)
VALUES(null, 'Ferréra', 'Doroté', '0613501479', '101 route de sospel', 'douleur bas du ventre');

INSERT INTO malade
(id_malade, nom, prenom, tel, adresse, diagnostic)
VALUES(null, 'Beaugendre', 'Axel', '0627431359', '12 boulevard de belgique', 'eczema');

-- salle
INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "101A", 3, 200);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "102A", 3, 200);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "101B", 2, 300);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "102B", 2, 300);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "101C", 1, 400);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "102C", 1, 400);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "101D", 4, 500);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "102D", 4, 500);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "101E", 2, 600);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "102E", 2, 600);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "104A", 1, 700);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "105A", 1, 700);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "106A", 1, 700);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "107A", 1, 700);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "108A", 1, 700);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "103D", 2, 800);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "104D", 2, 800);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "105D", 2, 800);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "106D", 2, 800);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "107D", 2, 800);

INSERT INTO salle(id_salle, numero, nombreLits, id_service)
VALUES(null, "101C", 1, 900);

-- salleHospitaliseMalade
INSERT INTO salleHospitaliseMalade(id_salleHospitaliseMalade, id_salle, id_malade, numlit)
VALUES(null, 11, 5, 0);

INSERT INTO salleHospitaliseMalade(id_salleHospitaliseMalade, id_salle, id_malade, numlit)
VALUES(null, 6, 6, 0);

INSERT INTO salleHospitaliseMalade(id_salleHospitaliseMalade, id_salle, id_malade, numlit)
VALUES(null, 7, 3, 3);

INSERT INTO salleHospitaliseMalade(id_salleHospitaliseMalade, id_salle, id_malade, numlit)
VALUES(null, 5, 2, 0);

INSERT INTO salleHospitaliseMalade(id_salleHospitaliseMalade, id_salle, id_malade, numlit)
VALUES(null, 16, 1, 1);