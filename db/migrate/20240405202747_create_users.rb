class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :login, null: false
      t.string :password, null: false
      t.references :answers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
