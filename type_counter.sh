for i in $(seq 1 $1); do a=$(cat results.txt | grep -v 'not_in_wordnet' | grep -v 'KeyError' | egrep "^""$2" | awk -F ',' '{ print $5}' | egrep "$i"'$' | wc -l); echo "$i" "-" "$a" ; done 