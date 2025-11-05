deploymentEnvironment "Production" {
    deploymentNode "Kubernetes Cluster" {
        deploymentNode "Namespace: artifactory" {
            deploymentNode "Pod: artifactory-app" {
                containerInstance artifactoryapp.appartifactory
            }
            deploymentNode "Pod: artifactory-db" {
                containerInstance artifactoryapp.dbartifactory
            }
            deploymentNode "Pod: artifactory-proxy" {
                containerInstance artifactoryapp.proxyartifactory
            }
        }
    }
}