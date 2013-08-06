class CreateQstatuses < ActiveRecord::Migration
  def change
    create_table :qstatuses do |t|
      t.string :qtype

      t.timestamps
    end
  end
end
