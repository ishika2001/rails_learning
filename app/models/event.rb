class Event < ApplicationRecord
  has_many :sources, as: :sourceable
end
