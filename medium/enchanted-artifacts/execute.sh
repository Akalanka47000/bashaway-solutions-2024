DOCKERFILE="./src/Dockerfile"

replacement_content=$(awk -F= '{print "ARG " $1 "\nENV " $1 " \\$" $1 "\\n"}' ./src/.env.example | grep -v '^#' | grep -v '^\s*$')

perl -i -pe 'BEGIN {undef $/;} s/# ENVIRONMENT VARIABLE PLACEHOLDER\n/'"$replacement_content"'/s' "$DOCKERFILE"
