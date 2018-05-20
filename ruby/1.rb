# But wait, there's more! Ruby also allows you to index strings using a Range or a Regexp object as well. We will discuss these methods in the future.
#
# In this challenge, your task is to code a serial_average method which is described below:
#
# It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
# It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string, and ZZ.ZZ is the average of XX.XX and YY.YY.
# All numbers are rounded off to two decimal places.
# For example:
#
# > serial_average('002-10.00-20.00')
# "002-15.00"

string = '002-10.00-20.00'

# Your code here
def serial_average(string)
    x = /^\d{3}/.match(string)
    y = /-\d{2}.\d{2}-/.match(string).to_s.gsub('-', '').to_f.round(2)
    z = /-\d{2}.\d{2}$/.match(string).to_s.gsub('-', '').to_f.round(2)
    y_z_avg = ((y + z)/2.00).round(2)
    "#{x}-#{y_z_avg}"
end
