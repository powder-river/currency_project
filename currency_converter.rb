class Converter
  def initialize(rates)
    @rates = {USD: 1.0 ,EUR: 0.74}
          # "Israel" =>        {ILS: "y"},
          # "China" =>         {CNY: "z"},
          # "Canada" =>        {CAD: "a"},
          # "Russia" =>        {RUB: "b"},
          # "Saudi Arabia" =>  {SAR: "c"},
  end

  def rates
    @rates
  end

end
