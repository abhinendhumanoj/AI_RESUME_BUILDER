const { initFirebase } = require('../config/firebase');

async function createResume(req, res, next) {
  try {
    const admin = initFirebase();
    const db = admin.firestore();
    const doc = await db.collection('Resumes').add({
      ...req.body,
      created_at: new Date().toISOString(),
    });
    res.status(201).json({ resumeId: doc.id });
  } catch (error) {
    next(error);
  }
}

module.exports = { createResume };
