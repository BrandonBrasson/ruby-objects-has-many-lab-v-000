#class Author
  #attr_accessor :name,:posts
#  def initialize(name)
  # @name=name
   #@posts=[]
  #end
#end


class Author
  attr_accessor :name, :posts
@@post_count = []

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
  @@post_count << post
    post.author = self
  end

  def add_post_by_title(title)
  post = Post.new(title)
  self.add_post(post)
  end
end

  def post_count
  @@post_count
  return []
  end
end
