class CreatePhotoSurveyAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_survey_answers do |t|
      t.text :text
      t.references :photo_survey_question, foreign_key: true

      t.timestamps
    end
  end
end
