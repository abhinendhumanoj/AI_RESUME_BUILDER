const { z } = require('zod');
const { generateResumeContent } = require('../services/aiService');

const aiRequestSchema = z.object({
  jobRole: z.string().min(2),
  skills: z.array(z.string()).default([]),
  education: z.string().default(''),
  projects: z.array(z.string()).default([]),
});

async function generate(req, res, next) {
  try {
    const payload = aiRequestSchema.parse(req.body);
    const data = await generateResumeContent(payload);
    res.json(data);
  } catch (error) {
    next(error);
  }
}

module.exports = { generate };
