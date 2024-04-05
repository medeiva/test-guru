class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.string :correct, null: false, deafult: false
      t.bolean :body, null: false
      t.references :questions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
