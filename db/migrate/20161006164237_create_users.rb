class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, unique: true, :null => false
      t.integer :user_id, null:false, unique: true
      t.string :session_token, unique:true, :null => false
      t.string :password_digest, :null => false
      t.timestamps
    end
      add_index :users, :user_id
  end
end
