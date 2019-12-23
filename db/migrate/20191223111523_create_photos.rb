class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.date :shooting_date
      t.string :place
      t.date :publication_month
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
