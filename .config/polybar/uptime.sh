#!/bin/bash - 
#===============================================================================
#
#          FILE: uptime.sh
# 
#         USAGE: ./uptime.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: DEBABRATA CHOUDHURY (https://lonewolf38.github.io), 
#  ORGANIZATION: 
#       CREATED: 05/28/2018 00:35
#      REVISION:  ---
#===============================================================================
uptime --pretty | sed 's/up //' | sed 's/\ years\?,/y/' | sed 's/\ days\?,/d/' | sed 's/\ hours\?,\?/h/' | sed 's/\ minutes\?/m/'
