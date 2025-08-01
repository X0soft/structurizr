deploymentEnvironment "Production" {
    deploymentNode "Kubernetes Cluster" {
        deploymentNode "Namespace: artifactory" {
            deploymentNode "Pod: artifactory-app" {
                containerInstance artifactory.appartifactory
            }
            deploymentNode "Pod: artifactory-db" {
                containerInstance artifactory.dbartifactory
            }
            deploymentNode "Pod: artifactory-proxy" {
                containerInstance artifactory.proxyartifactory
            }
        }
    }
}