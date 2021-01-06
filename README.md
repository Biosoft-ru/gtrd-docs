# Documentation for the GTRD database 
Warning - under construction.



## For developer

1. Install Shinx.
<br/>```pip install sphinx```

2. Install Kroki - it allows to create different diagrams from text files
<br/>```pip install sphinxcontrib-kroki```

3. Install recommonmark - it allows to use usual markdown for pages.
So it is not needed to convert already written pages.
<br/>```pip install recommonmark```

4. ```make html``` - builds the project.
You can open in the browser generated html files fro 'target' directory.

5. When you pull you chages int github, the documentation on readthedocs will be automatically rebuilded due to hit webhook.

6. Open link
<br/>https://gtrd.readthedocs.io
<br/>https://gtrd.rtfd.io

### References 

#### Kroki - to build different diagrams
https://kroki.io/
https://github.com/sphinx-contrib/kroki

#### Markdown 
http://recommonmark.readthedocs.org/
https://recommonmark.readthedocs.io/en/latest/auto_structify.html

### Alternatives 

Diagrams - https://github.com/sphinx-contrib/plantuml

Markdown - https://myst-parser.readthedocs.io

Themes
*  https://sphinx-themes.org/ - collection of Spinx themes
* [sphinx-material](https://bashtage.github.io/sphinx-material/index.html) - responsive Material Design theme
* [sphinx-rtd-theme](https://sphinx-rtd-theme.readthedocs.io/en/stable/) - official Read the Docs theme
* [sphinx-typlog-theme](https://sphinx-typlog-theme.readthedocs.io/en/latest/) - a sphinx theme designed by Typlog
* [pydata-sphinx-theme](https://pydata-sphinx-theme.readthedocs.io/en/latest/) - official PyData theme



