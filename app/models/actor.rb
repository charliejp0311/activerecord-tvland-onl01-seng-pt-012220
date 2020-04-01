class Actor < ActiveRecord::Base
  belongs_to :show 
  belongs_to :character
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    self.characters.map { |c| c.name }
  end
end