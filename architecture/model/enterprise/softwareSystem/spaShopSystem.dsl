spaShopSystem = softwareSystem "System SPA Shop" "Sklep internetowy oparty na technologii SPA oraz architekturze serwerless" {
    // todo: add containers for hrontend application and firebase functions
    firebaseHostingContainer = container "Hosting kontentu statycznego" "Dostrcza statyczny kontent aplikacji"

    customer -> firebaseHostingContainer "Odwiedza adres domeny głównej sklepu"
    administrator -> firebaseHostingContainer "Odwiedza ares subdomeny administracyjnej sklepu"

    firebaseFirestoreContainer = container "Baza danych czasu rzeczywistego" "Utrzymuje stan aplikacji"

    customer -> firebaseFirestoreContainer "Inicjuje sesję"

}