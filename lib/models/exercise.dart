import 'package:objectbox/objectbox.dart';

import 'exercise_json.dart';

@Entity()
class Exercise {
  // Annotate with @Id() if name isn't "id" (case insensitive).
  int id = 0;
  String? name;
  Force? force;
  Level? level;
  Mechanic? mechanic;
  Equipment? equipment;
  List<AryMuscle>? primaryMuscles;
  List<AryMuscle>? secondaryMuscles;
  List<String>? instructions;
  Category? category;

  Exercise({
    this.name,
    this.force,
    this.level,
    this.mechanic,
    this.equipment,
    this.primaryMuscles,
    this.secondaryMuscles,
    this.instructions,
    this.category,
  });
}
