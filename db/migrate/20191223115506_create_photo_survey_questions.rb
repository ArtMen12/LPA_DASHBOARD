class CreatePhotoSurveyQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_survey_questions do |t|
      t.string :title

      t.timestamps
    end
  end
end
