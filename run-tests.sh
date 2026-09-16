#!/bin/sh
# Compile toutes les classes du projet, puis lance les tests JUnit 6.
#
# Usage:  ./run-tests.sh            lance toutes les classes de test
#         ./run-tests.sh BoxTest    lance seulement BoxTest

J="junit-platform-console-standalone-6.1.3.jar"

if ! ls *.java > /dev/null 2>&1; then
    echo "Aucun fichier .java dans ce dossier." >&2
    exit 1
fi

javac -cp ".:$J" -encoding UTF-8 *.java || exit 1

if [ $# -gt 0 ]; then
    SELECTION=""
    for classe in "$@"; do
        SELECTION="$SELECTION --select-class $classe"
    done
else
    SELECTION="--scan-class-path"
fi

# shellcheck disable=SC2086
java -jar "$J" execute --class-path . $SELECTION
