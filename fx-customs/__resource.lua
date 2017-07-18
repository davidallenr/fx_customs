  -- @Date:   2017-07-18
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-18
  
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

dependency 'ft_menuBuilder'

-- Scripts
client_scripts {
  "config.lua",
  "fx_initCL.lua",
  "client.lua",
}

server_script '@mysql-async/lib/MySQL.lua'

server_script '@supertable/superwrapper.lua'

server_scripts {
	"server.lua",
}