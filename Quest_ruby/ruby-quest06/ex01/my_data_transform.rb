##
##
## QWASAR.IO -- my_data_transform
##
##
## @param {String} param_1
##
## @return {string[]}
##

require 'date'
 
def age (num) 
    num = num.to_i
    if 21 > num
        return '1->20'
    elsif num < 41
        return '21->40'
    elsif num < 66
        return '41->65'
    else
        return '66->99'
    end
end

def email (mail)
    return mail.split('@')[1]
end

def time (date)
    date = DateTime.strptime(date, '%Y-%m-%d %H:%M:%S').hour
    if date > 12
        return 'afternoon'
    else
        return 'morning'
    end
end

def my_data_transform(param_1)
    lines = 0
    arr = Array.new
    for line in param_1.split("\n") do
        value = line.split(",")
        if value.length > 1 && lines > 0
            value[4] = email(value[4])
            value[5] = age(value[5])
            value[9] = time(value[9])
        end
        lines += 1
        if value.length > 1
            arr.append(value.join(','))
        end
    end
    return arr
end