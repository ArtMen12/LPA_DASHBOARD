class CreateArtistAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_answers do |t|
      t.references :artist_survey, foreign_key: true
      t.references :artist_survey_answer, foreign_key: true

      t.timestamps
    end
  end
end
