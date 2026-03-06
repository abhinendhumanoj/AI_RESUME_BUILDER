const express = require('express');
const cors = require('cors');

const aiRoutes = require('./routes/aiRoutes');
const resumeRoutes = require('./routes/resumeRoutes');
const { errorHandler } = require('./middleware/errorHandler');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/health', (req, res) => {
  res.json({ status: 'ok', service: 'ai-resume-builder-backend' });
});

app.use('/api/ai', aiRoutes);
app.use('/api/resumes', resumeRoutes);
app.use(errorHandler);

module.exports = { app };
