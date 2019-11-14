class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.bigint :twitch_sub
      t.string :password_digest
      t.string :avatar_img
      t.boolean :subscriber
      t.boolean :follower
      t.boolean :administrator

      t.timestamps
    end
  end
end
