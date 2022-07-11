fx_version 'adamant'

game 'gta5'

description 'Inventory HUD ESX 1.2'

version '2.3.1'

ui_page "html/ui.html"

client_scripts {
  "@es_extended/locale.lua",
  "client/main.lua",
  "client/trunk.lua",
  "client/property.lua",
  "client/player.lua",
  "client/shop.lua",
  "client/pedagang.lua",
  "client/motels.lua",
  "client/beds.lua",
  "client/biker.lua",
  "client/mafia.lua",
  "client/cartel.lua",
  "client/gang.lua",
  "client/vault.lua",
  "client/gudang.lua",
  "client/police.lua",
  "client/storage.lua",
  "client/mechanic.lua",
  "client/ambulance.lua",
  "locales/cs.lua",
  "locales/en.lua",
  "locales/es.lua",
  "locales/fr.lua",
  "config.lua"
}

server_scripts {
  "@mysql-async/lib/MySQL.lua",
  "@es_extended/locale.lua",
  "server/main.lua",
  "server/storage.lua",
  "locales/cs.lua",
  "locales/en.lua",
  "locales/es.lua",
  "locales/fr.lua",
  "config.lua"
}

files {
  "html/ui.html",
  "html/css/ui.css",
  "html/css/jquery-ui.css",
  "html/js/inventory.js",
  "html/js/config.js",
  -- JS LOCALES
  "html/locales/cs.js",
  "html/locales/en.js",
  "html/locales/es.js",
  "html/locales/fr.js",
  -- IMAGES
  "html/img/bullet.png",
  -- ICONS
  'html/img/items/*.png'
}