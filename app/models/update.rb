class Update < ActiveRecord::Base

  validates :status, presence: true
  validates :user, presence: true
  validates :number_of_likes, presence: true

end
