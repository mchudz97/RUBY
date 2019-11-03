class Series
    attr_reader:serie
    def  initialize(serie)
        @serie=serie
    end
    def slices(place)
        if place>@serie.length
            raise ArgumentError
        else
            slicedtext=[]
            for i in 0... @serie.length-place+1 
                slicedtext[i]=serie[i,place]
            end
        slicedtext
        end
    end
end
