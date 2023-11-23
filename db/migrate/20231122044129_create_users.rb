class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, index: { unique: true, name: 'unique_usernames' }
      t.string :password_digest, null: false, index: { unique: true, name: 'unique_passwords' }
      t.string :name
      t.timestamps
    end
  end
end
