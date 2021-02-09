#!/bin/bash

mkdir out && mkdir out/concept
cp -r $(pwd)/concept/. $(pwd)/out/concept/

for file in $(find concept -type f);
  do
  rapper --input=turtle --input-uri=- --output=rdfxml $file > "out/$(echo "$file" | sed "s/ttl/xml/g")"
  rapper --input=turtle --input-uri=- --output=json $file > "out/$(echo "$file" | sed "s/ttl/jsonld/g")"
done
