class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|

      t.timestamps
      t.text :description #text por ter muitos caracteres
      t.boolean :status
      t.datetime :date
      t.string :name
      t.references :user, foreign_key: { to_table: :users }
    end
  end
end
