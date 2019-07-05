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
  coupons.length.times do |index|
    oldkey = coupons[index][:item]
    itemcount = emptyHash[oldkey][:count]
    cost_per_item = (coupons[index][:cost])/(coupons[index][:num])
    eligible_item_count = itemcount/coupons[index][:num]
    ineligible_item_count = itemcount%coupons[index][:num]
    new_key = oldkey + " W/COUPON"
    if eligible_item_count >0 
      emptyHash[new_key]= {:price => cost_per_item, :clearance => emptyHash[oldkey][:clearance], :count =>eligible_item_count }
    end
    if ineligible_item_count > 0 
      emptyHash[oldkey][:count] = ineligible_item_count
   else
     delete emptyHash[oldkey]
   end
    
  end
  emptyHash
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end










