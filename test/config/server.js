({
  host: '::',
  balancer: 8000,
  protocol: 'http',
  ports: [8001, 8002],
  nagle: true,
  timeouts: {
    start: 30000,
    stop: 30000,
    request: 5000,
    reload: 1000,
  },
  queue: {
    concurrency: 1000,
    size: 2000,
    timeout: 3000,
  },
  workers: {
    pool: 2,
  },
});