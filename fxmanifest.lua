fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game 'rdr3'
lua54 'yes'

name 'bcc-animal-data'
description 'Shared animal catalog for BCC RedM resources'
author 'BCC Team'
version '1.0.0'

shared_scripts {
    'shared/animals.lua',
    'shared/api.lua'
}
