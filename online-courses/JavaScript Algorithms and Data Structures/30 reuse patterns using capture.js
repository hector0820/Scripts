let repeatNum = "42 42 42";
let reRegex = /^(\d+)(\s)\1\2\1$/; // Cambia esta línea
let result = reRegex.test(repeatNum);
