# Note App with Provider State Management
Phan Thi Chi -22git


https://github.com/user-attachments/assets/ce875920-b53d-490c-8ec4-5061d2b62ee9


A Flutter note-taking application that demonstrates state management using Provider and ChangeNotifier.

## Features

✨ **Core Functionality:**
- Create new notes with title and content
- Edit existing notes in real-time
- Delete individual notes
- Clear all notes at once
- Live updates across the app

🎨 **UI/UX:**
- Material Design 3
- Responsive layout
- Beautiful card-based note display
- Timestamp tracking (created and updated)
- Empty state with helpful messaging
- Confirmation dialogs for destructive actions

## Technical Implementation

### State Management
- **Provider** - For dependency injection and state management
- **ChangeNotifier** - For notifying listeners of state changes
- **Consumer** - For rebuilding UI when state changes

### Key Components

#### Models
- `Note` - Data model with id, title, content, and timestamps

#### Providers
- `NoteProvider` - Manages the list of notes and provides CRUD operations

#### Screens
- `HomeScreen` - Displays list of notes with options to add, edit, or delete
- `NoteDetailScreen` - Create or edit note with title and content fields

### Technical Requirements Met
✅ Provider package for state management  
✅ ChangeNotifier for reactive updates  
✅ TextField for input  
✅ FloatingActionButton for actions  
✅ Real-time updates across the app  

## Project Structure

```
lib/
├── main.dart                 # App entry point with Provider setup
├── models/
│   └── note.dart            # Note data model
├── providers/
│   └── note_provider.dart   # State management logic
└── screens/
    ├── home_screen.dart     # Main screen with notes list
    └── note_detail_screen.dart  # Note creation/editing screen
```

## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK

### Installation

1. Install dependencies:
```bash
flutter pub get
```

2. Run the app:
```bash
flutter run
```

## How to Use

1. **Create a Note:** Tap the floating action button (+) on the home screen
2. **Edit a Note:** Tap on any note card to open and edit it
3. **Delete a Note:** Tap the delete icon on a note card
4. **Save Changes:** Tap the save button or checkmark icon
5. **Clear All:** Use the clear all button in the app bar

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.1  # State management
  intl: ^0.19.0     # Date formatting
```

## Learning Outcomes

This project demonstrates:
- ✅ App-wide state management with Provider
- ✅ Separation of concerns (Model-View-Provider)
- ✅ Real-time UI updates with ChangeNotifier
- ✅ CRUD operations in Flutter
- ✅ Navigation between screens
- ✅ Form handling and validation
- ✅ Material Design principles

## Future Enhancements

Potential features to add:
- 📱 Local storage (SQLite or SharedPreferences)
- 🔍 Search functionality
- 🏷️ Tags and categories
- 🎨 Color coding for notes
- 📌 Pin important notes
- 🗂️ Archive functionality
- 📤 Export/Import notes

## License

This project is created for educational purposes.
