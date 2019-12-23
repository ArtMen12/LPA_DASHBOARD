class CreateArtistSurveyAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_survey_answers do |t|
      t.text :text
      t.references :artist_survey_question, foreign_key: true

      t.timestamps
    end
  end
end
