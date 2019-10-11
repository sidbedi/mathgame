class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :operand1
      t.integer :operand2
      t.string :operation
      t.boolean :correct

      t.timestamps
    end
  end
end
