# BeautyFlow TSM

BeautyFlow Tenant Management System - Applicazione desktop per macOS e Windows per la gestione dei tenant BeautyFlow.

## Requisiti

- Flutter SDK 3.9.2 o superiore
- Dart SDK
- macOS (per build macOS) o Windows (per build Windows)

## Setup Iniziale

1. **Clona la repository**
   ```bash
   git clone <url-repository>
   cd beautyflow_tsm
   ```

2. **Installa le dipendenze**
   ```bash
   flutter pub get
   ```

3. **Genera il client API da OpenAPI**
   ```bash
   ./generate_api.sh
   ```
   oppure manualmente:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## Comandi Principali

### Sviluppo

```bash
# Avvia l'app in modalità debug (macOS)
flutter run -d macos

# Avvia l'app in modalità debug (Windows)
flutter run -d windows

# Hot reload durante lo sviluppo
# Premi 'r' nel terminale mentre l'app è in esecuzione
```

### Build

```bash
# Build per macOS
flutter build macos

# Build per Windows
flutter build windows
```

### Code Generation

```bash
# Rigenera il client API dopo modifiche a openapi.yaml
./generate_api.sh

# Esegui code generation per tutti i generatori
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode per rigenerazione automatica
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Testing

```bash
# Esegui tutti i test
flutter test

# Esegui test con coverage
flutter test --coverage
```

### Analisi e Linting

```bash
# Analizza il codice
flutter analyze

# Formatta il codice
dart format .
```

## Struttura del Progetto

```
beautyflow_tsm/
├── lib/
│   ├── api/
│   │   └── generated/     # Client API generato da OpenAPI
│   ├── models/            # Modelli dati
│   ├── providers/         # State management (Provider)
│   ├── screens/           # Schermate dell'app
│   ├── widgets/           # Widget riutilizzabili
│   └── main.dart          # Entry point
├── test/                  # Test unitari e widget
├── openapi.yaml           # Specifica OpenAPI
├── generate_api.sh        # Script per generare il client API
└── pubspec.yaml           # Dipendenze del progetto
```

## Tecnologie Utilizzate

- **Flutter** - Framework UI multipiattaforma
- **Provider** - State management
- **Dio** - Client HTTP
- **OpenAPI Generator** - Generazione automatica client API
- **Flutter Secure Storage** - Storage sicuro per dati sensibili
- **Window Manager** - Gestione finestra desktop

## Sviluppo

1. Modifica il codice in `lib/`
2. Se modifichi `openapi.yaml`, rigenera il client con `./generate_api.sh`
3. Usa `flutter run -d macos` o `flutter run -d windows` per testare
4. Esegui `flutter analyze` prima di committare

## License

Proprietario - BeautyFlow