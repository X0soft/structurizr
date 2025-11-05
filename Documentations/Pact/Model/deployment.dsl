deploymentEnvironment "Production" {
    deploymentNode "Kubernetes Cluster" {
        deploymentNode "Namespace: pact" {
            deploymentNode "Pod: pact-app" {
                containerInstance pactapp.apppact
            }
            deploymentNode "Pod: pact-db" {
                containerInstance pactapp.dbpact
            }
        }
        deploymentNode "LoadBalancer" {
            containerInstance pactvip.vippact1
            containerInstance pactvip.vippact2
        }
    }
}
