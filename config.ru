require "vite_ruby"
use(ViteRuby::DevServerProxy, ssl_verify_none: true) if ViteRuby.run_proxy?

require_relative "./ruby/app"

run Sinatra::Application
