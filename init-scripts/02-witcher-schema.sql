-- ============================================
-- SCHÉMA WITCHER - Tables pour WitcherToolKit API
-- ============================================

-- ============================================
-- NETTOYAGE PRÉALABLE
-- ============================================
DROP TABLE IF EXISTS witcher.envoutement_personnage CASCADE;
DROP TABLE IF EXISTS witcher.rituel_personnage CASCADE;
DROP TABLE IF EXISTS witcher.magie_personnage CASCADE;
DROP TABLE IF EXISTS witcher.competence_personnage CASCADE;
DROP TABLE IF EXISTS witcher.reputation_personnalisee CASCADE;
DROP TABLE IF EXISTS witcher.caracteristique_personnage CASCADE;
DROP TABLE IF EXISTS witcher.inventaire CASCADE;
DROP TABLE IF EXISTS witcher.personnage CASCADE;
DROP TABLE IF EXISTS witcher.campagne CASCADE;
DROP TABLE IF EXISTS witcher.competence_profession CASCADE;
DROP TABLE IF EXISTS witcher.inventaire_wiki CASCADE;
DROP TABLE IF EXISTS witcher.profession CASCADE;
DROP TABLE IF EXISTS witcher.user_roles CASCADE;
DROP TABLE IF EXISTS witcher.users CASCADE;
DROP TABLE IF EXISTS witcher.reputation_wiki CASCADE;
DROP TABLE IF EXISTS witcher.particularite CASCADE;
DROP TABLE IF EXISTS witcher.race CASCADE;
DROP TABLE IF EXISTS witcher.competence CASCADE;
DROP TABLE IF EXISTS witcher.caracteristique CASCADE;
DROP TABLE IF EXISTS witcher.envoutement CASCADE;
DROP TABLE IF EXISTS witcher.rituel CASCADE;
DROP TABLE IF EXISTS witcher.magie CASCADE;

-- ============================================
-- TABLES DE RÉFÉRENCE
-- ============================================

-- Table magie
CREATE TABLE witcher.magie (
    id_magie UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(60) NOT NULL,
    cout VARCHAR(10) NOT NULL,
    effet TEXT NOT NULL,
    portee VARCHAR(20),
    duree VARCHAR(35) NOT NULL,
    nature VARCHAR(5) NOT NULL,
    niveau VARCHAR(35) NOT NULL,
    contre VARCHAR(25),
    type VARCHAR(10) NOT NULL
);

-- Table rituel
CREATE TABLE witcher.rituel (
    id_rituel UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(60) NOT NULL,
    cout VARCHAR(10) NOT NULL,
    effet TEXT NOT NULL,
    temps_preparation VARCHAR(10) NOT NULL,
    sd VARCHAR(10) NOT NULL,
    duree VARCHAR(15) NOT NULL,
    composant TEXT NOT NULL,
    niveau VARCHAR(20) NOT NULL
);

-- Table envoutement
CREATE TABLE witcher.envoutement (
    id_envoutement UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(60) NOT NULL,
    cout VARCHAR(10) NOT NULL,
    effet TEXT NOT NULL,
    prerequis TEXT NOT NULL,
    danger VARCHAR(6) NOT NULL
);

-- Table caracteristique
CREATE TABLE witcher.caracteristique (
    id_caracteristique UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(16) NOT NULL,
    code VARCHAR(6) NOT NULL,
    description TEXT NOT NULL,
    type VARCHAR(11) NOT NULL
);

-- Table competence
CREATE TABLE witcher.competence (
    id_competence UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    exclusive BOOLEAN NOT NULL,
    specialisation VARCHAR(20),
    prerequis VARCHAR(20),
    step INT,
    type VARCHAR(10),
    id_caracteristique UUID NOT NULL,
    CONSTRAINT fk_competence_caracteristique 
        FOREIGN KEY (id_caracteristique) 
        REFERENCES witcher.caracteristique(id_caracteristique) 
        ON DELETE CASCADE
);

-- Table race
CREATE TABLE witcher.race (
    id_race UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(50) NOT NULL
);

-- Table particularite (liée à race)
CREATE TABLE witcher.particularite (
    id_particularite UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    id_race UUID NOT NULL,
    CONSTRAINT fk_particularite_race 
        FOREIGN KEY (id_race) 
        REFERENCES witcher.race(id_race) 
        ON DELETE CASCADE
);

-- Table reputation_wiki (liée à race)
CREATE TABLE witcher.reputation_wiki (
    id_reputation_wiki UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    territoire VARCHAR(20) NOT NULL,
    valeur VARCHAR(20) NOT NULL,
    id_race UUID NOT NULL,
    CONSTRAINT fk_reputation_wiki_race 
        FOREIGN KEY (id_race) 
        REFERENCES witcher.race(id_race) 
        ON DELETE CASCADE
);

-- Table users
CREATE TABLE witcher.users (
    id_user UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pseudo VARCHAR(64) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Table user_roles (clé composite)
CREATE TABLE witcher.user_roles (
    id_user UUID NOT NULL,
    role VARCHAR(32) NOT NULL,
    PRIMARY KEY (id_user, role),
    CONSTRAINT fk_user_roles_user 
        FOREIGN KEY (id_user) 
        REFERENCES witcher.users(id_user) 
        ON DELETE CASCADE
);

-- Table profession
CREATE TABLE witcher.profession (
    id_profession UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    vigueur INT,
    nb_objet INT NOT NULL DEFAULT 0,
    max_sort INT NOT NULL DEFAULT 0,
    max_rituel INT NOT NULL DEFAULT 0,
    max_envoutement INT NOT NULL DEFAULT 0,
    max_invocation INT NOT NULL DEFAULT 0
);

-- Table inventaire_wiki (lié à profession)
CREATE TABLE witcher.inventaire_wiki (
    id_inventaire_wiki UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    quantite INT NOT NULL DEFAULT 1,
    nom VARCHAR(50) NOT NULL,
    type VARCHAR(10),
    effet TEXT,
    is_special BOOLEAN NOT NULL DEFAULT FALSE,
    id_profession UUID NOT NULL,
    CONSTRAINT fk_inventaire_wiki_profession 
        FOREIGN KEY (id_profession) 
        REFERENCES witcher.profession(id_profession) 
        ON DELETE CASCADE
);

-- Table competence_profession (clé composite)
CREATE TABLE witcher.competence_profession (
    id_profession UUID NOT NULL,
    id_competence UUID NOT NULL,
    PRIMARY KEY (id_profession, id_competence),
    CONSTRAINT fk_competence_profession_profession 
        FOREIGN KEY (id_profession) 
        REFERENCES witcher.profession(id_profession) 
        ON DELETE CASCADE,
    CONSTRAINT fk_competence_profession_competence 
        FOREIGN KEY (id_competence) 
        REFERENCES witcher.competence(id_competence) 
        ON DELETE CASCADE
);

-- Table campagne
CREATE TABLE witcher.campagne (
    id_campagne UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(50) NOT NULL,
    id_user UUID NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_campagne_user 
        FOREIGN KEY (id_user) 
        REFERENCES witcher.users(id_user) 
        ON DELETE CASCADE
);

-- Table personnage
CREATE TABLE witcher.personnage (
    id_personnage UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom_personnage VARCHAR(50) NOT NULL,
    nom_joueur VARCHAR(50),
    nom_image VARCHAR(100),
    url_image TEXT,
    genre CHAR(1),
    terre_natale VARCHAR(20),
    xp INT,
    age INT,
    bestiaire BOOLEAN DEFAULT FALSE,
    historique TEXT,
    poings VARCHAR(10),
    pieds VARCHAR(10),
    id_profession UUID NOT NULL,
    id_inventaire UUID,
    id_race UUID NOT NULL,
    id_campagne UUID,
    id_user UUID,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_personnage_profession 
        FOREIGN KEY (id_profession) 
        REFERENCES witcher.profession(id_profession) 
        ON DELETE RESTRICT,
    CONSTRAINT fk_personnage_race 
        FOREIGN KEY (id_race) 
        REFERENCES witcher.race(id_race) 
        ON DELETE RESTRICT,
    CONSTRAINT fk_personnage_campagne 
        FOREIGN KEY (id_campagne) 
        REFERENCES witcher.campagne(id_campagne) 
        ON DELETE SET NULL,
    CONSTRAINT fk_personnage_user 
        FOREIGN KEY (id_user) 
        REFERENCES witcher.users(id_user) 
        ON DELETE SET NULL
);

-- Table inventaire (lié à personnage)
CREATE TABLE witcher.inventaire (
    id_inventaire UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nom VARCHAR(60) NOT NULL,
    type VARCHAR(10),
    effet TEXT,
    quantite INT,
    id_personnage UUID,
    CONSTRAINT fk_inventaire_personnage 
        FOREIGN KEY (id_personnage) 
        REFERENCES witcher.personnage(id_personnage) 
        ON DELETE CASCADE
);

-- Table caracteristique_personnage (clé composite)
CREATE TABLE witcher.caracteristique_personnage (
    id_personnage UUID NOT NULL,
    id_caracteristique UUID NOT NULL,
    valeur_actuelle INT NOT NULL,
    valeur_max INT NOT NULL,
    PRIMARY KEY (id_personnage, id_caracteristique),
    CONSTRAINT fk_caracteristique_personnage_personnage 
        FOREIGN KEY (id_personnage) 
        REFERENCES witcher.personnage(id_personnage) 
        ON DELETE CASCADE,
    CONSTRAINT fk_caracteristique_personnage_caracteristique 
        FOREIGN KEY (id_caracteristique) 
        REFERENCES witcher.caracteristique(id_caracteristique) 
        ON DELETE CASCADE
);

-- Table reputation_personnalisee
CREATE TABLE witcher.reputation_personnalisee (
    id_reputation UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    territoire VARCHAR(20) NOT NULL,
    valeur VARCHAR(20) NOT NULL,
    id_personnage UUID NOT NULL,
    CONSTRAINT fk_reputation_personnage 
        FOREIGN KEY (id_personnage) 
        REFERENCES witcher.personnage(id_personnage) 
        ON DELETE CASCADE
);

-- Table competence_personnage (clé composite)
CREATE TABLE witcher.competence_personnage (
    valeur_actuelle INT NOT NULL,
    valeur_max INT NOT NULL,
    id_personnage UUID NOT NULL,
    id_competence UUID NOT NULL,
    PRIMARY KEY (id_personnage, id_competence),
    CONSTRAINT fk_competence_personnage_personnage 
        FOREIGN KEY (id_personnage) 
        REFERENCES witcher.personnage(id_personnage) 
        ON DELETE CASCADE,
    CONSTRAINT fk_competence_personnage_competence 
        FOREIGN KEY (id_competence) 
        REFERENCES witcher.competence(id_competence) 
        ON DELETE CASCADE
);

-- Table magie_personnage (clé composite)
CREATE TABLE witcher.magie_personnage (
    id_personnage UUID NOT NULL,
    id_magie UUID NOT NULL,
    PRIMARY KEY (id_magie, id_personnage),
    CONSTRAINT fk_magie_personnage_personnage 
        FOREIGN KEY (id_personnage) 
        REFERENCES witcher.personnage(id_personnage) 
        ON DELETE CASCADE,
    CONSTRAINT fk_magie_personnage_magie 
        FOREIGN KEY (id_magie) 
        REFERENCES witcher.magie(id_magie) 
        ON DELETE CASCADE
);

-- Table rituel_personnage (clé composite)
CREATE TABLE witcher.rituel_personnage (
    id_personnage UUID NOT NULL,
    id_rituel UUID NOT NULL,
    PRIMARY KEY (id_rituel, id_personnage),
    CONSTRAINT fk_rituel_personnage_personnage 
        FOREIGN KEY (id_personnage) 
        REFERENCES witcher.personnage(id_personnage) 
        ON DELETE CASCADE,
    CONSTRAINT fk_rituel_personnage_rituel 
        FOREIGN KEY (id_rituel) 
        REFERENCES witcher.rituel(id_rituel) 
        ON DELETE CASCADE
);

-- Table envoutement_personnage (clé composite)
CREATE TABLE witcher.envoutement_personnage (
    id_personnage UUID NOT NULL,
    id_envoutement UUID NOT NULL,
    PRIMARY KEY (id_personnage, id_envoutement),
    CONSTRAINT fk_envoutement_personnage_personnage 
        FOREIGN KEY (id_personnage) 
        REFERENCES witcher.personnage(id_personnage) 
        ON DELETE CASCADE,
    CONSTRAINT fk_envoutement_personnage_envoutement 
        FOREIGN KEY (id_envoutement) 
        REFERENCES witcher.envoutement(id_envoutement) 
        ON DELETE CASCADE
);

-- ============================================
-- INDEX POUR PERFORMANCES
-- ============================================

-- Index sur les clés étrangères fréquemment utilisées
CREATE INDEX idx_competence_caracteristique ON witcher.competence(id_caracteristique);
CREATE INDEX idx_particularite_race ON witcher.particularite(id_race);
CREATE INDEX idx_reputation_wiki_race ON witcher.reputation_wiki(id_race);
CREATE INDEX idx_inventaire_wiki_profession ON witcher.inventaire_wiki(id_profession);
CREATE INDEX idx_campagne_user ON witcher.campagne(id_user);
CREATE INDEX idx_personnage_profession ON witcher.personnage(id_profession);
CREATE INDEX idx_personnage_race ON witcher.personnage(id_race);
CREATE INDEX idx_personnage_campagne ON witcher.personnage(id_campagne);
CREATE INDEX idx_personnage_user ON witcher.personnage(id_user);
CREATE INDEX idx_inventaire_personnage ON witcher.inventaire(id_personnage);
CREATE INDEX idx_reputation_personnalisee_personnage ON witcher.reputation_personnalisee(id_personnage);

-- Index sur les tables de liaison
CREATE INDEX idx_caracteristique_personnage_personnage ON witcher.caracteristique_personnage(id_personnage);
CREATE INDEX idx_caracteristique_personnage_caracteristique ON witcher.caracteristique_personnage(id_caracteristique);
CREATE INDEX idx_competence_personnage_personnage ON witcher.competence_personnage(id_personnage);
CREATE INDEX idx_competence_personnage_competence ON witcher.competence_personnage(id_competence);
CREATE INDEX idx_magie_personnage_personnage ON witcher.magie_personnage(id_personnage);
CREATE INDEX idx_magie_personnage_magie ON witcher.magie_personnage(id_magie);
CREATE INDEX idx_rituel_personnage_personnage ON witcher.rituel_personnage(id_personnage);
CREATE INDEX idx_rituel_personnage_rituel ON witcher.rituel_personnage(id_rituel);
CREATE INDEX idx_envoutement_personnage_personnage ON witcher.envoutement_personnage(id_personnage);
CREATE INDEX idx_envoutement_personnage_envoutement ON witcher.envoutement_personnage(id_envoutement);

-- ============================================
-- MESSAGE DE CONFIRMATION
-- ============================================

DO $$
BEGIN
    RAISE NOTICE '================================================';
    RAISE NOTICE 'Schéma WITCHER créé avec succès !';
    RAISE NOTICE 'Tables créées : 26';
    RAISE NOTICE '  - Magies : magie, rituel, envoutement';
    RAISE NOTICE '  - Compétences : caracteristique, competence';
    RAISE NOTICE '  - Races : race, particularite, reputation_wiki';
    RAISE NOTICE '  - Utilisateurs : users, user_roles';
    RAISE NOTICE '  - Professions : profession, inventaire_wiki, competence_profession';
    RAISE NOTICE '  - Campagnes : campagne';
    RAISE NOTICE '  - Personnages : personnage, inventaire';
    RAISE NOTICE '  - Liaisons : 6 tables (caracteristique, competence, magie, rituel, envoutement)';
    RAISE NOTICE 'Index créés : 20';
    RAISE NOTICE '================================================';
END $$;