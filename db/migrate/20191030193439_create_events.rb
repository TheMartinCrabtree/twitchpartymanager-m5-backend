class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :eventname
      t.datetime :dateandtime
      t.string :serverinfo
      t.string :voip
      t.text :eventnote

      t.timestamps
    end
  end
end
