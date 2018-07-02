INSERT INTO role(name) 
  VALUES
  ('ROLE_ADMIN'),
  ('ROLE_USER'),
  ('ROLE_EMPLOYE'),
  ('ROLE_CAISSIER');
  
INSERT INTO user(id, actif, email, prenom, nom, mot_de_passe) 
  VALUES
  (1, 1, 'test@test.com', 'Prénom Test', 'Nom Test', '$2a$10$b8jR.blm5dQt1HGHr0DVm.3xGP3zkzbcVtDg/PKz0UK9/tg8f6bVe'),
  (2, 1, 'mounasdiop@gmail.com', 'MAIMOUNA', 'DIOP', '$2a$10$b8jR.blm5dQt1HGHr0DVm.3xGP3zkzbcVtDg/PKz0UK9/tg8f6bVe'),
  (3, 1, 'diop-malick@hotmail.fr', 'Client', 'DEUX', '$2a$10$b8jR.blm5dQt1HGHr0DVm.3xGP3zkzbcVtDg/PKz0UK9/tg8f6bVe'),
  (4, 1, 'mdiop.sne@gmail.com', 'Malick', 'DIOP', '$2a$10$b8jR.blm5dQt1HGHr0DVm.3xGP3zkzbcVtDg/PKz0UK9/tg8f6bVe'),
  (5, 1, 'citizenddiop@gmail.com', 'Citizen', 'FOUR', '$2a$10$b8jR.blm5dQt1HGHr0DVm.3xGP3zkzbcVtDg/PKz0UK9/tg8f6bVe'),
  (6, 1, 'caissier1@test.com', 'Awa', 'NDIAYE', '$2a$10$b8jR.blm5dQt1HGHr0DVm.3xGP3zkzbcVtDg/PKz0UK9/tg8f6bVe');
  
INSERT INTO user_role(user_id, role_name) 
  VALUES
  (1, 'ROLE_ADMIN'),
  (2, 'ROLE_USER'),
  (3, 'ROLE_USER'),
  (4, 'ROLE_EMPLOYE'),
  (5, 'ROLE_EMPLOYE'),
  (6, 'ROLE_EMPLOYE'); 
  
INSERT INTO agence(code, region) 
  VALUES
  ('A1', 'Dakar'),
  ('A2', 'St Louis'),
  ('A3', 'Thies');
    
INSERT INTO client(code, adresse, employeur, num_cin, profession, raison_social_employe, salaire, telephone, users_id)
  VALUES 
  	('C1', 'Cité des enseignants', 'Dia S', 'CIN0000001',' Dev/CQ', 'DG Commercial', 800000,'776256295' , 2),
  	('C2', 'Liberté 6', 'Snecommerce', 'CIN0000002','Avocat', 'RSE C1', 100000,'776149662' , 3);
    
INSERT INTO employe(code, poste, users_id) 
  VALUES 
    ('E01', 'Responsable compte 1', 4),
    ('E02', 'Responsable compte 2', 5),
    ('E03', 'Caissière 1', 6);

    
INSERT INTO compte( id, type_cpte, date_ouverture, etat, numero_compte, solde, frais_ouverture_cb, agios, frais_ouverture_ce, code_agence, code_client, code_employe)
  VALUES 
    (1, 'CC', '2018-07-02 00:00:00', 1, 'CC1', 10, 0, 0, 0, 'A1', 2, 4),
    (2, 'CC', '2018-07-01 00:00:00', 1, 'CC1', 500, 0, 0, 0, 'A2', 3, 5);