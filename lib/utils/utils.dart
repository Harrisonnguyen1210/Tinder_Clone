// Calculate age based on date of birth
int calculateAge(dynamic dateOfBirth) {
  final DateTime currentDate = DateTime.now();
  final DateTime? birthDate = DateTime.tryParse(dateOfBirth);
  if (birthDate == null) return 0;
  int age = currentDate.year - birthDate.year;
  int month1 = currentDate.month;
  int month2 = birthDate.month;
  if (month2 > month1) {
    age--;
  } else if (month1 == month2) {
    int day1 = currentDate.day;
    int day2 = birthDate.day;
    if (day2 > day1) {
      age--;
    }
  }
  return age;
}
