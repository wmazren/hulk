class Contact < User
  belongs_to :account, :inverse_of => :contacts
  validates :account, :presence => true
end
