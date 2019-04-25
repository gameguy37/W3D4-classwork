class ChangeForeignKeysInResponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :answer_choice_id, :integer
    add_column :responses, :user_id, :integer
  end
end
