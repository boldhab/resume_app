class Education {
  final String institution;
  final String degree;
  final String fieldOfStudy;
  final String period;
  final String? location;
  final String? description;

  const Education({
    required this.institution,
    required this.degree,
    required this.fieldOfStudy,
    required this.period,
    this.location,
    this.description,
  });
}
