class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams, :id => false do |t|
      t.integer :developer_id
      t.integer :project_id

      t.timestamps
    end
  end
end
