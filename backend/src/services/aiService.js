const OpenAI = require('openai');

const client = new OpenAI({ apiKey: process.env.OPENAI_API_KEY });

async function generateResumeContent({ jobRole, skills, education, projects }) {
  const prompt = `Generate a professional resume summary for a candidate applying for the role of ${jobRole}.\n\nCandidate information:\n\nSkills: ${skills.join(', ')}\nEducation: ${education}\nProjects: ${projects.join('; ')}\n\nThe summary should be professional, concise, and optimized for ATS systems. Also provide recommended skills and improved project descriptions.`;

  const response = await client.chat.completions.create({
    model: process.env.OPENAI_MODEL || 'gpt-4o-mini',
    messages: [
      { role: 'system', content: 'You are an expert resume writer.' },
      { role: 'user', content: prompt },
    ],
    response_format: { type: 'json_object' },
  });

  return JSON.parse(response.choices[0].message.content || '{}');
}

module.exports = { generateResumeContent };
