class User < ApplicationRecord
  before_create :add_unsubscribe_hash
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects

  has_many :project_users
  has_many :projects, through: :project_users

  private

    def add_unsubscribe_hash
      self.unsubscribe_hash = SecureRandom.hex
    end
end
