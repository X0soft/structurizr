# Relacje między kontenerami Azure DevOps
azuredevops.appazuredevops -> azuredevops.dbazuredevops "Zapisuje i odczytuje dane"
azuredevops.appazuredevops -> azuredevops.agentazuredevops "Zleca zadania CI/CD"
azuredevops.agentazuredevops -> azuredevops.appazuredevops "Wysyła wyniki zadań"

# Integracja z infrastrukturą (VIP)
azuredevops.appazuredevops -> azuredevopsvip.vipazuredevops1 "Obsługuje ruch przez VIP 1"
azuredevops.appazuredevops -> azuredevopsvip.vipazuredevops2 "Obsługuje ruch przez VIP 2"

# Przykładowa integracja z systemami zewnętrznymi
azuredevops.appazuredevops -> bitbucket.appbitbucket "Pobiera kod źródłowy"
azuredevops.appazuredevops -> systemjira.jira "Wysyła zgłoszenia błędów"
azuredevops.appazuredevops -> systemsplunk.splunk "Wysyła logi"
azuredevops.appazuredevops -> systemprometheus.prometheus "Eksportuje metryki"
