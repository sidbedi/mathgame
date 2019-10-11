class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :operand1
      t.string :operation
      t.integer :operand2
      t.boolean :correct
      t.integer :seconds

      t.timestamps
    end
  end
end
