deploymentEnvironment "Production" {
    deploymentNode "Kubernetes Cluster" {
        deploymentNode "Namespace: xray" {
            deploymentNode "Pod: xray-app" {
                containerInstance xrayapp.appxray
            }
            deploymentNode "Pod: xray-db" {
                containerInstance xrayapp.dbxray
            }
        }
        deploymentNode "LoadBalancer" {
            containerInstance xrayvip.vipxray1
            containerInstance xrayvip.vipxray2
        }
    }
}
