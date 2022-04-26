class CreateAnswerDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_details do |t|
      t.references :answer, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :selected

      t.timestamps
    end
  end
end
