class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :user_name,  null: false, index: { unique: true }
      t.string :email  
      t.string :password_digest,    null: false
      t.string :first_name    
      t.string :last_name    
      t.timestamps    null: false
    end
  end
end
