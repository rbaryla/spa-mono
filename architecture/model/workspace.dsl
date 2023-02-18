workspace "Architektura systemu" "Architektura systemu sklepu internetowego opartego na technologii Single Page Application oraz Serwerless" {

  model {
    customer = person "Klient sklepu"
    !include enterprise/spa-shop.dsl

    developer = person "Programista" "" "External"
    gitHub = softwareSystem "GitHub" "System zarządzający procesem aktualizacji oprogramowania sklepu. Repozytorium kodu." "External"
    payU = softwareSystem "PayU" "System płatności internetowych" "External"
    inpost = softwareSystem "inPost Widget" "Wyszukiwarka paczkomatów" "External"

    customer -> spaShopSystem "Dokonuje zakupów on-line"
    gitHub -> spaShopSystem "Aktualizue aplikację CI/CD"
    developer -> gitHub "Aktualizuje kod aplikacji"
    spaShopSystem -> payU "Przekazuje informacje naleznej płatności"
    customer -> payU "Dokonuje płatności"
    payU -> spaShopSystem "Informuje o statusie płatności"
    customer -> inpost "Wyszukuje paczkomat"
    inpost -> spaShopSystem "Przekazuje dane wybranego paczkomatu"
  }

  views {
    systemlandscape "SystemLandscapeView" "Panoramiczny widok aplikacji" {
        include *
    }

    !include views/systemContext.dsl

    // Widok kontenerów
    !include views/container.dsl

    // Dodany domyślny szablon oraz zestaw ikon dla GCP
    themes https://static.structurizr.com/themes/default/theme.json https://static.structurizr.com/themes/google-cloud-platform-v1.5/theme.json

    styles {
      element "External" {
        background #999999
        color #ffffff
      }
    }
  }

}
