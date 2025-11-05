artifactoryapp = softwaresystem "Artifactory System" {
    tags "Artifactory"
    appartifactory = container "Artifactory Aplikacja" {
        tags "Artifactory", "Application"
        description "Aplikacja Artifactory do zarządzania artefaktami"
        url "https://artifactory.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/artifactory"
        }
    }
    dbartifactory = container "Artifactory Baza Danych" {
        tags "Artifactory", "Database"
        technology "PostgreSQL"
        description "Baza danych Artifactory"
        url "https://artifactory.domena.com/db"
        properties {
            "wiki" "https://wiki.domena.com/artifactory-db"
        }
    }
    proxyartifactory = container "Artifactory Proxy" {
        tags "Artifactory", "Proxy"
        technology "nginx"
        description "Reverse proxy dla Artifactory"
        url "https://artifactory-proxy.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/artifactory-proxy"
        }
    }
}