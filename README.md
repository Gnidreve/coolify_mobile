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
├── api/                         # CoolifyApi facade + helpers around the generated client
│   ├── coolify_api.dart        # Entry point: CoolifyApi (wires auth, timeout, base URL)
│   ├── api_support.dart        # Error messages, JSON helpers, requestFromMap
│   └── app_models.dart         # Display helpers on generated models, DatabaseResource
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
│   ├── dashboard/              # Recent deployments
│   ├── update/                 # Blocking update screen
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

### API client

The Coolify API client is **generated** from the OpenAPI spec in `docs/openapi.json`
(`packages/coolify_api`, committed). `lib/api/coolify_api.dart` wires it to one instance:

```dart
final coolify = CoolifyApi(baseUrl: '...', apiToken: '...');
await coolify.applications.listApplications();
await coolify.projects.getEnvironments(projectUuid);
await coolify.applications.startApplicationByUuid(uuid);
```

All 291 operations of the spec are available. Regenerate after updating the spec (needs Java 11+
and python3):

```bash
curl -fsSL https://raw.githubusercontent.com/coollabsio/coolify/v4.x/openapi.json -o docs/openapi.json
./tool/generate_api.sh
```

`tool/prepare_spec.py` fixes what the generator cannot digest or what the spec gets wrong
(OpenAPI 3.1 → 3.0, a few untyped schemas, missing `Environment.uuid`, wrong response of
`/deployments/applications/{uuid}`, required `private_key` on key update). Every fix is
commented there; check them when the spec changes.

Things to know when using the generated client:

- The spec marks almost every field optional, so model fields are nullable. Use the
  extensions in `app_models.dart` (`displayName`, `statusOrEmpty`, …) in the UI.
- Some responses are mistyped in the spec (`/databases` is a "string"). These are decoded by hand
  in `CoolifyApi` (`listDatabases`, `listApplicationDeployments`, …).
- Forms assemble request bodies as maps. Build the request with `requestFromMap`, which throws
  if the generated model would drop a field, and the client sends exactly that map. A generated
  `toJson` alone would send every unset field as `null`, and a PATCH would clear it.
- Errors: `apiErrorMessage(error)` turns an `ApiException` into the server's message.

### Application config structure

- `Config` on application details is split into dedicated subsections via dropdown
- `General`, `Git`, `Health Checks`, `Advanced`, and `Danger Zone` each live in their own page file
- Shared field rendering / PATCH handling is centralized in `application_config_section_editor.dart`
- Field grouping is hard-coded in `application_config_schema.dart`
- Saving sends only the fields the user changed

---

## Auto-Update (Android)

On every start the app checks `version.json` of the rolling GitHub release `latest`
(`releases/download/latest/version.json`) while showing a loading indicator. If its `build`
is higher than the installed version code, a blocking "Update required" screen downloads the
APK, verifies its SHA-256 and opens the Android installer. If the check fails (offline, 404,
invalid JSON) the app simply starts. The check is skipped on iOS and in debug builds.

`version.json`:

```json
{ "version": "1.0.0", "build": 1792400936, "apk": "coolify_mobile.apk", "sha256": "…", "notes": "…" }
```

### Publishing a release

Run the **Release** workflow manually (Actions → Release → *Run workflow*, optional notes).
It builds a signed APK, deletes the existing `latest` release and recreates it with
`coolify_mobile.apk` and `version.json`. The version name comes from `pubspec.yaml`; the
build number is the Unix timestamp of the run, so it always increases.

### One-time setup

Updates only install over an existing app if every APK is signed with the **same key**.

```bash
keytool -genkeypair -v -keystore release.jks -alias coolify -keyalg RSA -keysize 2048 -validity 10000
base64 -w0 release.jks   # value for ANDROID_KEYSTORE_BASE64
```

Repository secrets: `ANDROID_KEYSTORE_BASE64`, `ANDROID_KEYSTORE_PASSWORD`,
`ANDROID_KEY_ALIAS`, `ANDROID_KEY_PASSWORD`. Keep `release.jks` backed up — losing it means
users must uninstall before they can update. For local release builds create
`android/key.properties` (`storeFile`, `storePassword`, `keyAlias`, `keyPassword`; gitignored);
without it release builds fall back to the debug key.

Without the secrets the workflow still builds, signed with the debug key of the runner, and
prints a warning. Such builds cannot update an installed app (signature mismatch), and the
mandatory update screen then blocks the app until it is reinstalled.

The first signed release must be installed manually once; builds signed with the old debug
key cannot be updated in place.

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
