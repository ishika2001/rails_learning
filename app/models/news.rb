class News < ApplicationRecord
  has_many :sources, as: :sourceable
end
