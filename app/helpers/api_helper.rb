module ApiHelper
   def colorTemp(temp)
        case temp
        when ..50
            "primary"
        when 50..74
            "warning"
        else
            "danger"
        end
   end

   def windMPH(wind)
        case wind
        when ..10
            "primary"
        when 11..25
            "warning"
        else
            "danger"
        end
   end

    def gustMPH(gust)
        case gust
        when ..15
            "primary"
        when 16..30
            "warning"
        else
            "danger"
        end
   end

    def windchillTemp(temp)
        case temp
        when ..-20
            "primary"
        when -20..32
            "info"
        when 0..32
            "secondary"
        else
            "warning"
        end
   end


end
