module ApiConventionsHelper
  extend ActiveSupport::Concern

  class HashTransformer
    # Returns a new hash with all keys converted by the block operation.
    #  hash = { person: { name: 'Rob', age: '28' } }
    #  hash.deep_transform_keys { |key| key.to_s.upcase }
    #  # => {"PERSON"=>{"NAME"=>"Rob", "AGE"=>"28"}}
    def deep_transform_keys(hash, deep_transform_types, &block)
      result = hash.class.new
      hash.each do |k, v|
        value_is_deep_type = deep_transform_types.any? { |t| v.is_a?(t)}
        result[yield(k)] = value_is_deep_type ? deep_transform_keys(v, deep_transform_types, &block) : v
      end
      result
    end

    def snakecase_keys(hash)
      deep_transform_keys(hash, [Hash.class, ActionController::Parameters]) { |k| k.to_s.underscore.to_sym }
    end
  end

  def snakecase_params
    # this code assumes that params is a hash structure. Any later versions of rails changing this
    # structure may result in breakage of this code
    HashTransformer.new.snakecase_keys(params)
  end
end
