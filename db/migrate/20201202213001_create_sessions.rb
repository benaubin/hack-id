class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions, id: :uuid do |t|
      t.references :member, null: false, foreign_key: true, type: :uuid, index: false

      t.datetime :last_access_at
      t.string :last_access_ip
      t.string :last_access_ua

      t.index [:member_id, :last_access_at], order: { last_access_at: :desc }

      t.datetime :password_verified_at
      t.datetime :email_verified_at
      t.datetime :slack_verified_at

      t.timestamps
    end
  end
end
