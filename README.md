# AI Resume Builder

AI Resume Builder is a full-stack project with a Flutter Android client and Node.js backend that helps users generate professional resumes with AI assistance, template selection, cloud storage, and PDF export.

## Repository Structure

- `mobile-app/` Flutter mobile client
- `backend/` Node.js + Express API service
- `docs/` architecture and product documentation

## Features

- Email + Google sign in (Firebase Authentication)
- Multi-step resume creation wizard
- AI-generated summary, skill suggestions, and project enhancements
- Template selection and resume preview
- PDF generation and sharing
- Firestore data persistence and Firebase Storage support

## Quick Start

### Mobile App

```bash
cd mobile-app
flutter pub get
flutter run
```

### Backend

```bash
cd backend
npm install
npm run dev
```

## Environment Variables

Backend `.env` file:

```env
PORT=8080
NODE_ENV=development
OPENAI_API_KEY=your_api_key
OPENAI_MODEL=gpt-4o-mini
FIREBASE_PROJECT_ID=your_project_id
FIREBASE_CLIENT_EMAIL=service-account-email
FIREBASE_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----\n"
```

## Android Release Build

```bash
cd mobile-app
flutter build appbundle --release
```

Generated bundle path:
`mobile-app/build/app/outputs/bundle/release/app-release.aab`

## Play Store Readiness Checklist

- Configure package name and signing config
- Add privacy policy URL
- Upload screenshots and app icon
- Complete content rating and data safety forms
- Upload AAB to Google Play Console
