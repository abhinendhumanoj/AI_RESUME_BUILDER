# System Architecture

## Mobile Client (Flutter)
- Authentication flow (email/password and Google)
- Resume wizard form management
- AI request orchestration through backend
- Template preview and PDF generation

## Backend (Node.js + Express)
- Auth-protected API for resume CRUD
- AI generation endpoints
- Template metadata endpoints
- Firestore persistence and Firebase Storage support

## Cloud Services
- Firebase Authentication
- Cloud Firestore collections:
  - Users
  - Resumes
  - Education
  - Experience
  - Skills
  - Projects
  - Templates
- Firebase Storage for optional generated PDFs and template assets

## External AI Provider
- OpenAI Chat Completions API
- Configurable model via environment variable
- Prompt template optimized for ATS-friendly summaries

## Data Flow
1. User authenticates in Flutter app.
2. User fills multi-step resume form.
3. App sends profile context and selected role to backend AI endpoint.
4. Backend returns summary, suggested skills, and improved project bullets.
5. App stores resume to Firestore and renders template preview.
6. App exports/share PDF generated locally.
