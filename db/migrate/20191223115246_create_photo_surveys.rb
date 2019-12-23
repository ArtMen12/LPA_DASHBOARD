class CreatePhotoSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_surveys do |t|
      t.date :date
      t.references :photo, foreign_key: true

      t.timestamps
    end
  end
end
