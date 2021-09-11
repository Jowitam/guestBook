# Preview all emails at http://localhost:3000/rails/mailers/posts_mailer
class PostsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/posts_mailer/new_post_notification
  def new_post_notification
    PostsMailer.new_post_notification(Post.new(author: "John", body: "Cześć wszystkim!"))
  end

end
