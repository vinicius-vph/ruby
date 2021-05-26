class FileParser
    def to_integer(string)
        string.to_i(2)
    end

    def convert(file)
        file_to_convert = File.readlines(file)
        file_to_convert.map {|f| f.to_i(2)}.sum
    end
end
