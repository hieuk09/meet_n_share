require_relative './config/environment'
require_relative './web/application'

run Meetup::Web.new
