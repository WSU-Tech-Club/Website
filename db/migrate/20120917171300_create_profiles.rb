class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :active
      t.string :github_profile
      t.string :major
      t.text :skills
      t.string :github_access_token

      t.timestamps
    end
  end
end
