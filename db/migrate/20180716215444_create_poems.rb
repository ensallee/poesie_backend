class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.text :body
      t.string :title
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
