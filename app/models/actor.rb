class Actor < ActiveRecord::Base
  has_many :show 
  belongs_to :character
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    self.characters.map { |c| c.name }
  end
end