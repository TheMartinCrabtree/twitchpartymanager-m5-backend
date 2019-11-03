class CreateVoips < ActiveRecord::Migration[5.2]
  def change
    create_table :voips do |t|
      t.string :servername
      t.string :voipaddress
      t.text :servernote

      t.timestamps
    end
  end
end
