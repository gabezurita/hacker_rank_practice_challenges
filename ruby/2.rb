# Challenge: Write the method count_multibyte_char which takes a string as input and returns the number of multibyte characters (byte size > 1) in it.
#
# For example:
#
# > count_multibyte_char('¥1000')
# 1

string = '¥1000'

def count_multibyte_char(string)
    big_bytes = []
    string.each_char {|c| big_bytes << c if (c.bytesize > 1)}
    big_bytes.count
end
