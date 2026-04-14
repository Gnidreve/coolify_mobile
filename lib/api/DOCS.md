# API Reference

# Authorization

- API Key als Authorization Bearer Token im Header

# Applications

- GET List
- POST Create (Public)
- POST Create (Private - GH App)
- POST Create (Private - Deploy Key)
- POST Create (Dockerfile without git)
- POST Create (Docker Image without git)
- POST Create (Docker Compose)
- GET Get
- DELETE Delete
- PATCH Update
- GET Get application logs
- GET List Envs
- POST Create Env
- PATCH Update Env
- PATCH Update Envs (Bulk)
- DELETE Delete Env
- GET Start
- GET Stop
- GET Restart

# Cloud Tokens

- GET List Cloud Provider Tokens
- POST Create Cloud Provider Token
- GET Get Cloud Provider Token
- DELETE Delete Cloud Provider Token
- PATCH Update Cloud Provider Token
- POST Validate Cloud Provider Token

# Databases

- GET List
- GET Get
- POST Create Backup
- GET Get
- DELETE Delete
- PATCH Update
- DELETE Delete backup configuration
- PATCH Update
- POST Create (PostgreSQL)
- POST Create (Clickhouse)
- POST Create (DragonFly)
- POST Create (Redis)
- POST Create (KeyDB)
- POST Create (MariaDB)
- POST Create (MySQL)
- POST Create (MongoDB)
- DELETE Delete backup execution
- GET List backup executions
- GET Start
- GET Stop
- GET Restart

# Deployments

- GET List
- GET Get
- POST Cancel
- GET Deploy
- GET List application deployments

# GitHub Apps

- GET List
- POST Create GitHub App
- GET Load Repositories for a GitHub App
- GET Load Branches for a GitHub Repository
- DELETE Delete GitHub App
- PATCH Update GitHub App

# Hetzner

- GET Get Hetzner Locations
- GET Get Hetzner Server Types
- GET Get Hetzner Images
- GET Get Hetzner SSH Keys
- POST Create Hetzner Server

# Default

- GET Version
- GET Enable API
- GET Disable API
- GET Healthcheck

# Projects

- GET List
- POST Create
- GET Get
- DELETE Delete
- PATCH Update
- GET Environment
- GET List Environments
- POST Create Environment
- DELETE Delete Environment

# Resources

- GET List

# Private Keys

- GET List
- POST Create
- PATCH Update
- GET Get
- DELETE Delete

# Servers

- GET List
- POST Create
- GET Get
- DELETE Delete
- PATCH Update
- GET Resources
- GET Domains
- GET Validate

# Services

- GET List
- POST Create service
- GET Get
- DELETE Delete
- PATCH Update
- GET List Envs
- POST Create Env
- PATCH Update Env
- PATCH Update Envs (Bulk)
- DELETE Delete Env
- GET Start
- GET Stop
- GET Restart

# Teams

- GET List
- GET Get
- GET Members
- GET Authenticated Team
- GET Authenticated Team Members
