enterprise "Sklep SPA (Single Page Application)" {
  !include softwareSystem/spaShopSystem.dsl

  administrator = person "Administrator systemu" "Administurje systemem"

  administrator -> spaShopSystem "Administruje"
}
