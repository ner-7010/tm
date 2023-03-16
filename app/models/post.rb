class Post < ApplicationRecord
    belongs_to :user
    def self.posts_after_three_month
        posts = Post.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 3).order(day: :desc)
        post_data = []
        posts.each do |post|
            posts_hash = {}
            posts_hash.merge!(day: post.day.strftime("%Y-%m-%d"), time: post.time)
            post_data.push(posts_hash)
        end
        post_data
    end

    def weekly_appointment
        schedule = IceCube::Schedule.new(start_time) do |s|
            s.add_recurrence_rule IceCube::Rule.weekly
        end
    end

    def monthly_appoimtment
        schedule = IceCube::Schedule.new(start_time) do |s|
            s.add_recurrence_rule IceCube::Rule.monthly
        end
    end

    def yearly_appointment
        schedule = IceCube::Schedule.new(start_time) do |s|
            s.add_recurrence_rule IceCube::Rule.yearly
        end
    end
end
