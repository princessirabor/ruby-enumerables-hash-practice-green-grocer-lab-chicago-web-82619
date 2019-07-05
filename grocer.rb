def consolidate_cart(cart)
  # code here
  keyarray= []
  emptyHash = {}
    cart.each do |eachcart|
    eachcart.reduce({}) do |memo, (key, value)|
    keyarray.push(key)
    emptyHash[key] = value
    end
  end
  keyarray.each do |eachkey|
    emptyHash[eachkey][:count] = keyarray.count(eachkey)
  end
  emptyHash
end

def apply_coupons(cart, coupons)
  # code here
  cart_hash = consolidate_cart(cart)
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end










