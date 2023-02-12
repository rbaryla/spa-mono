workspace "Architektura systemu" "Architektura systemu sklepu internetowego opartego na technologii Single Page Application oraz Serwerless" {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System"

        user -> softwareSystem "Uses"
    }

    views {
        !include views/systemContext.dsl
        // Dodany domyślny szablon oraz zestaw ikon dla GCP
        themes https://static.structurizr.com/themes/default/theme.json https://static.structurizr.com/themes/google-cloud-platform-v1.5/theme.json
    }

}
