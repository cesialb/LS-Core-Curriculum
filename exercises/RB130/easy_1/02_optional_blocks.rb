# Problem: 
# write a method that takes an optional block
# if block is specified, method should execute and return value returned by block
# if there is no block, method returns desired string

# Mental Model:
# use yield keyword and block_given? to do this
# remember to return the block value

# Algorithm
# yield if block_given?, otherwise print string

def compute
  result = nil

  if block_given?
    result = yield
  else
    result = 'Does not compute.'
  end

  result
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

# better solution
def compute
  return 'Does not compute.' unless block_given?
  yield
end

# further exploration
def compute(arg)
  return 'Does not compute.' unless block_given?
  yield(arg)
end