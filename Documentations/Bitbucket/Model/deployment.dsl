deploymentEnvironment "Production" {
    deploymentNode "Kubernetes Cluster" {
        deploymentNode "Namespace: bitbucket" {
            deploymentNode "Pod: bitbucket-app" {
                containerInstance bitbucket.appbitbucket
            }
            deploymentNode "Pod: bitbucket-db" {
                containerInstance bitbucket.dbbitbucket
            }
            deploymentNode "Pod: bitbucket-opensearch" {
                containerInstance bitbucket.opsbitbucket
            }
        }
        deploymentNode "LoadBalancer" {
            containerInstance bitbucketvip.vipbitbucket1
            containerInstance bitbucketvip.vipbitbucket2
        }
    }
}
