# Relacje między kontenerami Artifactory

# Wewnętrzne relacje kontenerów
artifactoryapp.appartifactory -> artifactoryapp.dbartifactory "Zapisuje i odczytuje dane"
artifactoryapp.appartifactory -> artifactoryapp.proxyartifactory "Wysyła ruch przez proxy"
artifactoryapp.proxyartifactory -> artifactoryapp.appartifactory "Przekazuje żądania do aplikacji"

# Integracje z systemami zewnętrznymi
//artifactoryapp.appartifactory -> external.gitlab "Pobiera/publikuje artefakty z repozytorium"
# Jeśli masz element external.jenkins w modelu, odkomentuj poniższą linię:
# artifactoryapp.appartifactory -> external.jenkins "Wysyła artefakty do CI/CD"