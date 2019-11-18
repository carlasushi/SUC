class Role < ApplicationRecord
  belongs_to :home
  belongs_to :user, dependent: :destroy
end
