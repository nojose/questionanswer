class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :qtext
      t.integer :bucket_id
      t.integer :qstatus_id

      t.timestamps
    end
  end
end
