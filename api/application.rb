require 'lotus'

module Meetup
  class Api < Lotus::Application
    configure do
      root __dir__

      routes 'config/routes'

      load_paths << 'app'

      layout    :application
      templates 'app/templates'
      assets    'public'
    end
  end
end
