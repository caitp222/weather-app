class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  validates :user, uniqueness: { scope: :place }
end
