class Poem < ApplicationRecord
  belongs_to :user
  has_many :likes

  def likes_count
    self.likes.count
  end
  
end
