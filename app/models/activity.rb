class Activity < ActiveRecord::Base

  belongs_to :user

  attr_accessible :name,
                  :description,
                  :thematic,
                  :description,
                  :content,
                  :user_id


end
