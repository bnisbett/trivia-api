class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :answer
      t.references :question, foreign_key: true
      t.boolean :correct, default: false, null: false

      t.timestamps
    end
  end
end
