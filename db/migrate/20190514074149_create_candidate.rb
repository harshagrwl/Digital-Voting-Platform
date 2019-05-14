class CreateCandidate < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :affilation
      t.decimal :cgpa
      t.text :past_experiences
      t.text :about_me
      t.text :link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
