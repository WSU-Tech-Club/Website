class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :member_lead
      t.string :github_repo
      t.string :readme_file

      t.timestamps
    end
  end
end
