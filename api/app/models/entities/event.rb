require 'lotus/entity'

class Mobile::Feed
  include Lotus::Entity
  self.attributes = :url, :title
end
