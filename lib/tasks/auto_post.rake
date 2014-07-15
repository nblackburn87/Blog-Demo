namespace :blog do
  desc "Automatically post to all users accounts"
  task auto_post: :environment do

    post_title = "Automated Blog Post Title"
    post_body = "Hello World!"

    Post.new(:title => post_title,
                :body => post_body)

  end
end 