class User < ActiveRecord::Base
  has_many :favorites
  has_many :places, through: :favorites

  def has_favorites?
    !self.favorites.empty?
  end
end
