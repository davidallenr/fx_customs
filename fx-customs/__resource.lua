  -- @Date:   2017-07-30
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-26
  
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

-- Scripts
server_script '@mysql-async/lib/MySQL.lua'

server_script '@supertable/superwrapper.lua'

server_script 'server.lua'

client_scripts {
  "config.lua",
  "client.lua",
  "menu.lua",
}