shared_script "@EC_AC/shared.lua" 
 client_script "@EC_AC/shared1.js" 
 server_script "@EC_AC/shared2.js"


fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'QBCore Reminder System'
version '1.0.0'

server_script {
    'config.lua',
    'server.lua'
}

shared_script '@qb-core/shared/locale.lua'
