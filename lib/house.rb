class House
    def verses 
        [
            "the horse and the hound and the horn that belonged to ",
            "the farmer sowing his corn that kept ",
            "the rooster that crowed in the morn that woke ",
            "the priest all shaven and shorn that married ",
            "the man all tattered and torn that kissed ",
            "the maiden all forlorn that milked ",
            "the cow with the crumpled horn that tossed ",
            "the dog that worried ",
            "the cat that killed ",
            "the rat that ate ",
            "the malt that lay in ",
        ]
    end

    def initialize(prefix="This is")
        @prefix = prefix
    end

    def phrases(n)
        verses.slice(12 - n, 12).join("")
    end

    def line(n)
        "#{@prefix} #{phrases(n)}" + "the house that Jack built.\n"
    end

    def recite
        1.upto(12).collect { |i| line(i) }.join("\n")
    end
end

class RandomHouse < House
    def phrases(n)
        verses.slice(12 - n, 12).shuffle.join("")
    end
end


class RandomPhraseHouse < House
    def subjects
        [
            "the horse and the hound and the horn that ",
            "the farmer sowing his corn that ",
            "the rooster that crowed in the morn that ",
            "the priest all shaven and shorn that ",
            "the man all tattered and torn that ",
            "the maiden all forlorn that ",
            "the cow with the crumpled horn that ",
            "the dog that ",
            "the cat that ",
            "the rat that ",
            "the malt that ",
        ]
    end

    def verbs
        [
            "belonged to ",
            "kept ",
            "woke ",
            "married ",
            "kissed ",
            "milked ",
            "tossed ",
            "worried ",
            "killed ",
            "ate ",
            "lay in ",
        ]
    end

    def phrases(n)
        s = subjects.shuffle.slice(0, n - 1)
        v = verbs.shuffle.slice(0, n - 1)

        0.upto(n - 2).collect { |i| s[i] + v[i] }.join("")
    end
end