# 3rd Party 
package 3rd party scripts into one file for easier distribution

I'm mainly doing this so I can quickly update codemirror files from the trunk for tributary.  
I've also packaged jshint in here for the javascriptValidator

I'm using browserify in tributary itself for most of the dependencies,
including the main codemirror script. this doesn't include the addons, modes
and linter tho.

I want to use smash, which is in the package json and commented out in the
makefile because i'm not ready to move to node 0.10 yet
