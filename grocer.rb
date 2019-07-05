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
  coupons.each do |eachcoupon|
    oldkey = emptyHash[eachcoupon[:item]
    itemcount = emptyHash[eachcoupon[:item]][:count]
    cost_per_item = eachcoupon[:cost]/eachcoupon[:num]
    eligible_item_count = itemcount/eachcoupon[:num]
    ineligible_item_count = itemcount%eachcoupon[:num]
    new_key = oldkey + " W/COUPON"
    emptyHash[new_key]= {:price => cost_per_item, :clearance => emptyHash[oldkey][:clearance], :count =>eligible_item_count }
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










