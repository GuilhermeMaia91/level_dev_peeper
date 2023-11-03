class NotifyJob < ApplicationJob
  queue_as :default
  sidekiq_options retry: 3, backtrace: 50

  def perform(args)
    if args[:post_id].present?
      post = Post.find(args[:post_id])
      PostMailer.with(post: post).notify_email.deliver_now
    elsif args[:comment_id].present?
      comment = Comment.find(args[:comment_id])
      CommentMailer.with(comment: comment).notify_email.deliver_now
    end
  end
end