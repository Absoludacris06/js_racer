class Player < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: false }, presence: true
  has_and_belongs_to_many :games
end
