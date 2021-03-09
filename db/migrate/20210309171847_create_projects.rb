class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body_fr
      t.text :body_en

      t.timestamps
    end
  end
end
