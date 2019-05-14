class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.string :name
      t.string :gender
      t.string :branch
      t.integer :year
      t.string :roll_number
      t.string :course
      t.string :section
      t.boolean :opt_in
      t.string :residence
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
