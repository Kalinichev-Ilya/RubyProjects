# My first attempts to use metaprogramming in ruby
module AttrMeta
  @cache_val = []

  # Динамически создает геттеры и сеттеры DONE
  # для любого кол-ва атрибутов, DONE
  # при этом сеттер сохраняет все значения DONE
  # инстанс-переменной при изменении этого значения.
  # Также должен быть метод <имя_атрибута>_history,
  # который возвращает массив всех значений данной переменной. Done
  def attr_accessor_with_history(*attrs)
    # getter
    attrs.each do |attr|
      define_method(attr) do
        instance_variable_get("@#{attr}")
      end
      # setter
      define_method("#{attr}=") do |val|
        @cache_val << val unless @cache_val.pop.equal?(val)
        instance_variable_set("@#{attr}", val)
      end
      # get history of cache values
      define_method("#{attr}_history") do
        @cache
      end
    end

  end

  # принимает имя атрибута и его класс.
  # При этом создается геттер и сеттер для одноименной
  # инстанс-переменной, но сеттер проверяет тип присваемоего
  # значения. Если тип отличается от того, который указан
  # вторым параметром, то выбрасывается исключение.
  # Если тип совпадает, то значение присваивается.
  def strong_attr_acessor(attr_name, his_class)

  end

end