azuredevops = softwaresystem "Azure DevOps" {
    appazuredevops = container "Azure DevOps Aplikacja" {
        description "Aplikacja Azure DevOps do zarządzania procesami CI/CD"
        url "https://dev.azure.com"
        properties {
            "wiki" "https://wiki.domena.com/azuredevops"
        }
    }
    dbazuredevops = container "Azure DevOps Baza Danych" {
        description "Baza danych Azure DevOps"
        url "https://dev.azure.com/db"
        properties {
            "wiki" "https://wiki.domena.com/azuredevops-db"
        }
    }
    agentazuredevops = container "Azure DevOps Agent" {
        description "Agent wykonujący zadania CI/CD"
        url "https://dev.azure.com/agent"
        properties {
            "wiki" "https://wiki.domena.com/azuredevops-agent"
        }
    }
    opsazuredevops = container "Azure DevOps OpenSearch" {
        description "OpenSearch dla Azure DevOps"
        technology "OpenSearch"
        url "https://dev.azure.com/search"
        properties {
            "wiki" "https://wiki.domena.com/azuredevops-opensearch"
        }
    }
}