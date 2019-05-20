#!/bin/bash

source config.sh
htmlEscapeStr='s/[\/&]/\\&/g'
indexFile="../rasterflow-seahorse/frontend/client/index.html"
findString='</head>'
findEscaped=$(sed "$htmlEscapeStr" <<< "$findString")
replace="<script>if(window){window.uuid=\"$INSTANCE_ID\";}else{var window={uuid: \"$INSTANCE_ID\"}}</script></head>"
replaceEscaped=$(sed "$htmlEscapeStr" <<< "$replace")

if ! grep -q window.uuid $indexFile; then
  sed -i -e "s/$findEscaped/$replaceEscaped/g" $indexFile
fi
