class Like < ApplicationRecord
  belongs_to :kokkyo
  belongs_to :user

  validates_uniqueness_of :kokkyo_id, scope: :user_id
end
