class House
    def line(n, begin_with="This is")
        case n
        when 1
            "#{begin_with} the house that Jack built.\n"
        when 2
            "#{begin_with} the malt that lay in the house that Jack built.\n"
        when 3
            "#{begin_with} the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            "#{begin_with} the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            "#{begin_with} the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 6
            "#{begin_with} the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 7
            "#{begin_with} the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 8
            "#{begin_with} the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 9
            "#{begin_with} the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 10
            "#{begin_with} the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 11
            "#{begin_with} the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 12
            "#{begin_with} the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        end
    end

    def recite(begin_with="This is")
        1.upto(12).collect {|i| line(i, begin_with) }.join("\n")
    end
end