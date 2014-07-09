class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :name, :email, :password, :password_confirmation
  validates_length_of :name, minimum: 8, maximum: 50
  #validate :name_regex
  validate :email_regex

  def name_regex
    if !!(name.match /\W/)
      errors.add :name, "There are no special characters allowed"
    end
  end

  def email_regex
    if email.present? and not email.match(/\A[^@]+@[^@]+\z/)
      errors.add :email, "This is not a valid email format"
    end
  end
end
