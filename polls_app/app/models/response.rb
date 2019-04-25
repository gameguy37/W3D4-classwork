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
    validate :respondent_did_not_answer_already?


    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    has_one :question,
        through: :answer_choice,
        source: :question


    def sibling_responses
        all_responses = self.question.responses.where.not(id: self.id)
    end

    def respondent_did_not_answer_already?
        user_ids = []
        self.sibling_responses.each { |response| user_ids << response.respondent.id}
        return false if user_ids.include?(self.id)
        true
    end


end
