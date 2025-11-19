# InfraWitcher

Infrastructure Docker pour The Witcher Application.

## 📋 Description

Ce repository contient :
- **PostgreSQL 16** configuré avec Docker
- **Scripts SQL d'initialisation** avec migration vers UUID
- **3 schémas** : `witcher`, `market`, `resolver`

## 🚀 Démarrage rapide

### Prérequis

- [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Lancer PostgreSQL
```bash
# Démarrer PostgreSQL en arrière-plan
docker-compose up -d

# Voir les logs
docker logs witcher-postgres

# Vérifier que le conteneur tourne
docker ps
```

### Se connecter à PostgreSQL
```bash
# Via Docker
docker exec -it witcher-postgres psql -U witcher_user -d witcher_db

# Via un client (DBeaver, pgAdmin, etc.)
Host: localhost
Port: 5432
Database: witcher_db
User: witcher_user
Password: Team_Witcher_Dev!2025
```

### Vérifier les données
```sql
-- Dans psql
\dn                               -- Lister les schémas
\dt witcher.*                     -- Lister les tables du schéma witcher

-- Compter les données
SELECT COUNT(*) FROM witcher.magie;           -- 81 sorts
SELECT COUNT(*) FROM witcher.competence;      -- 53 compétences
SELECT COUNT(*) FROM witcher.users;           -- 2 utilisateurs
```

### Arrêter PostgreSQL
```bash
# Arrêter le conteneur
docker-compose down

# Arrêter ET supprimer les données
docker-compose down -v
```

## 📁 Structure
```
infrawitcher/
├── docker-compose.yml          # Configuration Docker
├── init-scripts/               # Scripts SQL (exécutés au 1er démarrage)
│   ├── 01-create-schemas.sql  # Création des schémas
│   ├── 02-witcher-schema.sql  # Tables du schéma witcher
│   ├── 03-market-schema.sql   # Tables du schéma market
│   ├── 04-resolver-schema.sql # Tables du schéma resolver
│   └── 05-data.sql            # Données initiales
└── README.md
```

## 🗄️ Base de données

- **SGBD** : PostgreSQL 16
- **Type d'ID** : UUID (au lieu de INT AUTO_INCREMENT)
- **Schémas** :
  - `witcher` : Données du jeu (personnages, magie, compétences, races, etc.)
  - `market` : Système de marché (à venir)
  - `resolver` : Système de résolution (à venir)

## 🔧 Configuration Spring Boot

Dans votre `application.properties` :
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/witcher_db
spring.datasource.username=witcher_user
spring.datasource.password=Team_Witcher_Dev!2025
spring.datasource.driver-class-name=org.postgresql.Driver

spring.jpa.hibernate.ddl-auto=none
spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect

mybatis.configuration.default-schema=witcher
mybatis.configuration.jdbc-type-for-null=NULL
mybatis.configuration.map-underscore-to-camel-case=true
```

## 📝 Notes

- Les données sont persistées dans un volume Docker (`postgres_data`)
- Les scripts SQL ne s'exécutent **qu'au premier démarrage**
- Pour réinitialiser : `docker-compose down -v` puis `docker-compose up -d`

## 📚 Liens utiles

- [PostgreSQL Documentation](https://www.postgresql.org/docs/16/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)