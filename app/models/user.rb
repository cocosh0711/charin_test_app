class User < ApplicationRecord
  has_secure_password

  validates :name, { presence: true }
  validates :email, { uniqueness: true }

  def posts
    Post.where(user_id: id)
  end
end
