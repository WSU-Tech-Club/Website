class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :active
      t.string :github_profile
      t.string :major
      t.text :skills
      t.string :github_access_token

      t.timestamps
    end
  end
end
