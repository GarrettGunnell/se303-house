class House
    def initialize(prefix: "This is", verses: Verses.new)
        @prefix = prefix
        @verses = verses.generate
    end

    def phrases(n)
        @verses.slice(12 - n, 12).join("")
    end

    def line(n)
        "#{@prefix} #{phrases(n)}" + "the house that Jack built.\n"
    end

    def recite
        1.upto(12).collect { |i| line(i) }.join("\n")
    end
end

class Verses
    def initialize
        @subjects = ["the malt", "the rat", "the cat", "the dog", "the cow with the crumpled horn", "the maiden all forlorn", "the man all tattered and torn", "the priest all shaven and shorn", "the rooster that crowed in the morn", "the farmer sowing his corn", "the horse and the hound and the horn"]
        @verbs = ["lay in ", "ate ", "killed ", "worried ", "tossed ", "milked ", "kissed ", "married ", "woke ", "kept ", "belonged to "]
    end

    def verb
        @verbs.pop
    end

    def subject
        @subjects.pop
    end

    def generate
        (0..10).collect { |i| "#{subject} that #{verb}" }
    end
end

class RandomVerses < Verses
    def initialize
        super
        seed = rand(10000)
        @verbs.shuffle!(random: Random.new(seed))
        @subjects.shuffle!(random: Random.new(seed))
    end
end

class RandomPhraseVerses < Verses
    def verb
        @verbs.shuffle!.pop
    end

    def subject
        @subjects.shuffle!.pop
    end
end

puts House.new(verses: RandomVerses.new).line(3)