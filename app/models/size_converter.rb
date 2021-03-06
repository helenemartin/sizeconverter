class SizeConverter
  # def perform(from:, size:, to:)
  #   index_of = Sizes::US.index(size)
  #   Sizes::UK[index_of]
  # end
  def perform(from:, size:, to:)
  
		index_of  = "Sizes::#{from.upcase}".constantize.index(size)
		"Sizes::#{to.upcase}".constantize[index_of]
  end
end

class Sizes
  ALL = ['UK', 'US', 'FR', 'IT', 'JA', 'AU', 'ALPHA']
    UK = ["2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26"]
    US = ["00", "0", "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22"]
    FR = ["30", "32", "34", "36", "38", "40", "42", "44", "46", "48", "50", "52", "54"]
    IT = ["34", "36", "38", "40", "42", "44", "46", "48", "50", "52", "54", "56", "58"]
    JA = ["1", "3", "5", "7", "9", "11", "13", "15", "17", "19", "21", "23", "25"]
    AU = ["2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26"]
    ALPHA = [nil,nil,'XXXS','XXS','XS','S','M','L','XL','XXL','XXXL',nil,nil,nil]
end