class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  after_create :create_api_key
  validates :api_key, uniqueness: true
  
  private 
    def create_api_key
    self.api_key = SecureRandom.hex(14)
  end

end