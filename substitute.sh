#!/bin/bash

version="$1"            # e.g. 10.0
major="${version%%.*}"  # e.g. 10

placeholderstarts="\|(version)" # start of placeholder strings

replace_placeholders() {
    name=$1
    echo "substituting $name"
    sed -i -E "s/\|version\|/$version/g;" \
            $name
    cat $name | grep -E $placeholderstarts
}

find_and_replace_placeholders() {
    pattern=$1
    for name in $(find . -type f -name "$pattern" -exec grep -lE $placeholderstarts {} \;) ; do
        # echo $name
        replace_placeholders $name
    done
}

# switch to directory of script
pushd $(dirname "${BASH_SOURCE[0]}") 2>&1 1> /dev/null

echo "$0 started in $(pwd)"
cd source/

find_and_replace_placeholders "*.rst"
find_and_replace_placeholders "*.dot"
find_and_replace_placeholders "*.yaml"

popd 2>&1 1> /dev/null

echo "$0 complete."

