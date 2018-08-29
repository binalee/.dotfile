# run ls every time pwd changes
jcurl() {
    curl -HAccept:application/json "$@" | python -mjson.tool | pygmentize -ljs
}

findi() { find -iname "*${1}*" }
rand() { echo $((($RANDOM % ${1:-2})+1)) }
