class Post < ActiveRecord::Base
  scope :most_recent_first, order('posts.published desc')
  scope :by_date_published, lambda {|date| where(["published <= ? and published >= ?", date.end_of_month, date.beginning_of_month]) }

  belongs_to :feed

  def Post.activity_by_date
    activity = Post.count(:published, :group=>"published") #date_format(published, '%Y-%c')")
    activity_by_date = {}
    activity.each do |row|
      # raise row[0].year.inspect
      year,month = row[0].year, row[0].month #row[0].split '-'
      activity_for_this_year = activity_by_date[year.to_i] ||= {}
      activity_for_this_year[month.to_i] = row[1]
    end
    activity_by_date
  end
end
