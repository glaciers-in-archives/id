# GiA Concepts

This repository contains definitions for concepts specific to Glaciers in Archives. Generation of RDF-XML/JSON-LD/HTML representations of these definitions is managed in the GiA website repository.

## Validating

```bash
find concept -type f -exec rapper --input=turtle --count --input-uri=- {} \;
```
