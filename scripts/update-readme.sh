#!/usr/bin/env bash

set -eu -o pipefail

function get-ebuilds {
    hg manifest | grep -P ".ebuild$" | sort
}

function get-description { # $1: PATH
    gawk 'match($0, /DESCRIPTION="([^"]+)"/, res) { print res[1] }' "$1"
}

function create-listing {
    local prev_cat="" description category package name
    while IFS="/" read category package name; do
        if [[ "$category" != "$prev_cat" ]]; then
            echo -e "\n### $category\n"
            prev_cat="$category"
        fi
        description=$(get-description "$category/$package/$name")
        printf "* __%s__: %s\n" "$package" "$description"
    done < <(get-ebuilds)
}

function update-readme {
    sed -i '/^## Contents/,$ d' "$1"
    echo -e "## Contents" >> "$1"
    create-listing >> "$1"
}

update-readme "$1"

