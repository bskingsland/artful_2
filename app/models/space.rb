class Space < ApplicationRecord

has_many :visits, :dependent => :destroy
has_many :users, :through => :visits, :source => :user
validates :neighborhood, :presence => true
validates :name, :presence => true
validates :name, :uniqueness => true
validates :classification, :presence => true
validates :city, :presence => true

end
