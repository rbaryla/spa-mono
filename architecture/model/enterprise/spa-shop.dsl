enterprise "Sklep SPA (Single Page Application)" {
  spaShopSystem = softwareSystem "System SPA Shop" "Sklep internetowy oparty na technologii SPA oraz architekturze serwerless"

  administrator = person "Administrator systemu" "Administurje systemem"

  administrator -> spaShopSystem "Administruje"
}
