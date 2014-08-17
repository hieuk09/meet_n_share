ENV['RACK_ENV'] = ENV['LOTUS_ENV'] ||= 'development'
require 'dotenv/deployment'
require File.expand_path('../application', __FILE__)

Meetup.load!
