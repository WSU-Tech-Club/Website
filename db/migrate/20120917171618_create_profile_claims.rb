class CreateProfileClaims < ActiveRecord::Migration
  def change
    create_table :profile_claims do |t|
      t.string :email
      t.integer :profile_id
      t.string :token

      t.timestamps
    end
  end
end
