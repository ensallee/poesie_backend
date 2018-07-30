class Image < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image
      t.string :filename
      t.belongs_to :user, foreign_key: true
    t.timestamps
    end
  end
end
