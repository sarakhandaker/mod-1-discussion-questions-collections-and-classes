class Comment
    attr_accessor :text, :photo
@@all=[]
def initialize (text)
    @text=text
    @@all<<self
end

def self.all
    @@all
end

end