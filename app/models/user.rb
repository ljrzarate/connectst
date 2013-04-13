class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :activities, dependent: :destroy

  validates :username, uniqueness: true
  validates :email, uniqueness: true
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,
                  :password,
                  :password_confirmation,
                  :remember_me,
                  :first_name,
                  :last_name,
                  :username,
                  :activities_attributes

  accepts_nested_attributes_for :activities, allow_destroy: true, reject_if: proc {|attributes|  attributes['name'].blank? }
end
