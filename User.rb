class User
    attr_reader :name
@@all=[]
def initialize (name)
    @name=name
    @@all<<self
end

def photos
    Photo.all.select {|photo| photo.user== self}
end
end