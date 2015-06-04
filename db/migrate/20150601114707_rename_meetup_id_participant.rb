class RenameMeetupIdParticipant < ActiveRecord::Migration
  def change
    rename_column :participants, :meetup_id, :meetup_rsvp_id
  end
end
