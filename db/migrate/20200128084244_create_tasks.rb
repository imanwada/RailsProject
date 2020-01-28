class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :body
      t.string :author
      t.references :thing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
