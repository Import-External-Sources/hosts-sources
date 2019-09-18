#!/usr/bin/env bash

# This script is intended to list all active lists from the data/
# directory for easier imports from external sources....
# Happy havesting :)

truncate -s 0 "$CI_PROJECT_DIR/sources.list"

for lists in `find data/ -type f -name domain.list`
do
	printf "$CI_PROJECT_URL/raw/master/$lists\n" >> "$CI_PROJECT_DIR/sources.list"
done
