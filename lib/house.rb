class House
    def subjects 
        [
            "the horse and the hound and the horn that belonged to",
            "the farmer sowing his corn that kept",
            "the rooster that crowed in the morn that woke",
            "the priest all shaven and shorn that married",
            "the man all tattered and torn that kissed",
            "the maiden all forlorn that milked",
            "the cow with the crumpled horn that tossed",
            "the dog that worried",
            "the cat that killed",
            "the rat that ate",
            "the malt that lay in",
            ""
        ]
    end

    def initialize(prefix="This is")
        @prefix = prefix
    end

    def line(n)
        "#{@prefix} #{subjects.slice(12 - n, 12).join(" ")}" + "the house that Jack built.\n"
    end

    def recite
        1.upto(12).collect { |i| line(i) }.join("\n")
    end

    def random_recite
        1.upto(12).collect { |i| line(i) }.shuffle.join("\n")
    end
end

puts House.new.random_recite