class RunLengthEncoding
    def self.encode(t)
      if t == '' then return '' end
      # t = 'AAABBCDDE'
      t = t.split('').each_with_index.map { |c, i| t[i] != t[i + 1] ? [c, i] : nil }.reject(&:nil?).reverse
      t.each_with_index.map { |a, b| [a.append(b)] }
      t = t.map { |c, q, i| t[i + 1].nil? ? [q, c] : [q - t[i+1][1], c] }.reverse
      t[0][0] += 1
      t.map! { |q, c| q == 1 ? [nil, c] : [q, c] }
      t.map { |q, c| q.to_s.concat(c) }.join
    end
  
    def self.decode(t)
      letters = t.split(/\d/).reject { |x| x == '' }
      quantities = t.split(/\D/).reject { |x| x == '' }
      if letters.size != quantities.size then quantities = quantities.reverse.append('1') end
      t = [letters, quantities].transpose
      str = '';
      t.each do |c, q|
        str.concat c[0] * q.to_i
        str.concat c[1, c.size]
      end
      str
    end
  end