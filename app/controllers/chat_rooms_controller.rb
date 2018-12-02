class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  def index
    ChatRoom.all.each do |chat|
      if chat.match.user1 == current_user || chat.match.user2 == current_user
        @my_chats = []
        @my_chats << chat
      end
    end
  end

  def match_name(chat)
    if chat.match.user1 == current_user
      chat.match.user2.first_name
    else
      chat.match.user1.first_name
    end
  end
end
