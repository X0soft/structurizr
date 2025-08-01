bitbucket = softwaresystem "Bitbucket" {
    appbitbucket = container "Bitbucket Aplikacja" {
        description "Aplikacja Bitbucket do zarządzania repozytoriami kodu"
        url "https://bitbucket.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/bitbucket"
        }
    }
    dbbitbucket = container "Bitbucket Baza Danych" {
        description "Baza danych Bitbucket"
        url "https://bitbucket.domena.com/db"
        properties {
            "wiki" "https://wiki.domena.com/bitbucket-db"
        }
    }
    opsbitbucket = container "Bitbucket OpenSearch" {
        description "OpenSearch dla Bitbucket"
        url "https://bitbucket.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/bitbucket-proxy"
        }
    }
}