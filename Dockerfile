FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3-pip\
 && pip install sphinx recommonmark sphinx-typlog-theme cloud_sptheme sphinx_markdown_tables sphinxcontrib.kroki
