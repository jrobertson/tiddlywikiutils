# Introducing the tiddlywikiutils gem

    require 'tiddlywikiutils'

    twu = TiddlyWikiUtils.new('/home/james/Downloads/tt.html')
    twu.tiddlers[0] # returns the 1st Tiddler
    twu.add(title: 'Testing the headlne', tags: 'fun markdown', body: 'Something goes here.')
    File.write '/tmp/tt4.html', twu.to_html

## Resources

* tiddlywikiutils https://rubygems.org/gems/tiddlywikiutils

tiddlywiki wiki tiddler tiddly html
