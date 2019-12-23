class PhotoAnswer < ApplicationRecord
  belongs_to :photo_survey
  belongs_to :photo_survey_answer
end
