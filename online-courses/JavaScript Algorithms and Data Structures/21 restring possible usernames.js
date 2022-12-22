let username = "JackOfAllTrades";
let userCheck = /^[a-z][a-z]+\d*$|^[a-z]\d\d+$/i;
let result = userCheck.test(username);
console.log(result)

/*
    ^ start of input
    [a-z] first character is a letter
    [a-z]+ following character are letters
    \d*$ input ends with 0 or more digits
    | or
    ^[a-z] firts character is a letter
    \d\d+ following characters are 2 or more digits
    $ end of input
*/

// Second Options

let username = "JackOfAllTrades";
const userCheck = /^[a-z]([0-9]{2,}|[a-z]+\d*)$/i;
let result = userCheck.test(username);

/*
    ^ start of input
    [a-z] firts character is a letter
    [0-9]{2,} ends with two or more numbers
    | or
    [a-z]+ has one or more letters next
    \d* and ends with zero or more numbers
    $ end of input
    i ignore case of input
*/
