systemNFS = softwaresystem "External systems" {
    NFSBB = container "NFS zasób dla Bitbucket" {
        technology "NFS"
        url "https://tfsm.domena.com"
    }
    NFSAF = container "NFS zasób dla Artifactory" {
        technology "NFS"
        url "https://tfsm.domena.com"
    }
    NFSTC = container "NFS zasób dla TeamCity" {
        technology "NFS"
        url "https://tfsm.domena.com"
    }
}
systemzabbix = softwaresystem "Monitoring zabbix" {
    globallzabbix = container "Zabbix" {
        technology "zabbix"
        url "https://zabbix.domena.com"
    }
}
systemsplunk  = softwaresystem "Monitoring splunk" {
    splunk = container "Monitoring splunk" {
        technology "splunk"
        url "https://splunk.domena.com"
    }
}
systemjira = softwaresystem "Jira" {   
    jira = container "Jira" {
        technology "Jira"
        url "https://jira.domena.com"
    }
}
systemprometheus = softwaresystem "Monitoring Prometheus" {
    prometheus = container "Prometheus" {
        technology "Prometheus"
        url "https://prometheus.domena.com"
    }
}
systemgrafana = softwaresystem "Grafana" {
    grafana = container "Grafana" {
        technology "Grafana"
        url "https://grafana.domena.com"
    }
}
sytememail = softwaresystem "Email" {
    email = container "Email" {
        technology "SMTP"
        url "https://mail.domena.com"
    }
}
systemalerta = softwaresystem "Alerta" {
    alerta = container "Alerta" {
        technology "Alerta"
        url "https://alerta.domena.com"
    }
}