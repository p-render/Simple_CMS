class AdminUser < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits
  
  scope :named, lamda {|first,last| where(:first_name => first, :last_name => last)}
  
end
