module PostsHelper
    def times
        times =["0:00",
                "0:30",
                "1:00",
                "1:30",
                "2:00",
                "2:30",
                "3:00",
                "3:30",
                "4:00",
                "4:30",
                "5:00",
                "5:30",
                "6:00",
                "6:30",
                "7:00",
                "7:30",
                "8:00",
                "8:30",
                "9:00",
                "9:30",
                "10:00",
                "10:30",
                "11:00",
                "11:30",
                "12:00",
                "12:30",
                "13:00",
                "13:30",
                "14:00",
                "14:30",
                "15:00",
                "15:30",
                "16:00",
                "16:30",
                "17:00",
                "17:30",
                "18:00",
                "18:30",
                "19:00",
                "19:30",
                "20:00",
                "20:30",
                "21:00",
                "21:30",
                "22:00",
                "22:30",
                "23:00",
                "23:30",]
    end
    def check_post(posts, day, time)
        result = false
        posts_count = posts.count
        # 取得した予約データにdayとtimeが一致する場合はtrue,一致しない場合はfalseを返します
        if posts_count > 1
            posts.each do |post|
                result = post[:day].eql?(day.strftime("%Y-%m-%d")) && post[:time].eql?(time)
                return result if result
            end
        elsif posts_count == 1
            result = posts[0][:day].eql?(day.strftime("%Y-%m-%d")) && posts[0][:time].eql?(time)
            return result if result
        end
        return result
    end
end
