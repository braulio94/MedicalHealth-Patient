class Filiation {

  final String father;
  final String mother;
  final Relationship relationship;

  Filiation({
    this.father,
    this.mother,
    this.relationship,
  });
}

enum Relationship { Father, Mother}