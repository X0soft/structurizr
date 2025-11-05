/* Container view - jeden widok z podziałem na grupy: aplikacja, VIP F5, Scanner */
container sonarqubeapp {
    title "SonarQube — Architecture Overview"
    description "Kompletny widok SonarQube z podziałem na warstwy: aplikacja, VIP F5, Scanner"
    
    # Warstwa aplikacji (SonarQube)
    include sonarqubeapp.appsonarqube
    include sonarqubeapp.dbsonarqube
    include sonarqubeapp.elksonarqube
    
    # VIP F5 (Load Balancers) - jako jedna grupa
    include sonarqubevip.vipsonarqube1
    include sonarqubevip.vipsonarqube2
    
    # SonarQube Scanner
    include sonarqubescanner.scannersonarqube
    
    autolayout lr
    properties {
        "documentation" "./docs/sonarqube-overview.md"
        "docUrl" "https://wiki.domena.com/sonarqube-overview"
        "relatedViewFile" "SonarQube/Model/landscape.dsl"
    }
}
