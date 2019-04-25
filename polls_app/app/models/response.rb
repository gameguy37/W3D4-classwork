# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  answer_choice_id :integer
#

class Response < ApplicationRecord
    validates :user_id, :answer_choice_id, presence: true

    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User


    def sibling_responses

    end


end
