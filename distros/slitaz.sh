#!/bin/bash

#----------------------------------------------------------------------------------|
#                                                                                  |
#   '||'''|. '||'''|.              ||                  '\\  //`                    |
#    ||   ||  ||   ||  ''          ||                    \\//                      |
#    ||   ||  ||   ||  ||  ('''' ''||''  '||''| .|''|,    ><                       |
#    ||   ||  ||   ||  ||   `'')   ||     ||    ||  ||   //\\                      |
#   .||...|' .||...|' .||. `...'   `|..' .||.   `|..|' .//  \\.                    |
#                                                                                  |
#----------------------------------------------------------------------------------|
#                        BPSYS (c) 2014 - GPL V3                                   |
#----------------------------------------------------------------------------------|
#       This program is free software: you can redistribute it and/or modify       |
#       it under the terms of the GNU General Public License as published by       |
#       the Free Software Foundation, either version 3 of the License, or          |
#       (at your option) any later version.                                        |
#                                                                                  |
#       This program is distributed in the hope that it will be useful,            |
#       but WITHOUT ANY WARRANTY; without even the implied warranty of             |
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              |
#       GNU General Public License for more details.                               |
#                                                                                  |
#----------------------------------------------------------------------------------|
#                      IfTux.WordPress.Com                                         |
#----------------------------------------------------------------------------------|
function DDD {
descargaren=`zenity --file-selection --title="Guardar En..." --save --directory `
urldedescarga="http://mirror.slitaz.org/iso/4.0/slitaz-4.0.iso"
cd $descargaren
wget -t 50 $urldedescarga
zenity --info --text="Descarga terminada con éxito!!!"
}

function DESCMAIN {
archinfo=`dirname $0`/slitaz.html
zenity --text-info \
       --title="Descargar Slitaz" \
       --filename=$archinfo \
       --html \
       --width=550 \
       --height=550 \
       --ok-label="Descargar" \
       --cancel-label="Salir"
case $? in
    0)
       DDD
       ;;
    1)
       zenity --info --text="la descarga a sido cancelada "
       ;;
esac
}
DESCMAIN
