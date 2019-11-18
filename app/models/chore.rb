class Chore < ApplicationRecord
  belongs_to :room, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
