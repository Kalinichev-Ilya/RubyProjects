# My first attempts to use metaprogramming in ruby
module AttrMeta
  @cache_val = []

  def attr_accessor_with_history(*attrs)
    # getter
    attrs.each do |attr|
      define_method(attr) do
        instance_variable_get("@#{attr}".to_sym)
      end

      # setter
      define_method("#{attr}=".to_sym) do |val|
        @cache_val << val unless @cache_val.pop.equal?(val)
        unless instance_variable_defined?("#{attr}=".to_sym)
          instance_variable_set("@#{attr}", val)
        end
      end

      # get history of cache values
      define_method("#{attr}_history") do
        value = instance_variable_get('@value_history')
        return [] if value.nil? || value[name].nil?
        value[name]
      end
    end
  end

  def strong_attr_accessor(attr_name, his_class)
    class_is_match = attr_name.is_a?(his_class)
    # getter
    define_method(attr_name) do
      instance_variable_get("@#{attr_name}")
    end
    # setter
    define_method("#{attr_name}=") do |val|
      raise TypeError, 'Invalid type' unless class_is_match
      instance_variable_set("@#{attr_name}", val)
    end
  end
end