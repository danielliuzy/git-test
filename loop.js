const { exec } = require("child_process");

const startTime = Date.now();

while (Date.now() - startTime < 60000) {
  exec('git commit --allow-empty -m "js commit"');
}
