Gem::Specification.new do |s|
  s.name = 'tiddlywikiutils'
  s.version = '0.1.0'
  s.summary = 'Parses Tiddlers from a TiddlyWiki HTML file, as well as being to add Tiddlers.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/tiddlywikiutils.rb']
  s.signing_key = '../privatekeys/tiddlywikiutils.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/tiddlywikiutils'
end
