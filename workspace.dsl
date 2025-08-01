workspace "Example Architecture" "Przykładowa architektura systemu z bazą danych" {

    !identifiers hierarchical

    model {
        # Definicja użytkowników
        user = person "Użytkownik końcowy" "Osoba korzystająca z systemu" {
            tags "User"
        }
        
        admin = person "Administrator" "Osoba zarządzająca systemem" {
            tags "Admin"
        }

        # Definicja systemu głównego
        mainSystem = softwareSystem "System Główny" "Główny system aplikacyjny" {
            
            # Warstwa prezentacji
            webApp = container "Aplikacja Webowa" "Interfejs użytkownika" "React/Angular" {
                tags "WebApp,Frontend"
            }
            
            # Warstwa API
            apiGateway = container "API Gateway" "Punkt wejścia dla wszystkich żądań API" "Spring Boot" {
                tags "API,Gateway"
            }
            
            # Warstwa biznesowa
            businessService = container "Serwis Biznesowy" "Logika biznesowa aplikacji" "Spring Boot" {
                tags "Service,Backend"
            }
            
            # Warstwa danych
            database = container "Baza Danych" "Przechowuje dane aplikacji" "PostgreSQL" {
                tags "Database,Storage"
            }
            
            # Cache
            cache = container "Cache" "Redis cache dla poprawy wydajności" "Redis" {
                tags "Cache,Storage"
            }
        }

        # Systemy zewnętrzne
        externalSystem = softwareSystem "System Zewnętrzny" "Zewnętrzny system integracyjny" {
            tags "External"
        }

        # Definicja relacji
        user -> webApp "Korzysta z aplikacji przez przeglądarkę" "HTTPS"
        admin -> webApp "Zarządza systemem" "HTTPS"
        
        webApp -> apiGateway "Wysyła żądania API" "HTTPS/REST"
        apiGateway -> businessService "Przekazuje żądania" "HTTP/REST"
        businessService -> database "Odczytuje i zapisuje dane" "JDBC"
        businessService -> cache "Buforuje dane" "Redis Protocol"
        businessService -> externalSystem "Integruje się z" "HTTPS/REST"
    }

    views {
        # Widok kontekstu systemu
        systemContext mainSystem "SystemContext" "Diagram kontekstu systemu głównego" {
            include *
            autolayout lr
            title "Kontekst Systemu Głównego"
            description "Pokazuje głównych aktorów i systemy zewnętrzne"
        }

        # Widok kontenerów
        container mainSystem "Containers" "Diagram kontenerów systemu głównego" {
            include *
            autolayout lr
            title "Architektura Kontenerów"
            description "Pokazuje wewnętrzną strukturę systemu głównego"
        }

        # Style wizualne
        styles {
            element "Element" {
                color #ffffff
                fontSize 14
            }
            element "Person" {
                background #08427b
                color #ffffff
                shape person
                fontSize 16
            }
            element "User" {
                background #1168bd
            }
            element "Admin" {
                background #d73027
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "External" {
                background #999999
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "WebApp,Frontend" {
                background #85bbf0
                color #000000
            }
            element "API,Gateway" {
                background #2e7d32
                color #ffffff
            }
            element "Service,Backend" {
                background #1565c0
                color #ffffff
            }
            element "Database,Storage" {
                background #c62828
                color #ffffff
                shape cylinder
            }
            element "Cache" {
                background #ff8f00
                color #ffffff
                shape cylinder
            }
            relationship "Relationship" {
                thickness 2
                color #707070
                fontSize 12
            }
        }
    }

    configuration {
        scope softwaresystem
        branding {
            logo "https://via.placeholder.com/150x50/1168bd/ffffff?text=LOGO"
        }
    }
}