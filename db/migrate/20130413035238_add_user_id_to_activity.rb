class AddUserIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :user_id, :integer
    add_column :activities, :name, :string
    add_column :activities, :description, :string
    add_column :activities, :thematic, :string
    add_column :activities, :content, :string
  end
end

