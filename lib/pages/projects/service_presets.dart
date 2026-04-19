class ServicePreset {
  const ServicePreset({
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;
}

List<ServicePreset> parseServicePresets(String raw) {
  return raw
      .trim()
      .split('\n\n')
      .map((block) => block.trim())
      .where((block) => block.isNotEmpty)
      .map((block) {
        final lines = block
            .split('\n')
            .map((line) => line.trim())
            .where((line) => line.isNotEmpty)
            .toList();
        return ServicePreset(
          title: lines.first,
          subtitle: lines.skip(1).join(' '),
        );
      })
      .toList(growable: false);
}

final List<ServicePreset> servicePresets = parseServicePresets(_rawServicePresets);

const String _rawServicePresets = r'''
Activepieces
Open source no-code business automation.

Actualbudget
A local-first personal finance app.

Affine
Affine is an open-source, all-in-one workspace and OS for knowledge management, a Notion/Miro alternative.

Alexandrie
A powerful Markdown workspace designed for speed, clarity, and creativity.

Anythingllm
AnythingLLM is the easiest to use, all-in-one AI application that can do RAG, AI Agents, and much more with no code or infrastructure headaches.

Appflowy
AppFlowy is the AI collaborative workspace where you achieve more without losing control of your data.

Apprise Api
Push Notifications API

Appsmith
A low-code application platform for building internal tools.

Appwrite
A backend-as-a-service platform that simplifies the web & mobile app development.

Argilla
Argilla is a collaboration tool for AI engineers and domain experts who need to build high-quality datasets for their projects.

Audiobookshelf
Self-hosted audiobook, ebook, and podcast server

Authentik
An open-source Identity Provider, focused on flexibility and versatility.

Autobase
Autobase for PostgreSQL® is an open-source alternative to cloud-managed databases (self-hosted DBaaS).

Babybuddy
It helps parents track their baby's daily activities, growth, and health with ease.

Bento Pdf
Process PDFs entirely in your browser. No uploads. No servers. Complete privacy.

Beszel
A lightweight server resource monitoring hub with historical data, docker stats, and alerts.

Beszel Agent
Monitoring agent for Beszel

Bitcoin Core
A self-hosted Bitcoin Core full node.

Bluesky Pds
Bluesky PDS (Personal Data Server)

Bookstack
BookStack is a simple, self-hosted, easy-to-use platform for organising and storing information

Browserless
A headless Chrome browser as a service.

Budge
A budgeting personal finance app.

Budibase
Low code platform for building business apps and workflows in minutes. Supports PostgreSQL, MySQL, MSSQL, MongoDB, Rest API, Docker, K8s, and more.

Bugsink
Self-hosted Error Tracking.

Calcom
Scheduling infrastructure for everyone.

Calibre Web
Calibre-web is a web app providing a clean interface for browsing, reading and downloading eBooks.

Calibre Web Automated Book Downloader
An intuitive web interface for searching and requesting book downloads, designed to work seamlessly with Calibre-Web-Automated.

Cap
Cap is the open source alternative to Loom. Lightweight, powerful, and cross-platform. Record and share in seconds.

Castopod
Castopod is a free & open-source hosting platform made for podcasters who want engage and interact with their audience.

Changedetection
Website change detection monitor and notifications.

Chaskiq
Chaskiq is an messaging platform for marketing, support & sales

Chatwoot
Delightful customer relationships at scale.

Checkmate
An open source server and websites monitoring application

Chibisafe
A beautiful and performant vault to save all your files in the cloud.

Chroma
Chroma is the open-source search and retrieval database for AI applications.

Classicpress With Mariadb
A lightweight, stable, instantly familiar free open-source content management system, based on WordPress without the block editor (Gutenberg).

Classicpress With Mysql
A lightweight, stable, instantly familiar free open-source content management system, based on WordPress without the block editor (Gutenberg).

Classicpress Without Database
A lightweight, stable, instantly familiar free open-source content management system, based on WordPress without the block editor (Gutenberg).

Cloudbeaver
CloudBeaver is a lightweight web application designed for comprehensive data management.

Cloudflared
Client for Cloudflare Tunnel, a daemon that exposes private services through the Cloudflare edge.

Cloudreve
A self-hosted file management and sharing system.

Cockpit
Cockpit is a headless content platform that is lightweight, fast and ready for takeoff.

Code Server
Code-Server is a web-based code editor that enables remote coding and collaboration from any device, anywhere.

Codimd
Realtime collaborative markdown notes on all platforms

Convertx
A self-hosted online file converter. Supports over a thousand different formats.

Convex
Convex is the open-source reactive database for app developers.

Cryptgeon
Secure note / file sharing service inspired by PrivNote.

Cyberchef
The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis

Dashy
A self-hostable personal dashboard built for you. Includes status-checking, widgets, themes, icon packs, a UI editor and tons more!

Databasus
Databasus is a free, open source and self-hosted tool to backup PostgreSQL, MySQL, and MongoDB.

Deno K V
The Denoland key-value database

Directus
Directus wraps databases with a dynamic API, and provides an intuitive app for managing its content.

Directus With Postgresql
Directus wraps databases with a dynamic API, and provides an intuitive app for managing its content.

Diun
Docker Image Update Notifier is a CLI application to receive notifications when a Docker image is updated on a Docker registry.

Docker Registry
The Docker Registry lets you distribute Docker images.

Docmost
Open-source collaborative wiki and documentation software

Documenso
Document signing, finally open source

Docuseal
Document Signing for Everyone free forever for individuals, extensible for businesses and developers. Open Source Alternative to DocuSign, PandaDoc and more.

Docuseal With Postgres
Document Signing for Everyone free forever for individuals, extensible for businesses and developers. Open Source Alternative to DocuSign, PandaDoc and more.

Dokuwiki
A lightweight and easy-to-use wiki platform for creating and managing documentation and knowledge bases.

Dolibarr
Dolibarr is a modern software package to manage your organization's activity (contacts, quotes, invoices, orders, stocks, agenda, hr, expense reports, accountancy, ecm, manufacturing, ...).

Dozzle
Dozzle is a simple and lightweight web UI for Docker logs.

Dozzle With Auth
Dozzle is a simple and lightweight web UI for Docker logs.

Drizzle Gateway
Free self-hosted Drizzle Studio on steroids

Drupal With Postgresql
Drupal is a free and open-source web content management system written in PHP and distributed under the GNU General Public License.

Duplicati
Duplicati is a backup solution, allowing you to make scheduled backups with encryption.

Easyappointments
Schedule Anything. Let's start with easy! Get the best free online appointment scheduler on your server, today.

Elasticsearch
Elasticsearch is free and Open Source, Distributed, RESTful Search Engine.

Elasticsearch With Kibana
Elastic + Kibana is a Free and Open Source Search, Monitoring, and Visualization Stack

Electricsql
Sync shape-based subsets of your Postgres data over HTTP.

Emby
A media server software that allows you to organize, stream, and access your multimedia content effortlessly.

Embystat
EmbyStat is a web analytics tool, designed to provide insight into website traffic and user behavior.

Ente Photos
Ente Photos is a fully open source, End to End Encrypted alternative to Google Photos and Apple Photos.

Ente Photos With S3
Ente Photos is a fully open source, End to End Encrypted alternative to Google Photos and Apple Photos.

Esphome
Smart Home Made Simple.

Espocrm
EspoCRM is a free and open-source CRM platform.

Evolution Api
Multi-platform messaging (whatsapp and more) integration API

Excalidraw
Virtual whiteboard for sketching hand-drawn like diagrams

Faraday
Faraday is a powerful, open-source, web-based vulnerability management tool.

Fider
Fider is a feedback platform for collecting and managing user feedback.

Filebrowser
FileBrowser is a web-based file manager and file explorer with a user-friendly interface.

Fileflows
FileFlows can drastically reduce your files, up to 90%, saving you space and money. No need to buy more hard drives, just shrink your files and start saving.

Firefly
A personal finances manager that can help you save money.

Firefox
Fast, private, and self-hosted secure browser for browsing without limits.

Fizzy
Kanban tracking tool for issues and ideas by 37signals

Flipt
Flipt is a fully managed feature flag solution that enables you to keep your feature flags and remote config next to your code in Git.

Flowise
Flowise is an open source low-code tool for developers to build customized LLM orchestration flows & AI agents.

Flowise With Databases
Flowise is an open source low-code tool for developers to build customized LLM orchestration flows & AI agents. Also deploys Redis, Postgres and other services.

Forgejo
Forgejo is a self-hosted lightweight software forge. Easy to install and low maintenance, it just does the job.

Forgejo With Mariadb
Forgejo is a self-hosted lightweight software forge. Easy to install and low maintenance, it just does the job.

Forgejo With Mysql
Forgejo is a self-hosted lightweight software forge. Easy to install and low maintenance, it just does the job.

Forgejo With Postgresql
Forgejo is a self-hosted lightweight software forge. Easy to install and low maintenance, it just does the job.

Formbricks
Open Source Survey Platform

Foundryvtt
Foundry Virtual Tabletop is a self-hosted & modern roleplaying platform

Freescout
FreeScout is the super lightweight and powerful free open source help desk and shared inbox written in PHP (Laravel framework).

Freshrss
A free, self-hostable feed aggregator.

Freshrss With Mariadb
A free, self-hostable feed aggregator.

Freshrss With Mysql
A free, self-hostable feed aggregator.

Freshrss With Postgresql
A free, self-hostable feed aggregator.

Garage
Garage is an S3-compatible distributed object storage service designed for self-hosting.

Getoutline
Your team’s knowledge base

Ghost
Ghost is a content management system (CMS) and blogging platform.

Gitea
Gitea is a self-hosted, lightweight Git service, offering version control, collaboration, and code hosting.

Gitea With Mariadb
Gitea is a self-hosted, lightweight Git service, offering version control, collaboration, and code hosting.

Gitea With Mysql
Gitea is a self-hosted, lightweight Git service, offering version control, collaboration, and code hosting.

Gitea With Postgresql
Gitea is a self-hosted, lightweight Git service, offering version control, collaboration, and code hosting.

Github Runner
A GitHub Actions runner for Docker

Gitlab
The all-in-one DevOps platform for seamless collaboration and continuous delivery.

Glance
A self-hosted dashboard that puts all your feeds in one place.

Glances
An Eye on your system

Glitchtip
GlitchTip is a error tracking system.

Glpi
GLPI (Gestionnaire Libre de Parc Informatique) is a free, open-source IT Service Management (ITSM) platform used for IT asset management, helpdesk, and service desk operations.

Goatcounter
Lightweight web analytics platform.

Gotenberg
Gotenberg is a Docker-powered stateless API for PDF files.

Gotify
Gotify is an open-source self-hosted notification server.

Gowa
Golang WhatsApp - Built with Go for efficient memory use

Grafana
Grafana is the open source analytics & monitoring solution for every database.

Grafana With Postgresql
Grafana is the open source analytics & monitoring solution for every database.

Gramps Web
Open Source Online Genealogy System.

Grimmory
Grimmory is a self-hosted application for managing your entire book collection in one place. Organize, read, annotate, sync across devices, and share without relying on third-party services.

Grist
Grist is a modern relational spreadsheet. It combines the flexibility of a spreadsheet with the robustness of a database.

Grocy
Grocy is a web-based household management and grocery list application.

Hatchet
Hatchet allows you to run background tasks at scale with a high-throughput, low-latency computing service built on an open-source, fault-tolerant queue.

Heimdall
Heimdall is a dashboard for managing and organizing your server applications.

Heyform
Allows anyone to create engaging conversational forms for surveys, questionnaires, quizzes, and polls. No coding skills required.

Homarr
Homarr is a self-hosted homepage for your services.

Home Assistant
Open source home automation that puts local control and privacy first.

Homebox
Homebox is the inventory and organization system built for the Home User.

Homepage
A modern, fully static, fast, secure fully proxied, highly customizable application dashboard

Hoppscotch
The Open Source API Development Platform

Imgcompress
Offline image compression, conversion, and AI background removal for Docker homelabs.

Immich
Self-hosted photo and video management solution.

Infisical
Infisical is the open source secret management platform that developers use to centralize their application configuration and secrets like API keys and database credentials.

Invoice Ninja
The leading open-source invoicing platform

It Tools
IT Tools is a self-hosted solution for managing various IT tasks.

Jellyfin
Jellyfin is a media server for hosting and streaming your media collection.

Jenkins
Jenkins is an open source automation server, Jenkins provides hundreds of plugins to support building, deploying and automating any project.

Joomla With Mariadb
Joomla! is the mobile-ready and user-friendly way to build your website. Choose from thousands of features and designs. Joomla! is free and open source.

Joplin
Self-hosted sync server for Joplin

Jupyter Notebook Python
Jupyter Notebook is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations, and narrative text.

Karakeep
A self-hostable bookmark-everything app (links, notes and images) with AI-based automatic tagging and full text search

Keycloak
Keycloak is an open-source Identity and Access Management tool.

Keycloak With Postgres
Keycloak is an open-source Identity and Access Management tool.

Kimai
Open source time-tracking app.

Kuzzle
Kuzzle is a generic backend offering the basic building blocks common to every application.

Labelstudio
Label Studio is a multi-type data labeling and annotation tool with standardized output format

Langflow
Langflow is an open-source, Python-based, customizable framework for building AI applications.

Langfuse
Langfuse is an open-source LLM engineering platform that helps teams collaboratively debug, analyze, and iterate on their LLM applications.

Leantime
Leantime is a goals focused project management system for non-project managers.

Librechat
Self-hosted, powerful, and privacy-focused chat UI for multiple AI models

Libreoffice
LibreOffice is a free and powerful office suite.

Librespeed
Self-hosted lightweight Speed Test.

Libretranslate
Free and open-source machine translation API, entirely self-hosted.

Limesurvey
Simple, quick and anonymous online survey tool that's bursting with juicy insights.

Linkding
A self-hosted bookmark manager designed to be minimal, fast, and easy to set up.

Linkding Plus
A self-hosted bookmark manager designed to be minimal, fast, and easy to set up. (Includes feature for archiving websites as HTML snapshots)

Listmonk
Self-hosted newsletter and mailing list manager

Litellm
Call all LLM APIs using the OpenAI format. Use Bedrock, Azure, OpenAI, Cohere, Anthropic, Ollama, Sagemaker, HuggingFace, Replicate, Groq (100+ LLMs)

Litequeen
Lite Queen is an open-source SQLite database management software that runs on your server.

Lobe Chat
An open-source, modern-design AI chat framework.

Logto
A comprehensive identity solution covering both the front and backend, complete with pre-built infrastructure and enterprise-grade solutions.

Lowcoder
Lowcoder (forked from OpenBlocks) is a self-hosted, open-source, low-code platform for building internal tools.

Mage Ai
Build, run, and manage data pipelines for integrating and transforming data.

Mailpit
Email & SMTP testing tool with API for developers

Marimo
An open-source reactive notebook for Python — reproducible, git-friendly, SQL built-in, executable as a script, and shareable as an app.

Martin
Martin is a tile server able to generate and serve vector tiles on the fly from large PostGIS databases, PMTiles (local or remote), and MBTiles files, allowing multiple tile sources to be dynamically combined into one.

Matrix Synapse With Postgresql
Chat securely with your family, friends, community, or build great apps with Matrix!

Matrix Synapse With Sqlite
Chat securely with your family, friends, community, or build great apps with Matrix!

Mattermost
Mattermost is an open source, self-hosted Slack-alternative.

Mealie
A recipe manager and meal planner.

Mediawiki
MediaWiki is a collaboration and documentation platform brought to you by a vibrant community.

Meilisearch
MeiliSearch is a powerful, fast, easy to use and deploy search engine.

Memos
An open-source, lightweight note-taking solution. The pain-less way to create your meaningful notes. Your Notes, Your Way.

Metabase
Fast analytics with the friendly UX and integrated tooling to let your company explore data on their own.

Metamcp
MCP Aggregator, Orchestrator, Middleware, Gateway in one app

Metube
A web GUI for youtube-dl with playlist support. It enables you to effortlessly download videos from YouTube and dozens of other sites.

Mindsdb
MindsDB is the platform for building AI from enterprise data, enabling smarter organizations.

Minecraft
Minecraft Server that will automatically download selected version at startup.

Miniflux
Miniflux is a minimalist and opinionated feed reader.

Mixpost
Mixpost is a robust and versatile social media management software, designed to streamline social media operations and enhance content marketing strategies.

Moodle
Moodle is the world’s most customisable and trusted eLearning solution that empowers educators to improve our world.

Mosquitto
Mosquitto is lightweight and suitable for use on all devices, from low-power single-board computers to full servers.

N8N
n8n is an extendable workflow automation tool.

N8N With Postgres And Worker
n8n is an extendable workflow automation tool with queue mode and workers.

N8N With Postgresql
n8n is an extendable workflow automation tool.

Navidrome
Standalone server, that allows you to browse and listen to your music collection using a web browser or any Subsonic-compatible client.

Neon Ws Proxy
The database you love, on a serverless platform designed to help you build reliable and scalable applications faster.

Netbird Client
Connect your devices into a secure WireGuard®-based overlay network with SSO, MFA and granular access controls.

Newapi
The next-generation LLM gateway and AI asset management system supports multiple languages.

Newt Pangolin
Pangolin tunnels your services to the internet so you can access anything from anywhere.

Next Image Transformation
Drop-in replacement for Vercel's Nextjs image optimization service.

Nextcloud
NextCloud is a self-hosted, open-source platform that provides file storage, collaboration, and communication tools for seamless data management.

Nextcloud With Mariadb
NextCloud is a self-hosted, open-source platform that provides file storage, collaboration, and communication tools for seamless data management.

Nextcloud With Mysql
NextCloud is a self-hosted, open-source platform that provides file storage, collaboration, and communication tools for seamless data management.

Nextcloud With Postgres
NextCloud is a self-hosted, open-source platform that provides file storage, collaboration, and communication tools for seamless data management.

Nexus
Open source Universal Repository Manager (x86_64 version, official), default credentials: admin/admin123

Nexus Arm
Open source Universal Repository Manager (ARM version, community edition), default credentials: admin/admin123

Nitropage
Nitropage is an extensible, visual website builder, offering a growing library of versatile building blocks, focal-point image cropping and sovereign font management.

Nitropage With Postgresql
Nitropage is an extensible, visual website builder, offering a growing library of versatile building blocks, focal-point image cropping and sovereign font management.

Nocobase
NocoBase is the most extensible AI-powered no-code/low-code platform.

Nocodb
NocoDB is an open source Airtable alternative. Turns any MySQL, PostgreSQL, SQL Server, SQLite & MariaDB into a smart-spreadsheet.

Nodebb
A next-generation discussion platform.

Ntfy
ntfy is a simple HTTP-based pub-sub notification service. It allows you to send notifications to your phone or desktop via scripts from any computer, and/or using a REST API.

Observium
Observium is a comprehensive network monitoring platform designed to deliver powerful monitoring capabilities, combined with an elegant and intuitive user interface.

Odoo
Odoo is a suite of open-source business apps that cover all your company needs.

Ollama With Open Webui
Ollama with Open Web UI integrates AI model deployment with a user-friendly interface.

Once Campfire
Super simple group chat, without a subscription.

Onedev
Git server with CI/CD, kanban, and packages. Seamless integration. Unparalleled experience.

Onetimesecret
Share sensitive information securely with self-destructing links that are only viewable once.

Open Archiver
A self-hosted, open-source email archiving solution with full-text search capability.

Open Webui
User-friendly AI Interface (Supports Ollama, OpenAI API, ...)

Openclaw
AI-powered coding assistant with multi-provider support and browser automation.

Openpanel
Open source alternative to Mixpanel and Plausible for product analytics

Opnform
OpnForm is an open-source form builder that lets you create beautiful forms and share them anywhere. It's super fast, you don't need to know how to code

Orangehrm
OrangeHRM open source HR management software.

Organizr
Homelab Services Organizer

Osticket
osTicket is a widely-used open source support ticket system.

Overseerr
Overseerr is a request management and media discovery tool built to work with your existing Plex ecosystem.

Owncloud
OwnCloud with Open Web UI integrates file management with a powerful, user-friendly interface.

Pairdrop
Pairdrop is a self-hosted file sharing and collaboration platform, offering secure file sharing and collaboration capabilities for efficient teamwork.

Palworld
Palworld.yaml

Paperless
Paperless-ngx is a community-supported open-source document management system that transforms your physical documents into a searchable online archive so you can keep, well, less paper.

Passbolt
Passbolt Community Edition (CE) API. The JSON API for the open source password manager for teams!

Paymenter
Open-Source Billing, Built for Hosting

Penpot
Penpot is the first Open Source design and prototyping platform for product teams.

Penpot With S3
Penpot is the first Open Source design and prototyping platform for product teams.

Pgadmin
pgAdmin is a web-based database management tool for administering your PostgreSQL databases through a user-friendly interface.

Pgbackweb
Effortless PostgreSQL backups with a user-friendly web interface!

Phpmyadmin
phpMyAdmin is a web-based database management tool for administering your MySQL and MariaDB databases through a user-friendly interface.

Pi Hole
Network-wide Ad Blocking

Plex
Plex organizes video, music and photos from personal media libraries and streams them to smart TVs, streaming boxes and mobile devices.

Plunk
Plunk, The Open-Source Email Platform for AWS

Pocket Id
A simple and secure OIDC provider with passkey authentication

Pocket Id With Postgresql
A simple and secure OIDC provider with passkey authentication

Pocketbase
Open Source backend for your next SaaS and Mobile app in 1 file

Portainer
Portainer is a lightweight management UI for Docker

Postiz
Open source social media scheduling tool.

Prefect
Prefect is an orchestration and observability platform that empowers developers to build and scale workflows quickly.

Privatebin
PrivateBin is a minimalist, open source online pastebin where the server has zero knowledge of pasted data.

Prowlarr
Prowlarr⁠ is a indexer manager/proxy built on the popular arr .net/reactjs base stack to integrate with your various PVR apps.

Proxyscotch
A simple proxy server created for https://hoppscotch.io - CORS proxy

Pydio Cells
High-performance large file sharing, native no-code automation, and a collaboration-centric architecture that simplifies access control without compromising security or compliance.

Qbittorrent
The qBittorrent project aims to provide an open-source software alternative to μTorrent.

Qdrant
Qdrant is a vector similarity search engine that provides a production-ready service with a convenient API to store, search, and manage points (i.e. vectors) with an additional payload.

Rabbitmq
With tens of thousands of users, RabbitMQ is one of the most popular open source message brokers.

Radarr
Radarr⁠ - A fork of Sonarr to work with movies à la Couchpotato.

Rallly
Rallly is an open-source scheduling and collaboration tool designed to make organizing events and meetings easier.

Reactive Resume
A one-of-a-kind resume builder that keeps your privacy in mind.

Readeck
Simple web application that lets you save the precious readable content of web pages you like and want to keep forever.

Redis Insight
Redis Insight lets you do both GUI- and CLI-based interactions in a fully-featured desktop GUI client.

Redlib
An alternative private front-end to Reddit, with its origins in Libreddit.

Redmine
Redmine is a flexible project management web application.

Rivet Engine
Build and scale stateful workloads with long-lived processes

Rocketchat
Self-hosted, secure and highly customizable open-source communication platform for organizations with sophisticated security and privacy concerns.

Rybbit
Open-source, privacy-first web analytics.

Ryot
Roll your own tracker! Ryot is a self-hosted platform for tracking various aspects of life such as media consumption, fitness activities, and more.

Satisfactory
Satisfactory Dedicated Server for hosting your own Satisfactory game sessions.

Seafile
Open source cloud storage system for file sync, share and document collaboration

Searxng
SearXNG is a free internet metasearch engine which aggregates results from more than 70 search services.

Seaweedfs
SeaweedFS is a simple and highly scalable distributed file system. Compatible with S3, with an admin web interface.

Sequin
The fastest Postgres change data capture

Sessy
Email observability platform for monitoring and analyzing email systems.

Sftpgo
SFTPGo is an event-driven SFTP, FTP/S, HTTP/S and WebDAV server.

Shlink
The definitive self-hosted URL shortener

Signoz
An observability platform native to OpenTelemetry with logs, traces and metrics.

Silverbullet
SilverBullet is a tool to develop, organize, and structure your personal knowledge and to make it universally accessible across all your devices.

Siyuan
A privacy-first, self-hosted, fully open source personal knowledge management software, written in typescript and golang.

Slash
An open source, self-hosted links shortener and sharing platform.

Snapdrop
A self-hosted file-sharing service for secure and convenient file transfers, whether on a local network or the internet.

Soju
A user-friendly IRC bouncer with a modern web interface

Soketi
Soketi is your simple, fast, and resilient open-source WebSockets server.

Soketi App Manager
Manage soketi websocket server and apps with ease.

Sonarr
Sonarr⁠ (formerly NZBdrone) is a PVR for usenet and bittorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

Spacebot
An agentic AI system with specialized processes for thinking, working, and remembering.

Sparkyfitness
SparkyFitness is a comprehensive fitness tracking and management application designed to help users monitor their nutrition, exercise, and body measurements. It provides tools for daily progress tracking, goal setting, and insightful reports to support a healthy lifestyle.

Statusnook
Effortlessly deploy a status page and start monitoring endpoints in minutes

Stirling Pdf
Stirling is a powerful web based PDF manipulation tool

Strapi
Open-source headless CMS to build powerful APIs with built-in content management.

Supabase
The open source Firebase alternative.

Superset With Postgresql
Modern data exploration and visualization platform (unofficial community docker image)

Supertokens With Mysql
An open-source authentication solution that simplifies the implementation of secure user authentication and session management for web and mobile applications.

Supertokens With Postgresql
An open-source authentication solution that simplifies the implementation of secure user authentication and session management for web and mobile applications.

Sure
An all-in-one personal finance platform.

Swetrix
Privacy-friendly and cookieless European web analytics alternative to Google Analytics.

Syncthing
Syncthing synchronizes files between two or more computers in real time.

Tailscale Client
Tailscale securely connects your devices over the internet using WireGuard.

Teable
Teable is a powerful visual interface built on relational databases (PostgreSQL).

Terraria Server
Docker multi-arch Image for Terraria Server.

Tolgee
Tolgee is a localization management platform for developers and translators.

Traccar
Traccar is a free and open source modern GPS tracking system.

Trailbase
A blazingly fast Rust/SQLite/Wasmtime app server with type-safe APIs

Transmission
Fast, easy, and free BitTorrent client.

Trigger
The open source background jobs platform for developers

Triliumnext
Build your personal knowledge base with TriliumNext Notes.

Twenty
Twenty is a CRM designed to fit your unique business needs.

Typesense
Cutting-edge, in-memory search engine for mere mortals. Knowledge of rocket science optional.

Umami
Umami is web analytics platform which provides insights into visitor behavior without compromising user privacy.

Unleash With Postgresql
Open source feature flag management for enterprises.

Unleash Without Database
Open source feature flag management for enterprises.

Unstructured
Unstructured provides a platform and tools to ingest and process unstructured documents for Retrieval Augmented Generation (RAG) and model fine-tuning.

Uptime Kuma
Uptime Kuma is a monitoring tool for tracking the status and performance of your applications in real-time.

Uptime Kuma With Mariadb
Uptime Kuma is a monitoring tool for tracking the status and performance of your applications in real-time.

Uptime Kuma With Mysql
Uptime Kuma is a monitoring tool for tracking the status and performance of your applications in real-time.

Usesend
Usesend is an open-source alternative to Resend, Sendgrid, Mailgun and Postmark etc.

Vaultwarden
Vaultwarden is a password manager that allows you to securely store and manage your passwords.

Vert
The next-generation file converter. Open source, fully local and free forever.

Vikunja
The open-source, self-hostable to-do app. Organize everything, on all platforms.

Vikunja With Postgresql
The open-source, self-hostable to-do app. Organize everything, on all platforms.

Vvveb
Powerful and easy to use cms to build websites, blogs or ecommerce stores.

Vvveb With Mariadb
Powerful and easy to use cms to build websites, blogs or ecommerce stores.

Vvveb With Mysql
Powerful and easy to use cms to build websites, blogs or ecommerce stores.

Wakapi
A minimalist, self-hosted WakaTime-compatible backend for coding statistics

Weaviate
Weaviate is an open-source vector database that stores both objects and vectors, allowing for combining vector search with structured filtering.

Web Check
All-in-one OSINT tool for analysing any website

Weblate
Weblate is a libre software web-based continuous localization system.

Whoogle
Whoogle is a self-hosted, privacy-focused search engine front-end for accessing Google search results without tracking and data collection.

Wikijs
The most powerful and extensible open source Wiki software.

Windmill
Windmill is a developer platform to build production-grade multi-steps automations and internal apps.

Wings
The server control plane for Pterodactyl Panel. Written from the ground-up with security, speed, and stability in mind.

Wireguard Easy
The easiest way to run WireGuard VPN + Web-based Admin UI.

Wordpress With Mariadb
WordPress is open source software you can use to create a beautiful website, blog, or app.

Wordpress With Mysql
WordPress is open source software you can use to create a beautiful website, blog, or app.

Wordpress Without Database
WordPress is open source software you can use to create a beautiful website, blog, or app.

Yamtrack
Yamtrack is a self hosted media tracker for movies, tv shows, anime, manga, video games and books.

Yamtrack With Postgresql
Yamtrack is a self hosted media tracker for movies, tv shows, anime, manga, video games and books.

Zipline
A ShareX/file upload server that is easy to use, packed with features, and with an easy setup!
''';
