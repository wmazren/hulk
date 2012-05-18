class User < ActiveRecord::Base
  validates :username, :first_name, :last_name, :presence => true
  validates :username, :uniqueness => true
                           
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
                  :username, :first_name, :last_name, :account_id
  # attr_accessible :title, :body
end
