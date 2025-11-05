# Relacje między systemami zewnętrznymi a wewnętrznymi

# Storage / NFS
artifactoryapp.appartifactory -> systemNFS.NFSAF "Montuje zasób NFS"
bitbucket.appbitbucket -> systemNFS.NFSBB "Używa zasobu NFS"
teamcity.appteamcity -> systemNFS.NFSTC "Używa zasobu NFS"

# VCS / CI / Issue tracking
// artifactoryapp.appartifactory -> external.gitlab "Pobiera/publikuje artefakty"
// azuredevops.appazuredevops -> external.gitlab "Pobiera kod źródłowy"
// bitbucket.appbitbucket -> external.gitlab "Integracja repozytoriów"
// teamcity.appteamcity -> external.gitlab "Pobiera kod źródłowy"

// azuredevops.appazuredevops -> external.jira "Tworzy zgłoszenia"
// bitbucket.appbitbucket -> external.jira "Linkuje commity do ticketów"
// teamcity.appteamcity -> external.jira "Tworzy zgłoszenia"

# Logging / Monitoring / Alerting
// sonarqubeapp.appsonarqube -> external.splunk "Wysyła logi"
// artifactoryapp.appartifactory -> external.splunk "Wysyła logi"
// azuredevops.appazuredevops -> external.splunk "Wysyła logi"
// teamcity.appteamcity -> external.splunk "Wysyła logi"
// bitbucket.appbitbucket -> external.splunk "Wysyła logi"

// sonarqubeapp.appsonarqube -> external.prometheus "Eksportuje metryki"
// azuredevops.appazuredevops -> external.prometheus "Eksportuje metryki"
// teamcity.appteamcity -> external.prometheus "Eksportuje metryki"

// external.grafana -> external.prometheus "Pobiera metryki z Prometheusa"
// external.email -> external.splunk "Otrzymuje alerty z systemu logowania"
