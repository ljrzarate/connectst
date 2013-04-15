class Activity < ActiveRecord::Base

  belongs_to :user

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :thematic, presence: true
  validates :content, presence: true

  attr_accessible :name,
                  :description,
                  :thematic,
                  :description,
                  :content,
                  :user_id


end
