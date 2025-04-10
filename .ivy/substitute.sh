#!/bin/bash

newVersion="$1" # e.g. 14.0
oldVersion="$2" # e.g. 13.1

echo "migrating doc from ${oldVersion} to ${newVersion}"

placeholderstarts="([:|/]${oldVersion})" # start of placeholder strings

replace_placeholders() {
    name=$1
    echo "substituting $name"
    sed -i "s|:${oldVersion}|:${newVersion}|g; \
            s|\/${oldVersion}\/|\/${newVersion}\/|g;" \
            $name
    cat $name | grep ${newVersion}
}

find_and_replace_placeholders() {
    pattern=$1
    for name in $(find . -type f -name "$pattern" -exec grep -lE $placeholderstarts {} \;) ; do
        # echo $name
        replace_placeholders $name
    done
}

# switch to repo root
versionDir=$(dirname "${BASH_SOURCE[0]}")
pushd "${versionDir}/.." 2>&1 1> /dev/null

echo "$0 started in $(pwd)"
cd source/

find_and_replace_placeholders "*.rst"
find_and_replace_placeholders "*.dot"
find_and_replace_placeholders "*.yaml"

popd 2>&1 1> /dev/null

echo "$0 complete."

