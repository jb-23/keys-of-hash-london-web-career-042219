
class Hash
  def keys_of(*arg)
    self.collect do | key, val |
      flag = false
      arg.each do | arg_n |
        flag = true if val == arg_n
      end
      flag ? key : nil
    end.compact
  end
end
