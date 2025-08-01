# Relacje między kontenerami Artifactory
artifactory.appartifactory -> artifactory.dbartifactory "Zapisuje i odczytuje dane"
artifactory.appartifactory -> artifactory.proxyartifactory "Wysyła ruch przez proxy"
artifactory.proxyartifactory -> artifactory.appartifactory "Przekazuje żądania do aplikacji"

# Przykładowa integracja z systemami zewnętrznymi
#artifactory.appartifactory -> external.gitlab "Pobiera artefakty z repozytorium"
#artifactory.appartifactory -> external.jenkins "Wysyła artefakty do CI/CD"
# Relacje między kontenerami Artifactory
#artifactory.appartifactory -> artifactory.dbartifactory "Zapisuje i odczytuje dane"
#artifactory.appartifactory -> artifactory.proxyartifactory "Wysyła ruch przez proxy"
#artifactory.proxyartifactory -> artifactory.appartifactory "Przekazuje żądania do aplikacji"

# Przykładowa integracja z systemami zewnętrznymi
#artifactory.appartifactory -> external.gitlab "Pobiera artefakty z repozytorium"
#artifactory.appartifactory -> external.jenkins "Wysyła artefakty