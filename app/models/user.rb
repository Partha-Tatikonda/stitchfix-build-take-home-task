class User < ApplicationRecord
  has_many :ratings
  validates :email, presence: true, uniqueness: true
  before_save :format_email

  def format_email
    email.downcase!
  end
end
