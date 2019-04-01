def consolidate_cart(cart)
  consolidated_cart = {}
  count = 0
  cart.each do |items_hash|
    items_hash.each do |name, data|
      if consolidated_cart[name].nil?
        consolidated_cart[name] = data.merge({:count=> 1})
      else
        consolidated_cart[name][:count] +=1
      end
    end
  end
  consolidated_cart
end

def apply_coupons(cart, coupons)
  hash = cart
    coupons.each do |coupon_hash|
      name = coupon_hash[:item]

      if !hash[name].nil? && hash[name][:count] >= coupon_hash[:num]
        temp = {"#{name} W/COUPON" => {
          :price => coupon_hash[:cost],
          :clearance => hash[name][:clearance],
          :count => 1
          }
        }

        if hash["#{name} W/COUPON"].nil?
          hash.merge!(temp)
        else
          hash["#{name} W/COUPON"][:count] += 1
        end

        hash[name][:count] -= coupon_hash[:num]
      end
    end
    hash
end

def apply_clearance(cart)
  cart.each do |item, hash|
    if hash[:clearance] == true
      hash[:price] = (0.8 * hash[:price]).round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  new_cart = consolidate_cart(cart)
  coupon_cart = apply_coupons(new_cart, coupons)
  clearance_cart = apply_clearance(coupon_cart)
  sum = 0
  clearance_cart.each do |item, hash|
      sum += hash[:price] * hash[:count]
    end
      if sum > 100
        return sum*0.9
      else
        return sum
  end
end
