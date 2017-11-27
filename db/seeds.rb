@user = User.create!(email: "test@test.com", 
            password: "asdfasdf", 
            password_confirmation: "asdfasdf", 
            first_name: "James", 
            last_name: "Briggs",
            phone: "8014717493"
            )

AdminUser.create!(email: "admin@test.com", 
            password: "asdfasdf", 
            password_confirmation: "asdfasdf", 
            first_name: "James", 
            last_name: "Admin"
            phone: "8014717493"
            )

100.times do |post|
  Post.create!(date: Date.today, 
            rationale: "#{post} rationale content", 
            user_id: @user.id,
            overtime_request: 2.5
            )
end