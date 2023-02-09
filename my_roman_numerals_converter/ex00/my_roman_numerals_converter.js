function my_roman_numerals_converter(romanNums) {
    if (isNaN(romanNums))
        return isNaN;
    var digits = String(+romanNums).split(""),
        key = ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM",
               "","X","XX","XXX","XL","L","LX","LXX","LXXX","XC",
               "","I","II","III","IV","V","VI","VII","VIII","IX"],
        rNums = "",
        i = 3;
    while (i--)
    rNums = (key[+digits.pop() + (i * 10)] || "") + rNums;
    return Array(+digits.join("") + 1).join("M") + rNums;
}