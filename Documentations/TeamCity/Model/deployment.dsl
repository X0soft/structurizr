deploymentEnvironment "Production" {
    deploymentNode "Kubernetes Cluster" {
        deploymentNode "Namespace: teamcity" {
            deploymentNode "Pod: teamcity-app" {
                containerInstance teamcity.appteamcity
            }
            deploymentNode "Pod: teamcity-db" {
                containerInstance teamcity.dbteamcity
            }
            deploymentNode "Pod: teamcity-agent" {
                containerInstance teamcity.agentteamcity
            }
        }
        deploymentNode "LoadBalancer" {
            containerInstance teamcityvip.vipteamcity1
            containerInstance teamcityvip.vipteamcity2
        }
    }
}