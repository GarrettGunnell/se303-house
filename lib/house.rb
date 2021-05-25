class House
    def line(n, prefix="This is")
        case n
        when 1
            "#{prefix} the house that Jack built.\n"
        when 2
            "#{prefix} the malt that lay in the house that Jack built.\n"
        when 3
            "#{prefix} the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            "#{prefix} the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            "#{prefix} the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 6
            "#{prefix} the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 7
            "#{prefix} the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 8
            "#{prefix} the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 9
            "#{prefix} the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 10
            "#{prefix} the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 11
            "#{prefix} the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 12
            "#{prefix} the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        end
    end

    def recite(prefix="This is")
        1.upto(12).collect {|i| line(i, prefix) }.join("\n")
    end
end