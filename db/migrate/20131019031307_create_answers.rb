class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_text
      t.string :value
      t.string :reason
      t.references :question

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
