class ChangeMessagesIDtoMessageId < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :messages_id, :message_id
  end
end
