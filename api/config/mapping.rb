require 'lotus/model/mapper'
require 'lotus/model/adapters/sql_adapter'

module Meetup
  @@mapping = Lotus::Model::Mapper.new do
    collection :events do
      entity     Meetup::Event
      repository Meetup::Repositories::EventRepository

      attribute :id,    Integer
      attribute :url,   String
      attribute :title, String
    end
  end

  def self.mapping
    @@mapping
  end

  def self.load!
    adapter = Lotus::Model::Adapters::SqlAdapter.new(mapping, ENV['DATABASE_URL'])

    Meetup::Repositories::EventRepository.adapter = adapter

    mapping.load!
  end
end
