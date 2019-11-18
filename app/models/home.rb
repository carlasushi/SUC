class Home < ApplicationRecord
  belongs_to :user
  has_many :roles
  has_many :users, through: :roles
  has_many :rooms
  has_many :chores, through: :rooms
end
