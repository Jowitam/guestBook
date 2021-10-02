class PostFetchJob < ApplicationJob
  queue_as :default

  def perform(post)
    sleep 2
    PostsMailer.new_post_notification(post).deliver
    sleep 2
  end
end
