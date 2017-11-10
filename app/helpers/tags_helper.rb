module TagsHelper
  def comment_created_time(created_at)
    times_ago_in_words(created_at)
  end
end