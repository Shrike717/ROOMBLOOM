class CreateMoodboards < ActiveRecord::Migration[7.0]
  def change
    create_table :moodboards do |t|
      t.string :name
      t.references :user, foreign_key: true # Got rid of nulll false because a moodboard without a user can be created

      t.timestamps
    end
  end
end
