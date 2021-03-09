class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body_fr
      t.text :body_en
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
