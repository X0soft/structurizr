sonarqubeapp = softwaresystem "SonarQube" {
    appsonarqube = container "Sonarqube Aplikacja" {
        tags "SonarQube", "Application"
        url "https://sonarqube.domena.com"
        properties {
            "wiki" "https://wiki.domena.com"
        }
    }
    dbsonarqube = container "Sonarqube Baza Danych" {
        url "https://sonarqube.domena.com"
        tags "SonarQube", "Database"
        properties {
            "wiki" "https://wiki.domena.com"
        }
    }
    elksonarqube = container "Sonarqube Elasticsearch" {
        url "https://sonarqube.domena.com"
        tags "SonarQube", "Search"
        properties {
            "wiki" "https://wiki.domena.com"
        }
    }
}
sonarqubescanner = softwaresystem "SonarQube Scanner" {
    scannersonarqube = container "Sonarqube Scanner" {
        tags "SonarQube", "Scanner"
        url "https://sonarqube.domena.com"
        properties {
            "wiki" "https://wiki.domena.com"
        }
    }
}