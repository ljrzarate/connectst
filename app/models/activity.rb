class Activity < ActiveRecord::Base

  belongs_to :user

  attr_accessible :name,
                  :description,
                  :thematic,
                  :user_id


end
