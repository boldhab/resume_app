import 'package:flutter/material.dart';
import '../data/portfolio_data.dart';
import '../widgets/profile_header.dart';
import '../widgets/section_title.dart';
import '../widgets/skill_card.dart';
import '../widgets/project_card.dart';
import 'projects_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          _HomeContent(),
          ProjectsScreen(),
          AboutScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder_outlined),
            selectedIcon: Icon(Icons.folder),
            label: 'Projects',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'About',
          ),
        ],
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    final featuredProjects =
        PortfolioData.projects.where((p) => p.isFeatured).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile header
            ProfileHeader(
              name: PortfolioData.name,
              title: PortfolioData.title,
              bio: PortfolioData.bio,
              location: PortfolioData.location,
              email: PortfolioData.email,
              onContactTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
            ),
            const SizedBox(height: 24),

            // Skills Section
            const SectionTitle(
              title: 'Key Skills',
              subtitle: 'Core competencies and technologies',
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.6,
                  ),
                  itemCount: PortfolioData.skills.length,
                  itemBuilder: (context, index) {
                    final skill = PortfolioData.skills[index];
                    return SkillCard(skill: skill);
                  },
                );
              },
            ),
            const SizedBox(height: 24),

            // Featured Projects
            SectionTitle(
              title: 'Featured Projects',
              subtitle: 'Selected works demonstrating impact and architecture',
              actionLabel: 'View all',
              onActionTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ProjectsScreen()),
                );
              },
            ),
            ...featuredProjects.map((project) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ProjectCard(project: project),
              );
            }),
          ],
        ),
      ),
    );
  }
}
