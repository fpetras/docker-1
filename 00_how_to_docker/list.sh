for i in {1..9} ; do echo "\033[1;37m0$i\033[0m:" && echo "\033[1;31m`cat "0$i"`\033[0m" ; done
for i in {10..34} ; do echo "\033[1;37m$i\033[0m:" && echo "\033[1;31m`cat "$i"`\033[0m" ; done
