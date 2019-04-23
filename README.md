# read-the-docs-tryout

## build

    # first download static images
    mvn clean package

    # generate doc
    docker build -t doc-builder . && docker run -v $(pwd)/..:/ivy-core doc-builder make html && firefox ./build/html/index.html

Alternatively you can install python, pip and pip packages directly on your system.
Check `Dockerfile` to see what is needed.

## dev environment setup

* Visual Studio Code
  * Plugin lextudio.restructuredtext for syntax highlighting and code completion.
  * Plugin rewrap to wrap lines to 80 characters with ALT+Q

## TODO

* Check axon.ivy
* introduce a version switcher
* search direct on the correct section
* search with filter for chapters

## References

* http://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html
* https://www.sphinx-doc.org/en/master/index.html
* https://sphinx-rtd-theme.readthedocs.io/en/latest/demo/demo.html
* https://raw.githubusercontent.com/rtfd/sphinx_rtd_theme/master/docs/demo/demo.rst
* ghttps://rest-sphinx-memo.readthedocs.io/en/latest/ReST.html#tables


## Guidelines

- GUI elements
  :guilabel:`Next` button'

- Files and Directories
  :file:`docker-entrypoint.sh`
  :file:`[engineDir]/configuration/defaults`

- Inline code
  :code:`docker run -p 8080:8080 axonivy/axonivy-engine:dev`

- Inline code block
  .. code-block:: bash

    docker run -p 8080:8080 axonivy/axonivy-engine

- Include code files
  .. literalinclude:: includes/docker-entrypoint.sh
    :language: bash
    :linenos:

- Links to dev.axonivy.com
  :dev-url:`Download </download>`

- Links to public api
  :public-api:`IvyPrimefacesThemeResolver </ch/ivyteam/ivy/jsf/primefaces/theme/IvyPrimefacesThemeResolver.html>`

- Warnings
  .. Warn:: Attention! Make a backup!

- Tips
  .. Tip:: Best Practive. Advice!

- External Link
  `Title <https://www.google.ch>`_ 

- Internal link (original title)
  :ref:`web-xml`

- Interanl Link (custom title)
  :ref:`prepared <deployment-prepare>`

- Image
  .. figure:: images/workflow-demos.png