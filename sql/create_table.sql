CREATE TABLE  federation_mouvement_jeunesse  (
    id  int PRIMARY KEY NOT NULL,
    denomination_federation  ENUM ('Les Scouts', 'Les Guides', 'Les Patros', 'Les Scouts et Guides pluralistes', 'Les Faucons Rouges'),
    adresse  int
);

CREATE TABLE  unite  (
    numero_agrement  int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    federation_mouvement_jeunesse  int,
    denomination_unite  varchar(255),
    adresse  int
);

CREATE TABLE  responsable_unite  (
    unite  int,
    niss  int PRIMARY KEY NOT NULL,
    nom  varchar(255),
    prenom  varchar(255),
    adresse  int,
    email  varchar(255),
    telephone  varchar(255)
);

CREATE TABLE  camp  (
    numero_dossier  int PRIMARY KEY NOT NULL,
    numero_unite  int,
    denomination_camp  varchar(255),
    section  varchar(255),
    date_declaration  timestamp,
    frais_de_participation  int,
    adresse  int,
    date_debut  datetime,
    date_fin  datetime,
    accueil_enfant_moins_6_ans  boolean,
    accueil_enfant_plus_6_ans  boolean
);

CREATE TABLE  adresse  (
    id_adresse  int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    rue  varchar(255) NOT NULL,
    numero_rue  int NOT NULL,
    code_postal  int NOT NULL,
    commune  varchar(255) NOT NULL
);

CREATE TABLE  enfant  (
    niss  int PRIMARY KEY NOT NULL,
    nom  varchar(255),
    prenom  varchar(255),
    date_naissance  datetime
);

CREATE TABLE  encadrant  (
    niss  int PRIMARY KEY NOT NULL,
    nom  varchar(255),
    prenom  varchar(255),
    brevete  boolean,
    experience  boolean
);

CREATE TABLE  enfant_camp  (
    numero_dossier  int,
    niss_enfant  int
);

CREATE TABLE  encadrant_camp  (
    numero_dossier  int,
    niss_encadrant  int
);

CREATE TABLE  demande_subside  (
    numero_dossier  int,
    date_demande  timestamp,
    statut  varchar(255)
);

CREATE TABLE  decision  (
    numero_dossier  int,
    statut  ENUM ('Accorde', 'Refuse'),
    agent_traitant  int,
    montant_subside  decimal,
    motivation_decision  varchar(255)
);

CREATE TABLE  agentONE  (
    niss  int PRIMARY KEY NOT NULL,
    prenom  varchar(255),
    nom  varchar(255),
    email  varchar(255),
    telephone  varchar(255),
    attribution  int
);
