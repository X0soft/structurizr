deploymentEnvironment "Production" {
    deploymentNode "Azure Cloud" {
        deploymentNode "Resource Group: devops" {
            deploymentNode "VM: azure-devops-app" {
                containerInstance azuredevops.appazuredevops
            }
            deploymentNode "VM: azure-devops-db" {
                containerInstance azuredevops.dbazuredevops
            }
            deploymentNode "VM: azure-devops-agent" {
                containerInstance azuredevops.agentazuredevops
            }
        }
        deploymentNode "LoadBalancer" {
            containerInstance azuredevopsvip.vipazuredevops1
            containerInstance azuredevopsvip.vipazuredevops2
        }
        deploymentNode "OpenSearch" {
            containerInstance azuredevops.opsazuredevops
        }
    }
    deploymentNode "External Services" {
        deploymentNode "F5 Load Balancer" {
            containerInstance azuredevopsvip.vipazuredevops1
            containerInstance azuredevopsvip.vipazuredevops2
        }
    }
    deploymentNode "Monitoring" {
        deploymentNode "Prometheus" {
            containerInstance systemprometheus.prometheus
        }
        deploymentNode "Grafana" {
            containerInstance systemgrafana.grafana
        }
        deploymentNode "Zabbix" {
            containerInstance systemzabbix.globallzabbix
        }
        deploymentNode "Splunk" {
            containerInstance systemsplunk.splunk
        }
        deploymentNode "Alerta" {
            containerInstance systemalerta.alerta
        }
    }
    deploymentNode "Integrations" {
        deploymentNode "Jira" {
            containerInstance systemjira.jira
        }
        deploymentNode "Email" {
            containerInstance sytememail.email
        }
    }
    deploymentNode "NFS Storage" {
        deploymentNode "NFS for Azure DevOps" {
            containerInstance systemNFS.NFSAD
        }
    }
}