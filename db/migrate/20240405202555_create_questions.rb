class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.references :tests, null: false, foreign_key: true

      t.timestamps
    end
  end
end
