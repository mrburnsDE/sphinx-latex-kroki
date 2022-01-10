FROM sphinxdoc/sphinx-latexpdf
RUN apt-get update && \
	apt-get --no-install-recommends -y install  \
	texlive-latex-extra \
	texlive-fonts-extra \
	texlive-font-utils \
	ghostscript \
	inkscape  \
	python3-cairosvg  \
	plantuml
WORKDIR /docs
ADD requirements.txt /docs
RUN pip3 install -r requirements.txt
