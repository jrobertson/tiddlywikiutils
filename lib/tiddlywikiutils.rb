#!/usr/bin/env ruby

# file: tiddlywikiutils.rb


class TiddlyWikiUtils

  attr_reader :tiddlers

  def initialize(filepath=nil, debug: false)

    @debug = debug
    import_html(filepath) if filepath

  end

  def add(title: '', tags: '', body: '', type: 'text/x-markdown')

    time = Time.now.strftime('%Y%M%d%H%M%S%3N')

    tiddler = "<div created='%s' modified='%s' tags='%s' title='%s' \
      type='%s'>\n<pre>%s</pre>\n</div>" % \
        [time, time, tags, title, type, body]

    id = @tiddlers.last[/(?<=created=")\d+/]    
    pos = @s =~ /#{id}/
    pos2 = @s[pos..-1] =~ /<\/div>/

    puts [id, pos, pos2].inspect if @debug
    puts 'tiddler: ' + tiddler.inspect if @debug

    @s.insert((pos + pos2 + 6), tiddler)
    :added

  end

  def import_html(filepath)

    @s = File.read filepath
    a = @s.split(/.*(?=<div created)/)
    a.shift
    a.reject! {|x| x =~ / title="\$/}
    @tiddlers = a[0..-2]
    @tiddlers << a.last.split(/<\/div>/,2).first

  end

  def to_html()
    @s
  end

end
