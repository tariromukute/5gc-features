FROM squidfunk/mkdocs-material
RUN pip install plantuml-markdown
RUN pip install mkdocs-markdownextradata-plugin
RUN pip install mkdocs-macros-plugin
RUN pip install mike