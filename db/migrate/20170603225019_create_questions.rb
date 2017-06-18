class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :question_type, default: 0, null: false
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
