.. _syntax:

Restructured text syntax
========================

The syntax for rst is quite elaborate and for the love of me, I always forget. That's why I look up how to write stuff all the time. Excellent sources are this `cheatsheet <http://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html>`_ by Thomas Cokelaer and this `primer <http://www.sphinx-doc.org/en/stable/rest.html#source-code>`_. But certain things I do remember. Here's how I work, this is not the definitive way, but it works for me.

Table of contents
-----------------

The index file contains a table of contents, the ``toctree``. Here I put the filenames of the rst files. I usually create a new file for every main topic The actual table of contents is created by sphinx based on the headers in the documentation. All ``Header 1`` will show up in the toc with other headers beneath them. In this documentation it looks like this::

	.. toctree::
	   :maxdepth: 1
	   :caption: Contents:

	   installation
	   firstproject
	   syntax
	   githubpages

The first three lines is rst syntax stuff, just stick to it. But then there's a list of filenames. E.g. ``installation`` refers to ``installation.rst``. If you use subfolders you can do it like this ``subfolder\installation``. That helps if your docs get very large.

Headers
-------

Sphinx uses the headers to create a hierarchy in the docs. You create headers by underlining the text with certain characters. You can pick the characters you like, no specific meaning is attached to them. But it's always good to be consistent. For instance::

	Header 1
	========

	Header 2
	--------

	Header 3
	^^^^^^^^

Results in 

Header 1
========

Header 2
--------

Header 3
^^^^^^^^

Verbatim, literal and code
--------------------------

Using double backquotes `````` (usually under the tilde character, topleft of the keyboard) you can show verbatim strings. Great to ``emphasize`` something.

A literal block is started with a double colon, the block itself is indented. Like so::

	Here's an example of a literal block::

		buy milk
		mow lawn
		pick up kids

This results in

Here's an example of a literal block::

	buy milk
	mow lawn
	pick up kids

Spinx also supports syntax highlighting if you want to include code in the docs like so::

	.. code-block:: html
	   :linenos:

	   <h1>code block example</h1>

This results in

.. code-block:: html
   :linenos:

   <h1>code block example</h1>

Images
------

I always put my images in a subdirectory. So the following image is inserted like so::

	.. image:: _images\2017-03-27_224614.png

	*This is the caption*
	
.. image:: _images\2017-03-27_224614.png

*This is the caption*

Moving on
---------

Beyond that, it's trial and error. You can add lists, links to the web, internal links and much more. Just try it out, and try to remember the basics.