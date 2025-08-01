teamcity = softwaresystem "TeamCity" {
    appteamcity = container "TeamCity Aplikacja" {
        description "Aplikacja TeamCity do zarządzania procesami CI/CD"
        url "https://teamcity.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/teamcity"
        }
    }
    dbteamcity = container "TeamCity Baza Danych" {
        description "Baza danych TeamCity"
        url "https://teamcity.domena.com/db"
        properties {
            "wiki" "https://wiki.domena.com/teamcity-db"
        }
    }
    agentteamcity = container "TeamCity Agent" {
        description "Agent wykonujący zadania CI/CD"
        url "https://teamcity.domena.com/agent"
        properties {
            "wiki" "https://wiki.domena.com/teamcity-agent"
        }
    }
}