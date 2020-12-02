class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    enable_extension "citext"
    enable_extension "pgcrypto"

    create_table :members, id: :uuid do |t|
      t.string :display_name
      t.string :full_name
      t.citext :primary_email
      t.string :password_digest

      t.datetime :email_confirmed_at

      t.timestamps
    end
    add_index :members, :primary_email, unique: true
  end
end
