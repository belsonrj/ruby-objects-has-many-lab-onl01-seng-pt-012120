class Author 
<<<<<<< HEAD
  attr_accessor :name
=======
  attr_accessor :name 
>>>>>>> ba5ebce78d857eeadeed28a1499c1088c73a986b
  
  @@post_count = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
<<<<<<< HEAD
  def posts 
     Post.all.select {|post| self} 
  end
  
  def add_post(post)
    @posts << post
    post.author = self 
=======
  def add_post(post)
    post.author = self 
    @posts << post
>>>>>>> ba5ebce78d857eeadeed28a1499c1088c73a986b
    @@post_count += 1 
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post
    post.author = self
    @@post_count +=1
  end

  def self.post_count
    Post.all.count
  end
end
