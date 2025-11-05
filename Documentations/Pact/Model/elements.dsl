pactapp = softwaresystem "Pact" {
    apppact = container "Pact Aplikacja" {
        description "Aplikacja Pact do testowania kontraktów API"
        url "https://pact.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/pact"
        }
    }
    dbpact = container "Pact Baza Danych" {
        description "Baza danych Pact"
        tags "Pact", "Database"
        technology "PostgreSQL"
        url "https://pact.domena.com/db"
        properties {
            "wiki" "https://wiki.domena.com/pact-db"
        }
    }
}
