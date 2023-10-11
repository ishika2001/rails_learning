class Article < ApplicationRecord
  include Visible

  # has_many :comments, dependent: :destroy
  # validates_associated :comments

  # validates :title, presence: true
  # validates :body, presence: true, length: { minimum: 10 }
  has_many :sources, as: :sourceable
end
