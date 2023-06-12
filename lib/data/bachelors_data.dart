library faker.example;

import 'package:faker/faker.dart';
import 'package:finder/models/bachelor.dart';

List<String> maleFirstNames = [
  "John",
  "Michael",
  "Robert",
  "David",
];

List<String> femaleFirstNames = [
  "Mary",
  "Jennifer",
  "Linda",
  "Patricia",
];

List<String> avatarImages = [
  "assets/images/man-1.png",
  "assets/images/man-2.png",
  "assets/images/woman-1.png",
  "assets/images/woman-1.png",
];

List<Bachelor> generateBachelors() {
  List<Bachelor> bachelors = [];
  Faker faker = Faker();

  for (int i = 0; i < 15; i++) {
    String firstName;
    if (i % 2 == 0) {
      firstName = maleFirstNames[i ~/ 2];
    } else {
      firstName = femaleFirstNames[i ~/ 2];
    }

    String lastName = faker.person.lastName();
    Gender gender = i % 2 == 0 ? Gender.male : Gender.female;
    String avatar = avatarImages[i % avatarImages.length];
    List<Gender> searchFor = i % 2 == 0 ? [Gender.female] : [Gender.male];
    String job = faker.job.title();
    String description = faker.lorem.sentence();

    Bachelor bachelor = Bachelor(
      firstname: firstName,
      lastname: lastName,
      gender: gender,
      avatar: avatar,
      searchFor: searchFor,
      job: job,
      description: description,
    );

    bachelors.add(bachelor);
  }

  return bachelors;
}
