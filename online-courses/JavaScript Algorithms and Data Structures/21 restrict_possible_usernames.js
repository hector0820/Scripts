let username = "JackOfAllTrades";
let userCheck = /^[a-z]([0-9]{2,}|[a-z]+\d*)$/ig; // Cambia esta línea
let result = userCheck.test(username);
