# ChatApp

[![Flutter](https://img.shields.io/badge/Flutter-3.13.8-blue?logo=flutter)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

A cross-platform real-time chat application built with **Flutter** for mobile, web, and desktop.  
Send and receive messages instantly with a clean and modern interface.

---

## Features

- Real-time one-to-one messaging  
- Image, file, and media support  
- Cross-platform: Android, iOS, Web, Windows, macOS, Linux  
- Firebase backend support (auth, storage, messaging)  
- Simple and maintainable architecture  

---

## Project Structure


- **lib/** — Flutter code (UI, business logic, models, services)  
- Platform folders — native code for Android, iOS, Web, Desktop  
- **pubspec.yaml** — dependencies and assets  

---

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev)  
- A code editor (VS Code, Android Studio)  
- Firebase project (if using Firebase backend)  

### Run

```bash
  git clone https://github.com/ronik62/ChatApp.git
  cd ChatApp
  flutter pub get

  # Run on mobile
  flutter run

  # Run on web
  flutter run -d chrome

  # Run on desktop
  flutter run -d windows
  flutter run -d macos
  flutter run -d linux
```
### Dependencies (examples)

| Package                     | Purpose                         |
| --------------------------- | ------------------------------- |
| firebase_core               | Initialize Firebase             |
| firebase_auth               | Authentication                  |
| cloud_firestore             | Real-time database              |
| firebase_storage            | Media storage                   |
| provider / riverpod         | State management                |


### Future Enhancements

  - Group or channel chats

  - Message reactions and read receipts

  - Push notifications

  - End-to-end encryption

  - Voice/video calls

  - Offline support & caching

  - Dark mode & localization
