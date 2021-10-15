class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @friends = current_user.friends.all
  end

  def create
    @friend_request = current_user.friend_request
  end

  def update
  end
end


# friendship gem methods relational map verbal

# JON sends a friend request to SOF : jon.friend_request(sof)
# SOF checks the friend requests she received: sof.requested_friends
# JON checks the friends he has already sent requests to: jon.pending_friends
# SOF accepts the friend request from jon: sof.accept_request(jon)
# SOF checks the list of her friends: sof.friends.all

# for create method: current user sends a request to other_user.
# how to ref that user in method?

