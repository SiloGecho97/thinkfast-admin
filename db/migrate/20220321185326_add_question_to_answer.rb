class AddQuestionToAnswer < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :question_id, :bigint
  end
end
