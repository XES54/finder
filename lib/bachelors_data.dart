import 'package:finder/models/bachelor.dart';

List<Bachelor> generateBachelors() {
  List<Bachelor> bachelors = [];

  // Hommes
  bachelors.addAll([
    Bachelor(
      firstname: "John",
      lastname: "Doe",
      gender: Gender.male,
      avatar: "assets/images/man-1.png",
      searchFor: [Gender.female],
      job: "Ingénieur",
      description:
          "Homme célibataire à la recherche d'une femme pour une relation sérieuse.",
    ),
    // Ajoutez d'autres hommes ici...
  ]);

  // Femmes
  bachelors.addAll([
    Bachelor(
      firstname: "Jane",
      lastname: "Smith",
      gender: Gender.female,
      avatar: "assets/images/woman-1.png",
      searchFor: [Gender.male],
      job: "Architecte",
      description:
          "Femme indépendante et passionnée à la recherche d'un homme attentionné.",
    ),
    // Ajoutez d'autres femmes ici...
  ]);

  // Générer les bachelors fictifs restants
  for (int i = 0; i < 13; i++) {
    bachelors.add(
      Bachelor(
        firstname: "FirstName$i",
        lastname: "LastName$i",
        gender: i % 2 == 0 ? Gender.male : Gender.female,
        avatar:
            "assets/images/avatar_${i % 2 == 0 ? "male" : "female"}_${i % 4 + 1}.png",
        searchFor: i % 2 == 0 ? [Gender.female] : [Gender.male],
        job: "Job $i",
        description: "Description $i",
      ),
    );
  }

  return bachelors;
}
