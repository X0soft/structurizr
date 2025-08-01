# Structurizr - Architektura DevOps

## 📋 Opis projektu
Projekt zawiera definicję architektury systemu DevOps przy użyciu Structurizr DSL. Obejmuje integracje z narzędziami takimi jak Azure DevOps, Bitbucket, SonarQube, Artifactory, Pact, TeamCity i Xray.

## 🚀 Uruchomienie

### Wymagania
- Docker
- Docker Compose

### Instrukcja uruchomienia
```bash
# Uruchomienie Structurizr Lite
docker-compose up -d

# Dostęp do aplikacji
http://localhost:8080
```

## 📁 Struktura projektu
```
├── Documentations/          # Główne pliki architektury
│   ├── Artifactory/        # Definicje dla Artifactory
│   ├── AzureDevOps/        # Definicje dla Azure DevOps
│   ├── Bitbucket/          # Definicje dla Bitbucket
│   ├── External/           # Systemy zewnętrzne
│   ├── Infra/              # Infrastruktura
│   ├── Pact/               # Contract testing
│   ├── SonarQube/          # Analiza kodu
│   ├── TeamCity/           # CI/CD
│   └── Xray/               # Test management
├── docker-compose.yaml     # Konfiguracja Docker
└── workspace.dsl          # Przykładowy workspace
```

## 🛠️ Rozwój
- Modyfikuj pliki `.dsl` w odpowiednich katalogach
- Przeładuj stronę w przeglądarce aby zobaczyć zmiany
- Workspace automatycznie synchronizuje się z plikami

## 📚 Dokumentacja
- [Structurizr DSL](https://github.com/structurizr/dsl)
- [Structurizr Lite](https://structurizr.com/help/lite)
