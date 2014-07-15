namespace :blog do
  desc "Automatically post to all users accounts"
  task auto_post: :environment do

    time = Time.now
    time = time.strftime("%A, %d %b %Y %l:%M %p")
    post_title = "Automated Blog Post Title" + " " + time
    post_body = "Hello World!"

    Post.create!({:title => post_title,
                :body => post_body})
  end
end 