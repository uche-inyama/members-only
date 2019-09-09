class User < ApplicationRecord
  before_create :create_remember_digest

  has_secure_password

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_digest
      token = User.new_token
      self.remember_digest = User.digest(token.to_s)
    end

    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token.to_s))
    end
end
