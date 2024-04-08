class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.bolean :correct, null: false, deafult: false
      t.string :body, null: false
      t.references :questions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
