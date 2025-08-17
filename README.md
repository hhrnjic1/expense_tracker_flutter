# Flutter Expense Tracker

A comprehensive expense tracking application built with Flutter that helps users manage their personal finances with an intuitive interface and visual charts.

## Features

- **Add Expenses**: Create new expense entries with title, amount, date, and category
- **Expense Categories**: Organize expenses into predefined categories (Food, Travel, Leisure, Work)
- **Visual Charts**: Interactive charts showing expense distribution by category
- **Expense Management**: View, edit, and delete existing expenses
- **Undo Functionality**: Restore accidentally deleted expenses with undo action
- **Dark Mode Support**: Automatic theme switching based on system preferences
- **Cross-Platform**: Runs on iOS, Android, Web, macOS, Linux, and Windows

## Technology Stack

- **Framework**: Flutter (SDK ^3.6.0)
- **Language**: Dart
- **Dependencies**:
  - `cupertino_icons: ^1.0.8` - iOS-style icons
  - `intl: ^0.20.2` - Internationalization and date formatting
  - `uuid: ^4.5.1` - Unique identifier generation
- **Dev Dependencies**:
  - `flutter_lints: ^5.0.0` - Code linting rules
  - `flutter_test` - Testing framework

## Project Structure

```
lib/
├── main.dart                    # App entry point with theme configuration
├── models/
│   └── expense.dart            # Expense and ExpenseBucket data models
└── widget/
    ├── expenses.dart           # Main expenses screen with state management
    ├── new_expense.dart        # Form for adding new expenses
    ├── chart/
    │   ├── chart.dart         # Expense chart widget
    │   └── chart_bar.dart     # Individual chart bar component
    └── expenses_list/
        ├── expenses_list.dart  # List view of all expenses
        └── expense_item.dart   # Individual expense item widget
```

## Key Components

### Expense Model
- **Expense Class**: Core data structure with auto-generated UUID, title, amount, date, and category
- **ExpenseBucket Class**: Groups expenses by category for chart visualization
- **Categories**: Food, Travel, Leisure, Work with corresponding Material Design icons

### User Interface
- **Material Design**: Modern UI with custom color schemes for light and dark themes
- **Responsive Layout**: Adapts to different screen sizes and orientations
- **Modal Forms**: Bottom sheet for adding new expenses with validation
- **Snackbar Notifications**: User feedback for actions like deletion with undo option

### Chart Visualization
- **Category-based Charts**: Visual representation of spending by category
- **Gradient Design**: Attractive chart styling with theme-aware colors
- **Dynamic Scaling**: Chart bars scale relative to highest category spending

## Getting Started

### Prerequisites
- Flutter SDK ^3.6.0
- Dart SDK
- IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd expenses_tracker_flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Building for Production

- **Android**: `flutter build apk` or `flutter build appbundle`
- **iOS**: `flutter build ios`
- **Web**: `flutter build web`
- **Desktop**: `flutter build windows/macos/linux`

## Usage

1. **Adding Expenses**: Tap the '+' button in the app bar to open the expense form
2. **Filling Details**: Enter title, amount, select date, and choose category
3. **Viewing Charts**: The top section displays a visual breakdown of expenses by category
4. **Managing Expenses**: Swipe to delete expenses, use undo to restore
5. **Theme Switching**: The app automatically adapts to your system's light/dark mode preference

## Development

### Code Style
- Follows Flutter/Dart best practices
- Uses Material Design guidelines
- Implements proper state management with StatefulWidget
- Includes input validation and error handling

### Architecture
- **Model-View Pattern**: Clear separation between data models and UI components
- **Widget Composition**: Modular widget structure for maintainability
- **State Management**: Local state management using setState()

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Material Design Guidelines](https://material.io/design)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
