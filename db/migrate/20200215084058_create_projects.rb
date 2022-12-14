class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_number
      t.string :city
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
