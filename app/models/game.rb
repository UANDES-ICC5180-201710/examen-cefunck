class Game < ApplicationRecord
  validates :title, presence: true, length:{minimum:10}, uniqueness: true
  validates :description, presence: true, length:{minimum:30}
  validates :image_url, presence: true
end
