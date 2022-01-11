# Build Documentation with sphinx and kroki 
## Motivation
I always loved to write documentation with [sphinx-doc](https://www.sphinx-doc.org), but i hated to setup my environment everytime i reinstalled my laptop. Thanks to docker this isn't necessary anymore. 
Based on the efforts of the following projects i composed a mashine which fits to my requirements.
- [sphinx-doc](https://www.sphinx-doc.org)
- [Kroki](https://docs.kroki.io/kroki/)
- [Plantuml](https://plantuml.com)
- [Excalidraw](https://excalidraw.com/)
- [sphinxcontrib-plantuml](https://pypi.org/project/sphinxcontrib-plantuml/)
- [sphinx-contrib-kroki](https://github.com/sphinx-contrib/kroki)
- [sphinxcontrib-svg2pdfconverter](https://pypi.org/project/sphinxcontrib-svg2pdfconverter/)

The base Docker-Image is [sphinxdoc/sphinx-latexpdf](https://hub.docker.com/r/sphinxdoc/sphinx-latexpdf)

## Usage
To build your own Docker-Image use 

`docker build --tag sphinx-latex-kroki:forme .`

You can also pull 

``docker pull mrburnsde/sphinx-latex-kroki`` 

from dockerhub.

To build your own documentation to pdf use 

``docker run --rm -v ${PWD}:/docs docker.io/mrburnsde/sphinx-latex-kroki make latexpdf``
 
 in the cloned directory.

 | WARNING: take care for the correct tag
 | --- |


