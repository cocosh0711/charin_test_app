class Post < ApplicationRecord
  validates :content, { presence: true, length: { maximum: 140 } }
  validates :user_id, { presence: true }

  def user
    User.find_by(id: user_id)
  end
end
