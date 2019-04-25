class ChangeForeignKeysInResponses2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :question_id, :integer
    add_column :responses, :answer_choice_id, :integer
  end
end
