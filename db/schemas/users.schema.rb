create_table :users, force: :cascade, charset: 'utf8mb4', collation: 'utf8mb4_bin', options: 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
  t.string :nickname
  t.string  :email, null: false, default: ''
  t.string  :password_digest, null: false, default: ''
  t.integer :age,  null: false, default: 20
  t.integer :status,  null: false, default: 0
end