# Let's create a method wrap_text that wraps text in symbols of our choice. For example:
#
# wrap_text 'hello', '==='
# should return:
#
# ===hello===
#
# Now that this method works, see if you can use it to generate the string:
#
# ---===###new message###===---

def wrap_text(text, symbol)
  "#{symbol}#{text}#{symbol}"
  puts string
  return
end

wrap_text('hello', '===')
wrap_text('Welcome', '*********')
