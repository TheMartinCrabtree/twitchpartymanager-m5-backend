class CreateServernames < ActiveRecord::Migration[5.2]
  def change
    create_table :servernames do |t|
      t.string :serveraddress
      t.text :servernote

      t.timestamps
    end
  end
end
