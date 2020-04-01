class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors
  belongs_to :network
  def actors_list
    @list = self.actors.map{|a| a.full_name}
    @list.join(", ")
  end
end