class Question < ApplicationRecord
   has_many :answers, inverse_of: :question
end
