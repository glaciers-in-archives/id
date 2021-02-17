#!/bin/bash

mkdir out && mkdir out/concept

for dir in $(find concept -type d);
  do
  mkdir out/$dir
done

for file in $(find concept -type f);
  do
  rapper --input=turtle --input-uri=- --output=rdfxml-abbrev $file > "out/$(echo "$file" | sed "s/ttl/xml/g")"
done
