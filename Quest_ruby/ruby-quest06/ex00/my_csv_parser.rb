##
##
## QWASAR.IO -- my_csv_parser
##
##
## @param {String} param_1
## @param {String} param_2
##
## @return {string[][]}
##


def my_csv_parser(param_1, param_2)

     num = param_1.split("\n")[0].split(",")
     num1 = param_1.split("\n")[1].split(",")
        return [num,num1]

    end