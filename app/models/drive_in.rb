class DriveIn
    attr_reader :name, :screens

    def initialize(name)
        @name = name
        @screens = []
    end

    def whats_playing
        @screens.map { |screen| screen.movie_title }
    end

    def full_house?
        @screens.count { |screen| screen.at_capacity? } == @screens.length
    end
end
