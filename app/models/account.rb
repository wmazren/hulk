class Account < ActiveRecord::Base
  has_many :contacts, :inverse_of => :account, :dependent => :destroy
  validates :account_name, :presence => true,
                           :uniqueness => true
  
  accepts_nested_attributes_for :contacts
  
  attr_accessible :account_name, :contacts_attributes
end
