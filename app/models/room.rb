class Room < ApplicationRecord
  belongs_to :home
  has_many :chores, dependent: :destroy
end
