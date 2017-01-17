const fs = require('fs');

try {
    fs.statSync('./out');
} catch (e) {
    fs.mkdirSync('./out');
}
