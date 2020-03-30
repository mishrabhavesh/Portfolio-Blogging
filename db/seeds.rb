3.times do |topic|
    Topic.create!(
        title: "topic #{topic + 1}"
    )
end

puts "topic created"

10.times do |x|
    Blog.create!(title: "My title #{x + 1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id
)
end

puts "blogs created"

5.times do |y|
    Skill.create!(title: "Rails #{y}",
                  percent_utilized:15  
    )
end

puts

8.times do |portfolio_item|
    Portfolio.create!(title: "portfolio title #{portfolio_item} ",
                        subtitle:"Ruby on Rails",
                        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        main_image: "https://via.placeholder.com/600x400",
                        thumb_image: "https://via.placeholder.com/350x200"
                    )
end

1.times do |portfolio_item|
    Portfolio.create!(title: "portfolio title #{portfolio_item} ",
                        subtitle:"Angular",
                        body:" Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        main_image: "https://via.placeholder.com/600x400",
                        thumb_image: "https://via.placeholder.com/350x200"
                    )
end
puts "portfolio created"

3.times do |technology|
    Technology.create!(
        name: "Technology #{technology}",
        portfolio_id: Portfolio.last.id 
        )
end

puts "technology created"