class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titulo
      t.string :contenido

      t.timestamps
    end
  end
end
