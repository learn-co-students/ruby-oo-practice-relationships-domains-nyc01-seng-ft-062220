class Project

    attr_accessor :name, :pledge_goal
    @@all = []

    def initialize(name, pledge_goal)
        @name = name
        @pledge_goal = pledge_goal.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def creators
        User.all.select{|user_object| user_object.created == self}
    end

    def backers
        User.all.select{|user_object| user_object.backed == self}
    end

    def self.no_pledges
        #use backers as list of all users who have backed and find the projects
        x = self.all.map{|project| project.name}
        # x.each do |project_name| 
        # User.all.find
        binding.pry
        #then iterate through that list checking for all the projects
        #if !project, that has no pledges
        #project_object.find?(user_object.project == self)
    end

    def self.above_goal
    end

    def self.most_backers
    end

end