class CreateQstatuses < ActiveRecord::Migration
  def change
    create_table :qstatuses do |t|
      t.string :type

      t.timestamps
    end
  end
end
