  -- @Date:   2017-08-07
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-08-07
  
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

-- Scripts
server_script '@mysql-async/lib/MySQL.lua'

client_script '@essentialmode/server/player/wrappers.lua'

server_script 'server.lua'

client_scripts {
  "config.lua",
  "client.lua",
}