resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page "html/login/index.html"

client_scripts {
    'utilities/chat_c.lua',
    'accounts/account_management_client.lua',
    'displays/hud_client.lua',
    'functions/functions_shared.lua',
    'data/elementdata_client.lua',
    'spawnsystem/spawnsystem_client.lua',
    'displays/infobox_client.lua',
    'basevents/vehiclechecker.lua',
    'basevents/server.lua',
    'faction/faction_markers_client.lua',
    'faction/lspd/duty_client.lua'
}

server_scripts {
    "utilities/functions_s.lua",
    "accounts/account_management_server.lua",
    "@mysql-async/lib/MySQL.lua",
    "functions/functions_server.lua",
    'functions/functions_shared.lua',
    'data/elementdata_server.lua',
    'basevents/server.lua'
}

files {
    'html/loadingscreen/index.html',
    'html/loadingscreen/style.css',
    'html/loadingscreen/background.jpg',
    'html/login/login.mp3',
    'html/login/index.html',
    'html/login/index.css',
    'html/login/index.js'
}

loadscreen 'html/loadingscreen/index.html'
