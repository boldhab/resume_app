import 'package:flutter/material.dart';
import '../data/portfolio_data.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  String _selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final projects = PortfolioData.projects;

    // Collect all unique technologies for filtering
    final allTechs = <String>{'All'};
    for (final p in projects) {
      allTechs.addAll(p.technologies);
    }

    final filteredProjects = _selectedFilter == 'All'
        ? projects
        : projects
            .where((p) => p.technologies.contains(_selectedFilter))
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured Works & Open Source',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Explore applications, libraries, and tools I have built.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: allTechs.map((tech) {
                        final isSelected = _selectedFilter == tech;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: FilterChip(
                            label: Text(tech),
                            selected: isSelected,
                            onSelected: (selected) {
                              setState(() {
                                _selectedFilter = selected ? tech : 'All';
                              });
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final project = filteredProjects[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ProjectCard(project: project),
                  );
                },
                childCount: filteredProjects.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
