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
end
