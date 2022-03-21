class AddQuestionToAnswer < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :question_id, :uuid
  end
end
