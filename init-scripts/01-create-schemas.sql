-- ============================================
-- CRÉATION DES SCHÉMAS POSTGRESQL
-- ============================================
-- Ce script crée les 3 schémas principaux pour l'application Witcher :
-- - witcher  : Gestion des personnages, classes, races, compétences
-- - market   : Gestion du commerce, objets, inventaires, boutiques
-- - resolver : Gestion des combats, initiatives, tests, actions
-- ============================================

-- Création du schéma WITCHER (WitcherToolKit API)
CREATE SCHEMA IF NOT EXISTS witcher;

-- Création du schéma MARKET (WitcherMarket API)
CREATE SCHEMA IF NOT EXISTS market;

-- Création du schéma RESOLVER (WitcherResolver API)
CREATE SCHEMA IF NOT EXISTS resolver;

-- Création d'un schéma optionnel pour les données partagées
CREATE SCHEMA IF NOT EXISTS shared;

-- Configuration du search_path par défaut pour la base
-- Cela permet de ne pas avoir à préfixer systématiquement les noms de tables
ALTER DATABASE witcher_db SET search_path TO witcher, market, resolver, shared, public;

-- Message de confirmation (visible dans les logs Docker)
DO $$
BEGIN
    RAISE NOTICE '================================================';
    RAISE NOTICE 'Schémas créés avec succès :';
    RAISE NOTICE '  - witcher  (Personnages, Classes, Races)';
    RAISE NOTICE '  - market   (Objets, Inventaires, Boutiques)';
    RAISE NOTICE '  - resolver (Combats, Initiatives, Tests)';
    RAISE NOTICE '  - shared   (Données communes)';
    RAISE NOTICE '================================================';
END $$;

-- Afficher les schémas créés
SELECT schema_name 
FROM information_schema.schemata 
WHERE schema_name IN ('witcher', 'market', 'resolver', 'shared')
ORDER BY schema_name;