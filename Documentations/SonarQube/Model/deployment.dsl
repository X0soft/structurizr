// deploymentEnvironment "Production" {
//     deploymentNode "Kubernetes Cluster" {
//         deploymentNode "Namespace: sonarqube" {
//             deploymentNode "Pod: sonarqube-app" {
//                 containerInstance sonarqubeapp.appsonarqube
//             }
//             deploymentNode "Pod: sonarqube-db" {
//                 containerInstance sonarqubeapp.dbsonarqube
//             }
//             deploymentNode "Pod: sonarqube-elasticsearch" {
//                 containerInstance sonarqubeapp.elksonarqube
//             }
//             deploymentNode "Pod: sonarqube-agent" {
//                 containerInstance sonarqubescanner.scannersonarqube
//             }
//         }
//         deploymentNode "LoadBalancer" {
//             containerInstance sonarqubevip.vipsonarqube1
//             containerInstance sonarqubevip.vipsonarqube2
//         }
//     }
// }