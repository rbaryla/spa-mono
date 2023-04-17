enterprise "Sklep SPA (Single Page Application)" {

  administrator = person "Administrator systemu" "Administurje systemem"
  !include softwareSystem/spaShopSystem.dsl

  administrator -> spaShopSystem "Administruje"
}
