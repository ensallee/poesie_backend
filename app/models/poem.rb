class Poem < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  def likes_count
    self.likes.count
  end

end
