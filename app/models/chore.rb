class Chore < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :name, presence: true
  validates :due_date, presence: true
end
