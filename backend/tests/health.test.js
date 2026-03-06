const test = require('node:test');
const assert = require('node:assert/strict');

const { app } = require('../src/app');

test('health endpoint responds with status ok', async () => {
  const server = app.listen(0);
  const { port } = server.address();

  const response = await fetch(`http://127.0.0.1:${port}/health`);
  const data = await response.json();

  assert.equal(response.status, 200);
  assert.equal(data.status, 'ok');

  server.close();
});
