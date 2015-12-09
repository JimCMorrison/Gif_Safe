class Gif < ActiveRecord::Base
  belongs_to :user
  validates :tag, presence: true, length: { minimum: 3 }
  validates :url, presence: true, length: { minimum: 6 }
end
