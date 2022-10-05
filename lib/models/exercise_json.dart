// To parse this JSON data, do
//
//     final exercise = exerciseFromJson(jsonString);

import 'dart:convert';

ExerciseJson exerciseFromJson(String str) => ExerciseJson.fromJson(json.decode(str));

String exerciseToJson(ExerciseJson data) => json.encode(data.toJson());

class ExerciseJson {
  ExerciseJson({
    required this.exercises,
  });

  List<ExerciseElement> exercises;

  factory ExerciseJson.fromJson(Map<String, dynamic> json) => ExerciseJson(
        exercises: List<ExerciseElement>.from(
            json["exercises"].map((x) => ExerciseElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "exercises": List<dynamic>.from(exercises.map((x) => x.toJson())),
      };
}

class ExerciseElement {
  ExerciseElement({
    required this.name,
    required this.force,
    required this.level,
    required this.mechanic,
    required this.equipment,
    required this.primaryMuscles,
    required this.secondaryMuscles,
    required this.instructions,
    required this.category,
  });

  String name;
  Force? force;
  Level? level;
  Mechanic? mechanic;
  Equipment? equipment;
  List<AryMuscle> primaryMuscles;
  List<AryMuscle> secondaryMuscles;
  List<String> instructions;
  Category? category;

  factory ExerciseElement.fromJson(Map<String, dynamic> json) =>
      ExerciseElement(
        name: json["name"],
        force: json["force"] == null ? null : forceValues.map[json["force"]],
        level: levelValues.map[json["level"]],
        mechanic: json["mechanic"] == null
            ? null
            : mechanicValues.map[json["mechanic"]],
        equipment: json["equipment"] == null
            ? null
            : equipmentValues.map[json["equipment"]],
        primaryMuscles: List<AryMuscle>.from(
            json["primaryMuscles"].map((x) => aryMuscleValues.map[x])),
        secondaryMuscles: List<AryMuscle>.from(
            json["secondaryMuscles"].map((x) => aryMuscleValues.map[x])),
        instructions: List<String>.from(json["instructions"].map((x) => x)),
        category: categoryValues.map[json["category"]],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "force": force == null ? null : forceValues.reverse[force],
        "level": levelValues.reverse[level],
        "mechanic": mechanic == null ? null : mechanicValues.reverse[mechanic],
        "equipment":
            equipment == null ? null : equipmentValues.reverse[equipment],
        "primaryMuscles": List<dynamic>.from(
            primaryMuscles.map((x) => aryMuscleValues.reverse[x])),
        "secondaryMuscles": List<dynamic>.from(
            secondaryMuscles.map((x) => aryMuscleValues.reverse[x])),
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
        "category": categoryValues.reverse[category],
      };
}

enum Category {
  STRENGTH,
  STRETCHING,
  PLYOMETRICS,
  STRONGMAN,
  POWERLIFTING,
  CARDIO,
  OLYMPIC_WEIGHTLIFTING
}

final categoryValues = EnumValues({
  "cardio": Category.CARDIO,
  "olympic weightlifting": Category.OLYMPIC_WEIGHTLIFTING,
  "plyometrics": Category.PLYOMETRICS,
  "powerlifting": Category.POWERLIFTING,
  "strength": Category.STRENGTH,
  "stretching": Category.STRETCHING,
  "strongman": Category.STRONGMAN
});

enum Equipment {
  BODY_ONLY,
  MACHINE,
  OTHER,
  FOAM_ROLL,
  KETTLEBELLS,
  DUMBBELL,
  CABLE,
  BARBELL,
  BANDS,
  MEDICINE_BALL,
  EXERCISE_BALL,
  E_Z_CURL_BAR
}

final equipmentValues = EnumValues({
  "bands": Equipment.BANDS,
  "barbell": Equipment.BARBELL,
  "body only": Equipment.BODY_ONLY,
  "cable": Equipment.CABLE,
  "dumbbell": Equipment.DUMBBELL,
  "exercise ball": Equipment.EXERCISE_BALL,
  "e-z curl bar": Equipment.E_Z_CURL_BAR,
  "foam roll": Equipment.FOAM_ROLL,
  "kettlebells": Equipment.KETTLEBELLS,
  "machine": Equipment.MACHINE,
  "medicine ball": Equipment.MEDICINE_BALL,
  "other": Equipment.OTHER
});

enum Force { PULL, PUSH, STATIC }

final forceValues = EnumValues(
    {"pull": Force.PULL, "push": Force.PUSH, "static": Force.STATIC});

enum Level { BEGINNER, INTERMEDIATE, EXPERT }

final levelValues = EnumValues({
  "beginner": Level.BEGINNER,
  "expert": Level.EXPERT,
  "intermediate": Level.INTERMEDIATE
});

enum Mechanic { COMPOUND, ISOLATION }

final mechanicValues = EnumValues(
    {"compound": Mechanic.COMPOUND, "isolation": Mechanic.ISOLATION});

enum AryMuscle {
  ABDOMINALS,
  HAMSTRINGS,
  ADDUCTORS,
  QUADRICEPS,
  BICEPS,
  SHOULDERS,
  CHEST,
  MIDDLE_BACK,
  CALVES,
  GLUTES,
  LOWER_BACK,
  LATS,
  TRICEPS,
  TRAPS,
  FOREARMS,
  NECK,
  ABDUCTORS
}

final aryMuscleValues = EnumValues({
  "abdominals": AryMuscle.ABDOMINALS,
  "abductors": AryMuscle.ABDUCTORS,
  "adductors": AryMuscle.ADDUCTORS,
  "biceps": AryMuscle.BICEPS,
  "calves": AryMuscle.CALVES,
  "chest": AryMuscle.CHEST,
  "forearms": AryMuscle.FOREARMS,
  "glutes": AryMuscle.GLUTES,
  "hamstrings": AryMuscle.HAMSTRINGS,
  "lats": AryMuscle.LATS,
  "lower back": AryMuscle.LOWER_BACK,
  "middle back": AryMuscle.MIDDLE_BACK,
  "neck": AryMuscle.NECK,
  "quadriceps": AryMuscle.QUADRICEPS,
  "shoulders": AryMuscle.SHOULDERS,
  "traps": AryMuscle.TRAPS,
  "triceps": AryMuscle.TRICEPS
});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
