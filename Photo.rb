class Photo
    attr_accessor :user, :comment
@@all=[]
def initialize
    @@all<<self
end

def self.all
    @@all
end

def comments
    Comment.all.select {|comm| comm.photo== self}
end

def make_comment(text)
    new_comment=Comment.new(text)
    new_comment.photo=self
end

end