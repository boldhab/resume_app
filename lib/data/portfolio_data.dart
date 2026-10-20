import '../models/project.dart';
import '../models/skill.dart';
import '../models/education.dart';

class PortfolioData {
  PortfolioData._();

  // Profile details
  static const String name = 'Alex Morgan';
  static const String title = 'Senior Mobile & Full-Stack Developer';
  static const String bio =
      'Passionate software engineer specialized in crafting responsive, performant mobile and web applications with Flutter, Dart, and modern cloud technologies.';
  static const String email = 'alex.morgan@example.com';
  static const String github = 'https://github.com';
  static const String linkedin = 'https://linkedin.com';
  static const String location = 'San Francisco, CA';

  // Skills
  static const List<Skill> skills = [
    Skill(
      name: 'Flutter & Dart',
      category: 'Mobile',
      level: 0.95,
      iconName: 'flutter',
    ),
    Skill(
      name: 'Kotlin & Android',
      category: 'Mobile',
      level: 0.80,
      iconName: 'android',
    ),
    Skill(
      name: 'Swift & iOS',
      category: 'Mobile',
      level: 0.75,
      iconName: 'apple',
    ),
    Skill(
      name: 'TypeScript & React',
      category: 'Frontend',
      level: 0.85,
      iconName: 'react',
    ),
    Skill(
      name: 'Node.js & Express',
      category: 'Backend',
      level: 0.80,
      iconName: 'nodejs',
    ),
    Skill(
      name: 'Firebase & Supabase',
      category: 'Backend',
      level: 0.90,
      iconName: 'firebase',
    ),
    Skill(
      name: 'Git & CI/CD',
      category: 'DevOps',
      level: 0.85,
      iconName: 'git',
    ),
    Skill(
      name: 'REST & GraphQL APIs',
      category: 'Backend',
      level: 0.88,
      iconName: 'api',
    ),
  ];

  // Projects
  static const List<Project> projects = [
    Project(
      id: '1',
      title: 'DevPulse Developer Analytics',
      description:
          'A cross-platform Flutter application providing deep insights and analytics into GitHub repository productivity, PR cycle times, and commit frequency.',
      technologies: ['Flutter', 'Dart', 'GraphQL', 'Provider', 'Charts'],
      githubUrl: 'https://github.com/example/devpulse',
      liveUrl: 'https://devpulse.example.com',
      isFeatured: true,
    ),
    Project(
      id: '2',
      title: 'TaskFlow Agile Manager',
      description:
          'Clean, offline-first Kanban board and sprint planning suite built with Flutter and Hive local database, supporting real-time cloud synchronization.',
      technologies: ['Flutter', 'Hive', 'BLoC', 'WebSockets'],
      githubUrl: 'https://github.com/example/taskflow',
      liveUrl: 'https://taskflow.example.com',
      isFeatured: true,
    ),
    Project(
      id: '3',
      title: 'FitTrack Workout Companion',
      description:
          'Mobile fitness tracker integrating HealthKit and Google Fit for telemetry data, offering custom workout plans and audio guidance.',
      technologies: ['Flutter', 'Riverpod', 'SQLite', 'HealthKit'],
      githubUrl: 'https://github.com/example/fittrack',
      isFeatured: false,
    ),
    Project(
      id: '4',
      title: 'CryptoView Market Radar',
      description:
          'Real-time cryptocurrency valuation dashboard featuring interactive candlestick charts, price alerts, and news aggregation.',
      technologies: ['Flutter', 'WebSockets', 'Dio', 'Material 3'],
      githubUrl: 'https://github.com/example/cryptoview',
      liveUrl: 'https://cryptoview.example.com',
      isFeatured: false,
    ),
  ];

  // Education & Experience
  static const List<Education> educationList = [
    Education(
      institution: 'University of California, Berkeley',
      degree: 'Bachelor of Science',
      fieldOfStudy: 'Computer Science',
      period: '2017 - 2021',
      location: 'Berkeley, CA',
      description:
          'Graduated with honors. Focused on Software Engineering, Mobile Systems, and Human-Computer Interaction.',
    ),
    Education(
      institution: 'Google Developers Certification',
      degree: 'Associate Android Developer',
      fieldOfStudy: 'Mobile App Development',
      period: '2021',
      description:
          'Demonstrated proficiency in building production-ready mobile applications adhering to standard architectural guidelines.',
    ),
  ];
}
