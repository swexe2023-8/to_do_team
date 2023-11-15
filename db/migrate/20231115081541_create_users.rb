class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.string :password
      t.integer :team_id

      t.timestamps
    end
  end
end