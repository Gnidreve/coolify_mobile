# Coolify Mobile

A Flutter mobile app for managing your [Coolify](https://coolify.io) self-hosting instance on the go.

> **iOS and Android only.** Desktop and web builds are not supported.

---

## Requirements

- Flutter SDK `^3.11.0`
- A running Coolify instance with API access enabled
- Your Coolify API token ([how to get one](https://coolify.io/docs/api-reference/api/))

---

## Getting Started

### Development

1. Copy `.env.example` to `.env` and fill in your credentials:

   ```env
   COOLIFY_BASE_URL=https://coolify.example.com
   COOLIFY_AUTH_TOKEN=your_api_token_here
   ```

   > **Note:** `.env` values are baked in at build time as default values in the login screen inputs. The credentials only reach secure storage after the user actively submits the login form. After logout the login screen reappears with the `.env` defaults pre-filled.

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run on a connected device or emulator:

   ```bash
   flutter run
   ```

---

## Architecture

```
lib/
├── api/                         # Coolify SDK (domain-based, bundled per resource)
│   ├── applications/           # GET/PATCH /applications, logs, lifecycle actions
│   ├── core/                   # BaseApiClient, ApiException, response readers
│   ├── databases/              # GET/PATCH/DELETE /databases + typed create APIs
│   ├── default/                # default/version endpoints
│   ├── deployments/            # deployments and application deployments
│   ├── health/                 # GET /api/health
│   ├── projects/               # projects and environments
│   ├── resources/              # generic resources listing
│   ├── security/               # private keys
│   ├── servers/                # servers CRUD
│   ├── teams/                  # teams endpoints
│   └── coolify_api.dart        # Main entrypoint: CoolifyApi
├── app/
│   └── app.dart                 # Root widget, theme setup, RootGate (login vs. home)
├── assets/                      # Static assets (SVGs, images, bundled fonts)
│   └── ...
├── components/                  # Reusable UI building blocks used across pages
│   └── ...
├── core/
│   ├── services/
│   │   ├── credentials_service.dart   # Secure storage for URL + API token
│   │   ├── notification_service.dart  # Firebase Messaging permission + device id
│   │   └── preferences_service.dart   # SharedPreferences for theme, env seeding, notification ack
│   └── utils/
│       ├── resource_status.dart
│       └── url_resolver.dart
├── pages/                       # One folder per route
│   ├── databases/              # Dedicated pages per database type
│   ├── login/
│   ├── home/                   # Shell with sidebar drawer
│   ├── deployments/
│   ├── projects/               # Project/application pages, including split config sections
│   ├── servers/
│   ├── notifications/
│   ├── keys_tokens/
│   ├── terminal/
│   ├── teams/
│   └── settings/
├── main.dart
├── settings.dart
└── theme.dart                   # Central shadcn_ui theme config + Geist Sans
```

### SDK usage

The Coolify API is wrapped in a lightweight SDK under `lib/api/`. Each resource group maps to a domain class, accessed via dot notation:

```dart
final coolify = CoolifyApi(baseUrl: '...', apiToken: '...');
await coolify.applications.list();
await coolify.databases.list();
await coolify.defaultApi.version();
await coolify.health.check();
await coolify.projects.list();
await coolify.resources.list();
await coolify.security.keys.list();
await coolify.servers.list();
await coolify.deployments.list();
await coolify.teams.list();
```

Current implemented resource groups:

- `applications`
- `databases`
- `defaultApi`
- `health`
- `projects`
- `resources`
- `security.keys`
- `servers`
- `deployments`
- `teams`

### Application config structure

- `Config` on application details is split into dedicated subsections via dropdown
- `General`, `Git`, `Health Checks`, `Advanced`, and `Danger Zone` each live in their own page file
- Shared field rendering / PATCH handling is centralized in `application_config_section_editor.dart`
- Field grouping is hard-coded in `application_config_schema.dart`

---

## Tech Stack

| Concern         | Package                                                                                                                        |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| UI components   | [`shadcn_ui`](https://pub.dev/packages/shadcn_ui)                                                                              |
| Toasts          | [`shadcn_ui` Sonner](https://pub.dev/packages/shadcn_ui)                                                                       |
| Icons           | [`lucide_icons_flutter`](https://pub.dev/packages/lucide_icons_flutter)                                                        |
| Secure storage  | [`flutter_secure_storage`](https://pub.dev/packages/flutter_secure_storage)                                                    |
| Preferences     | [`shared_preferences`](https://pub.dev/packages/shared_preferences)                                                            |
| HTTP            | [`http`](https://pub.dev/packages/http)                                                                                        |
| SVG rendering   | [`flutter_svg`](https://pub.dev/packages/flutter_svg)                                                                          |
| Environment     | [`flutter_dotenv`](https://pub.dev/packages/flutter_dotenv)                                                                    |
| Push / Firebase | [`firebase_core`](https://pub.dev/packages/firebase_core), [`firebase_messaging`](https://pub.dev/packages/firebase_messaging) |
| Typography      | Local bundled `Geist Sans`                                                                                                     |
