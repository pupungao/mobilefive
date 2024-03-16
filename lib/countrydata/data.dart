

class Country {
  final String? name;
  final String? abbreviation;
  final String? capital;
  final String? currency;
  final int? phone;
  final int? population;
  final String? flag;
  final String? emblem;
  final String? orthographic;

  Country({
    required this.name,
    required this.abbreviation,
    required this.capital,
    required this.currency,
    required this.phone,
    required this.population,
    required this.flag,
    required this.emblem,
    required this.orthographic,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      abbreviation: json['abbreviation'],
      capital: json['capital'],
      currency: json['currency'],
      phone: json['phone'],
      population: json['population'],
      flag: json['media']['flag'],
      emblem: json['media']['emblem'],
      orthographic: json['media']['orthographic'],
    );
  }
}