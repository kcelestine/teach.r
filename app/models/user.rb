class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_secure_password

  validates_presence_of :name, :email, :password, :password_confirmation
  validates_length_of :name, minimum: 8, maximum: 50
  validate :email_regex

  def email_regex
    if email.present? && !email.match(/\A[^@]+@[^@]+\z/)
      errors.add :email, "This is not a valid email format"
    end
  end
end
