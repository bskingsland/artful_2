class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :visits, :dependent => :destroy
has_many :spaces, :through => :visits, :source => :space
validates :first_name, :presence => true

end
