class String
  def to_bool
    return true   if self == true   || self =~ (/(true|t|yes|y|1)$/i)
    return false  if self == false  || self.blank? || self =~ (/(false|f|no|n|0)$/i)
    raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
  end

  #
  # Escape single quotes
  #
  def escape_single_quotes
    self.gsub(/'/, "\\\\'")
  end
end


# 
# to_boolM
# do the same as Object.to_bool, but for a NilClass (nil)
# 
NilClass.send :define_method, :to_bool do
  false
end