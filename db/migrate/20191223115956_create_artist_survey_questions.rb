class CreateArtistSurveyQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_survey_questions do |t|
      t.string :title

      t.timestamps
    end
  end
end
