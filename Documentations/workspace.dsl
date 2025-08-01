workspace "DevOps Architecture" "Kompleksowa architektura narzędzi DevOps" {
    
    !identifiers hierarchical
    
    model {
        # Elementy architektury - ładowanie z poszczególnych modułów
        !include Artifactory/Model/elements.dsl
        !include AzureDevOps/Model/elements.dsl
        !include Bitbucket/Model/elements.dsl
        !include External/Model/elements.dsl
        !include Infra/Model/elements.dsl
        !include Pact/Model/elements.dsl
        !include SonarQube/Model/elements.dsl
        !include TeamCity/Model/elements.dsl
        !include Xray/Model/elements.dsl
        
        # Relacje między systemami - ładowanie z poszczególnych modułów
        !include Artifactory/Model/relations.dsl
        !include AzureDevOps/Model/relations.dsl
        !include Bitbucket/Model/relations.dsl
        !include External/Model/relations.dsl
        !include Infra/Model/relations.dsl
        !include Pact/Model/relations.dsl
        !include SonarQube/Model/relations.dsl
        !include TeamCity/Model/relations.dsl
        !include Xray/Model/relations.dsl
        
        # Deployment - aktualnie wykomentowane, można włączyć w przyszłości
        # !include Artifactory/Model/deployment.dsl
        # !include AzureDevOps/Model/deployment.dsl
        # !include Bitbucket/Model/deployment.dsl
        # !include External/Model/deployment.dsl
        # !include Infra/Model/deployment.dsl
        # !include Pact/Model/deployment.dsl
        # !include SonarQube/Model/deployment.dsl
        # !include TeamCity/Model/deployment.dsl
        # !include Xray/Model/deployment.dsl
    }
    
    views {
        # Widoki z poszczególnych modułów
        !include SonarQube/Model/views.dsl  
        !include Artifactory/Model/views.dsl
        !include AzureDevOps/Model/views.dsl
        !include Bitbucket/Model/views.dsl
        !include External/Model/views.dsl
        !include Infra/Model/views.dsl
        !include Pact/Model/views.dsl
        !include TeamCity/Model/views.dsl
        !include Xray/Model/views.dsl

        # Globalne style - można odkomentować i dostosować
        # theme default
        
        styles {
            element "Element" {
                color #ffffff
                fontSize 14
            }
            element "Person" {
                background #08427b
                color #ffffff
                shape person
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Database" {
                background #c62828
                color #ffffff
                shape cylinder
            }
        }
    }
    
    configuration {
        scope softwaresystem
        branding {
            logo "https://via.placeholder.com/200x60/1168bd/ffffff?text=DevOps"
        }
    }
}