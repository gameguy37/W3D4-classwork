class ModifyQuestionIdColumnInAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    change_column :answer_choices, :question_id, :integer, null: false
  end
end
