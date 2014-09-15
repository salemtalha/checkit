class AddSenderAndRecipientToLink < ActiveRecord::Migration
  def change
    add_column :links, :sender_id, :integer
    add_column :links, :recipient_id, :integer
  end
end
