class CreateTodoComments < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_comments do |t|
      t.string :commenter
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :todo, null: false, foreign_key: true

      t.timestamps
    end
  end
end