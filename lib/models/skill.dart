class Skill {
  final String name;
  final String category;
  final double level; // 0.0 to 1.0 (e.g., 0.85 = 85%)
  final String? iconName;

  const Skill({
    required this.name,
    required this.category,
    required this.level,
    this.iconName,
  });
}
