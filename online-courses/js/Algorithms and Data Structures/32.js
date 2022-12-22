let hello = "   Hello, World!  ";
let wsRegex = /\s{2,}/g; // Cambia esta línea
let result = hello.replace(wsRegex, ''); // Cambia esta línea
