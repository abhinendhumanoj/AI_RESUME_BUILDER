function errorHandler(err, req, res, next) {
  console.error(err);
  if (err.name === 'ZodError') {
    return res.status(400).json({ message: 'Invalid request', issues: err.issues });
  }
  return res.status(500).json({ message: err.message || 'Internal server error' });
}

module.exports = { errorHandler };
