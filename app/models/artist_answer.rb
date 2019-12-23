class ArtistAnswer < ApplicationRecord
  belongs_to :artist_survey
  belongs_to :artist_survey_answer
end
