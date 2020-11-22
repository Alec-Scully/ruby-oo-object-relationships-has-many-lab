require 'pry'

class Author
    attr_accessor :name
    @@count = 0

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do | posts |
            posts.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.each do | post |
            @@count += 1
        end
        @@count
    end
end