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

4. Install theme (now selecting for 2 variants 'typlog' or 'cloud')
<br/>```pip install sphinx-typlog-theme```
<br/>```pip install cloud_sptheme```

5. ```make html``` - builds the project.
You can open in the browser generated html files fro 'target' directory.

6. When you pull you chages int github, the documentation on readthedocs will be automatically rebuilded due to hit webhook.

7. Open link
<br/>https://gtrd.readthedocs.io
<br/>https://gtrd.rtfd.io

### References 

#### Sphinx
https://www.sphinx-doc.org/en/master/contents.html
<br/>https://www.sphinx-doc.org/en/master/usage/quickstart.html

#### RST
https://www.sphinx-doc.org/en/master/usage/restructuredtext/
<br/>https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html
<br/>https://runawayhorse001.github.io/SphinxGithub/rtxt.html

#### Kroki - to build different diagrams
https://kroki.io/
<br/>https://github.com/sphinx-contrib/kroki

#### Markdown 
http://recommonmark.readthedocs.org/
<br/>https://recommonmark.readthedocs.io/en/latest/auto_structify.html

https://github.com/ryanfox/sphinx-markdown-tables

#### Cloud theme
https://cloud-sptheme.readthedocs.io/en/latest/
<br/>https://cloud-sptheme.readthedocs.io/en/latest/lib/cloud_sptheme.ext.table_styling.html#module-cloud_sptheme.ext.table_styling


### Alternatives 

Diagrams - https://github.com/sphinx-contrib/plantuml

Markdown - https://myst-parser.readthedocs.io

Themes
*  https://sphinx-themes.org/ - collection of Spinx themes
* [sphinx-material](https://bashtage.github.io/sphinx-material/index.html) - responsive Material Design theme
* [sphinx-rtd-theme](https://sphinx-rtd-theme.readthedocs.io/en/stable/) - official Read the Docs theme
* [sphinx-typlog-theme](https://sphinx-typlog-theme.readthedocs.io/en/latest/) - a sphinx theme designed by Typlog
* [pydata-sphinx-theme](https://pydata-sphinx-theme.readthedocs.io/en/latest/) - official PyData theme



