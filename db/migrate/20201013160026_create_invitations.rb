class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.references :event_invitee, foreign_key: { to_table: :users }
      t.references :invited_event, foreign_key: { to_table: :events }
      t.boolean :rsvp

      t.timestamps
    end
  end
end
