Creates a graphical dependency graph of all views and partials in a Rails project,  
that shows which view/partial uses which other view/partial.

It parses all views in app/views and extracts all "render" calls,  
then genearates a image of the dependency graph using GraphViz, which is saved to
RAILS_ROOT/partial_dependencies.png .

Installation
============
Install [graphviz](http://www.graphviz.org/) e.g. Ubuntu: `sudo apt-get install graphviz` then:

    script/plugin install git://github.com/msales/partial_dependencies
Or
    sudo gem install msales-partial_dependencies -s http://gems.github.com/

Usage
=====
As plugin run `rake partial_dependencies:generate_picture`.  
As gem run `partial_dependencies` from a Rails root folder.

It will generate a file called partial_dependencies.png in Rails root.

TODO
====
 - Tests
 - Only support "render('x')" when project is Rails >= 2.3
 - Passing options via 'partial_dependencies' CLI