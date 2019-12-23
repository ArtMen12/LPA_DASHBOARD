class CreatePhotoAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_answers do |t|
      t.references :photo_survey, foreign_key: true
      t.references :photo_survey_answer, foreign_key: true

      t.timestamps
    end
  end
end
