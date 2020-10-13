class User < ApplicationRecord
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :invitations, foreign_key: :event_invitee_id
  has_many :invited_events, through: :invitations
end
