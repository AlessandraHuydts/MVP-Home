class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  def index

    @my_chats = []
    ChatRoom.all.each do |chat|
      if chat.match.user1 == current_user || chat.match.user2 == current_user
        @my_chats << chat
      end
    end
  end
end
