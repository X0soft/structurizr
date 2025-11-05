xrayapp = softwaresystem "Xray" {
    appxray = container "Xray Aplikacja" {
        description "Aplikacja Xray do zarządzania bezpieczeństwem i zgodnością"
        url "https://xray.domena.com"
        properties {
            "wiki" "https://wiki.domena.com/xray"
        }
    }
    dbxray = container "Xray Baza Danych" {
        description "Baza danych Xray"
        tags "Xray", "Database"
        technology "PostgreSQL"
        url "https://xray.domena.com/db"
        properties {
            "wiki" "https://wiki.domena.com/xray-db"
        }
    }
}
