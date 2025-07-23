workspace "Devops" {
    !identifiers hierarchical
    model {
        # modele
        !include SonarQube/Model/elements.dsl
        # relacje
        !include SonarQube/Model/relations.dsl
    
    }
    views {
        !include SonarQube/Model/containers-views.dsl
    }
}