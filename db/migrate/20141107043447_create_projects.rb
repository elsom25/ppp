class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
