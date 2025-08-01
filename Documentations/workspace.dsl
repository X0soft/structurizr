workspace "Devops" {
    !identifiers hierarchical
    model {
        # elements 
        !include Artifactory/Model/elements.dsl
        !include AzureDevOps/Model/elements.dsl
        !include Bitbucket/Model/elements.dsl
        !include External/Model/elements.dsl
        !include Infra/Model/elements.dsl
        !include Pact/Model/elements.dsl
        !include SonarQube/Model/elements.dsl
        !include Teamcity/Model/elements.dsl
        !include Xray/Model/elements.dsl
        # relacje
        !include Artifactory/Model/relations.dsl
        !include AzureDevOps/Model/relations.dsl
        !include Bitbucket/Model/relations.dsl
        !include External/Model/relations.dsl
        !include Infra/Model/relations.dsl
        !include Pact/Model/relations.dsl
        !include SonarQube/Model/relations.dsl
        !include Teamcity/Model/relations.dsl
        !include Xray/Model/relations.dsl
        # deployment
#        !include Artifactory/Model/deployment.dsl
#        !include AzureDevOps/Model/deployment.dsl
#        !include Bitbucket/Model/deployment.dsl
#        !include External/Model/deployment.dsl
#        !include Infra/Model/deployment.dsl
#        !include Pact/Model/deployment.dsl
#        !include SonarQube/Model/deployment.dsl
#        !include Teamcity/Model/deployment.dsl
#        !include Xray/Model/deployment.dsl

    }
    views {
        !include SonarQube/Model/views.dsl  
        !include Artifactory/Model/views.dsl
        !include AzureDevOps/Model/views.dsl
        !include Bitbucket/Model/views.dsl
        !include External/Model/views.dsl
        !include Infra/Model/views.dsl
        !include Pact/Model/views.dsl
        !include Teamcity/Model/views.dsl
        !include Xray/Model/views.dsl

#    theme default
    }
}
}