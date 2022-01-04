#!/bin/bash
mkdir -p obj

# Remove comments from hosts file
cat hosts | grep -v '^#' | sed -e '/^$/d' | sort | uniq > obj/hosts-uncommented

N_HOSTS=$(wc -l obj/hosts-uncommented | cut -d' ' -f1)

echo $N_HOSTS domains found

# Generate ublock filter list
## Generate Google search removals
paste -d '' <(yes 'google.*##.g:has(a[href*="' | head -n $N_HOSTS) obj/hosts-uncommented <(yes '"])' | head -n $N_HOSTS) > obj/hosts-google

## Generate DuckDuckGo search removals
paste -d '' <(yes 'duckduckgo.*##.results > div:has(a[href*="' | head -n $N_HOSTS) obj/hosts-uncommented <(yes '"])' | head -n $N_HOSTS) > obj/hosts-ddg

# Concat and output
mkdir -p output
cat obj/hosts-google obj/hosts-ddg > output/filterlist.txt

rm -rf obj
