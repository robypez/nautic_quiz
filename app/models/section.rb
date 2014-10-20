class Section < ActiveRecord::Base
  has_many :questions
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
