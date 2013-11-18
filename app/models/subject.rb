class Subject < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_many :pages
  
  scope :visible, where(:visible => true)
  
end
