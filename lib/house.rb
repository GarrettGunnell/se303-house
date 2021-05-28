class House
    def initialize(prefix: "This is", verses: Verses.new)
        @prefix = prefix
        @verses = verses.generate
    end

    def line(n)
        "#{@prefix} #{@verses.slice(12 - n, 12).join("")}" + "the house that Jack built.\n"
    end

    def recite
        1.upto(12).collect { |n| line(n) }.join("\n")
    end
end

class Verses
    def initialize(randomizers: [])
        @subjects = ["the malt", "the rat", "the cat", "the dog", "the cow with the crumpled horn", "the maiden all forlorn", "the man all tattered and torn", "the priest all shaven and shorn", "the rooster that crowed in the morn", "the farmer sowing his corn", "the horse and the hound and the horn"]
        @verbs = ["lay in ", "ate ", "killed ", "worried ", "tossed ", "milked ", "kissed ", "married ", "woke ", "kept ", "belonged to "]
        randomizers.each { |r| r.randomize(@subjects, @verbs) }
    end

    def generate
        (0..10).collect { "#{@subjects.pop} that #{@verbs.pop}" }
    end
end

class RandomVerses
    def self.randomize(subjects, verbs)
        seed = rand(10000)
        verbs.shuffle!(random: Random.new(seed))
        subjects.shuffle!(random: Random.new(seed))
    end
end

class RandomVerbs
    def self.randomize(subjects, verbs)
        verbs.shuffle!
    end
end

class RandomSubjects
    def self.randomize(subjects, verbs)
        subjects.shuffle!
    end
end