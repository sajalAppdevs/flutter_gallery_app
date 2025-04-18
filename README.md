# Flutter Gallery App

A beautiful cross-platform Flutter application that displays a gallery of images fetched from Pixabay. The app showcases modern Flutter development practices and provides a smooth user experience for browsing and viewing images.

## Features

- Grid-based gallery layout
- Image details view with likes and views count
- Responsive design that works across all platforms
- Integration with Pixabay API for high-quality images
- Cross-platform support (Android, iOS, Web, Windows, Linux, macOS)

## Getting Started

### Prerequisites

- Flutter SDK (>=3.2.2)
- Dart SDK (>=3.2.2)
- A Pixabay API key

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter_gallery_app.git
   ```

2. Navigate to the project directory:
   ```bash
   cd flutter_gallery_app
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- `flutter`: The core Flutter framework
- `cupertino_icons`: ^1.0.2 - iOS-style icons
- `http`: ^0.13.3 - HTTP client for API requests
- `flutter_lints`: ^2.0.0 - Recommended lints for Flutter apps

## Project Structure

```
lib/
├── constants/
│   └── url.consts.dart    # API endpoints and constants
├── data/
│   └── fetch_image.dart   # Image fetching logic
├── screen/
│   ├── detail.ui.dart     # Image detail screen
│   └── gallery.ui.dart    # Main gallery screen
└── main.dart             # App entry point
```

## Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ Linux
- ✅ macOS

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Images provided by [Pixabay](https://pixabay.com/)
- Built with [Flutter](https://flutter.dev/)
