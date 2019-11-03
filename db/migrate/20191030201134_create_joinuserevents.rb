class CreateJoinuserevents < ActiveRecord::Migration[5.2]
  def change
    create_table :joinuserevents do |t|
      t.string :ingamename
      t.boolean :inparty
      t.boolean :waitlist
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
