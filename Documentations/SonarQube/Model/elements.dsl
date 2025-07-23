sonarqubeapp = softwaresystem "SonarQube" {
    appsonarqube = container "Sonarqube Aplikacja" {
        url "https://sonarqube.domena.com"
        properties {
            "wiki" "https://wiki.domena.com"
        }
    }
}
sonarqubdb = softwaresystem "SonarQube DB" {
    dbsonarqube = container "Sonarqube Baza Danych" {
        url "https://sonarqube.domena.com"
        properties {
            "wiki" "https://wiki.domena.com"
        }
    }
}
sonarqubeagent = softwaresystem "SonarQube Agent" {
    agentsonarqube = container "Sonarqube Agent" {
        url "https://sonarqube.domena.com"
        properties {
            "wiki" "https://wiki.domena.com"
        }
    }
}