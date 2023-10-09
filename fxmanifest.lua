fx_version 'cerulean'
author '! marcinhu.#6158'
Description 'm-HotWheels'
game 'gta5'
lua54 'yes'

shared_scripts {
	'configs/**.lua',
	'@ox_lib/init.lua',---Need esx
}

client_scripts {
	'./client/*'
}

server_scripts {
	'./server/*'
}
