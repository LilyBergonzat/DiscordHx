require('shelljs/global');
const fs = require('fs');

try {
    fs.statSync('./out');
} catch (e) {
    fs.mkdirSync('./out');
}

exec('cd out && npm install discord.js');
