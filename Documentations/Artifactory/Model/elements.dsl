artifactory = softwaresystem "Artifactory" {
    appartifactory = container "Artifactory Aplikacja" {
        description "Aplikacja Artifactory do zarządzania artefaktami"
        url "https://artifactory.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/artifactory"
        }
    }
    dbartifactory = container "Artifactory Baza Danych" {
        description "Baza danych Artifactory"
        url "https://artifactory.domena.com/db"
        properties {
            "wiki" "https://wiki.domena.com/artifactory-db"
        }
    }
    proxyartifactory = container "Artifactory Proxy" {
        description "Reverse proxy dla Artifactory"
        url "https://artifactory-proxy.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/artifactory"
        }
    }
}   