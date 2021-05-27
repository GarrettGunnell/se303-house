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
    attr_accessor :subjects, :verbs

    def initialize
        @subjects = ["the horse and the hound and the horn", "the farmer sowing his corn", "the rooster that crowed in the morn", "the priest all shaven and shorn", "the man all tattered and torn", "the maiden all forlorn", "the cow with the crumpled horn", "the dog", "the cat", "the rat", "the malt"]
        @verbs = ["belonged to ", "kept ", "woke ", "married ", "kissed ", "milked ", "tossed ", "worried ", "killed ", "ate ", "lay in "]
    end

    def generate
        (0..10).collect { |i| "#{subjects[i]} that #{verbs[i]}" }
    end
end

class RandomHouse < House
    def verses
        super.shuffle
    end
end


class RandomPhraseHouse < House
    def verses
        (0..10).collect { |i| "#{subjects.shuffle!.pop} that #{verbs.shuffle!.pop}" }
    end
end