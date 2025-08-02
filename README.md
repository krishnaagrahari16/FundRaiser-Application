# Fundraising App 🎯

A modern, intuitive Flutter application designed for fundraising interns to manage their campaigns, track donations, and engage with their community.

## 📱 App Overview

The Fundraising App is a comprehensive mobile solution that empowers fundraising interns to efficiently manage their fundraising activities. Built with Flutter, it offers a seamless cross-platform experience with a beautiful red and white theme.

## ✨ Features

### 🔐 Authentication
- **Get Started Page**: Welcome screen with app branding and introduction
- **Sign In**: Secure login with email and password
- **Sign Up**: Easy registration with terms and conditions acceptance

### 📊 Dashboard
- **Intern Profile**: Display of intern name and role
- **Referral System**: Unique referral code generation and sharing
- **Donation Tracking**: Real-time tracking of total donations raised
- **Rewards System**: Unlockable achievements and milestones
- **Quick Navigation**: Easy access to all app features

### 🏆 Leaderboard
- **Dual View Modes**: 
  - List view for detailed rankings
  - Bar chart view for visual comparison
- **Real-time Rankings**: Live updates of fundraiser performance
- **Interactive Toggle**: Switch between view modes seamlessly

### 📢 Announcements
- **News Feed**: Latest updates and announcements
- **Important Notices**: Critical information for fundraisers
- **Event Updates**: Upcoming events and deadlines

### 👤 Profile Management
- **User Profile**: Complete profile with statistics
- **Personal Stats**: Track individual performance metrics
- **Settings**: Customizable preferences and notifications
- **Account Management**: Privacy settings and support options
- **Secure Logout**: Safe session termination

## 🎨 Design System

### Color Scheme
- **Primary**: Red (`Colors.red.shade600`)
- **Secondary**: White and light grays
- **Accent**: Various shades for data visualization

### UI Components
- **Material Design**: Following Google's Material Design principles
- **Responsive Layout**: Optimized for various screen sizes
- **Smooth Animations**: Engaging transitions and interactions
- **Accessibility**: Support for screen readers and accessibility features

## 🏗️ Technical Architecture

### Framework & Language
- **Flutter**: Cross-platform mobile development framework
- **Dart**: Programming language optimized for UI development

### Project Structure
```
lib/
├── main.dart                    # App entry point and theme configuration
└── pages/
    ├── get_started_page.dart    # Welcome and onboarding screen
    ├── sign_in_page.dart        # User authentication - login
    ├── sign_up_page.dart        # User registration
    ├── dashboard_page.dart      # Main dashboard with statistics
    ├── leaderboard_page.dart    # Rankings with dual view modes
    ├── announcements_page.dart  # News and updates feed
    └── profile_page.dart        # User profile and settings
```

### Key Dependencies
- `flutter`: Core Flutter framework
- `cupertino_icons`: iOS-style icons
- Material Design components

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (^3.7.2)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd fund_raising_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Development Setup
1. Ensure Flutter is properly installed and configured
2. Set up your preferred IDE (Android Studio, VS Code, or IntelliJ)
3. Connect a device or start an emulator
4. Run `flutter doctor` to verify setup

## 📱 Supported Platforms

- ✅ **Android** (API level 21+)
- ✅ **iOS** (iOS 12.0+)
- ✅ **Web** (Chrome, Safari, Firefox)
- ✅ **Windows** (Windows 10+)
- ✅ **macOS** (macOS 10.14+)
- ✅ **Linux** (64-bit)

## 🔧 Configuration

### App Configuration
- **App Name**: Fundraising App
- **Version**: 1.0.0
- **Build Number**: 1

### Theme Customization
The app uses a consistent red and white color scheme that can be customized in `main.dart`:

```dart
theme: ThemeData(
  primarySwatch: Colors.red,
  primaryColor: Colors.red.shade600,
  // Additional theme configurations
)
```

## 📊 App Flow

1. **Welcome**: Users start with the Get Started page
2. **Authentication**: Sign up or sign in to access features
3. **Dashboard**: Central hub showing all key metrics and navigation
4. **Feature Access**: Navigate to leaderboard, announcements, or profile
5. **Profile Management**: Update settings and logout when needed

## 👤 User Personas

### Primary User: Fundraising Intern
- **Name**: Krishna Kumar Agrahari
- **Role**: Active fundraising intern
- **Referral Code**: KRISHNA2025
- **Needs**: Track donations, manage referrals, view progress
- **Goals**: Achieve fundraising targets and climb leaderboard

## 🔐 Security Features

- Secure authentication flow
- Session management
- Data privacy protection
- Logout confirmation dialogs

## 🎯 Future Enhancements

### Planned Features
- [ ] Push notifications for announcements
- [ ] Social media integration for sharing
- [ ] Advanced analytics and reporting
- [ ] Campaign creation and management
- [ ] Team collaboration features
- [ ] Payment gateway integration
- [ ] Real-time chat support

### Technical Improvements
- [ ] State management with Provider/Bloc
- [ ] Backend API integration
- [ ] Offline data caching
- [ ] Performance optimization
- [ ] Automated testing suite

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow Flutter/Dart coding standards
- Maintain consistent naming conventions
- Add comments for complex logic
- Test on multiple devices and screen sizes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support and questions:
- 📧 Email: support@fundraisingapp.com
- 💬 Discord: [Community Server]
- 📱 In-app: Help & Support section

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for UI guidelines
- Contributors and beta testers
- Fundraising community for feedback

---

## 📈 App Statistics

- **Current User**: Krishna Kumar Agrahari
- **Total Donations Tracked**: ₹5,000+
- **Leaderboard Position**: #7
- **Referrals Made**: 12
- **Member Since**: August 2025

## 🔄 Version History

### v1.0.0 (Current)
- ✅ Complete authentication system
- ✅ Interactive dashboard with real-time stats
- ✅ Dual-mode leaderboard (list & bar chart)
- ✅ Announcements feed
- ✅ Comprehensive profile management
- ✅ Red/white theme implementation
- ✅ Cross-platform compatibility

---

**Built with ❤️ using Flutter | Designed for Fundraising Excellence**
