class JsonUtils {
  static DateTime parseDatetimeFromJson(dynamic value) => DateTime.tryParse(value.toString()) ?? DateTime(1970);

  static num parseNumFromJson(dynamic value) => num.tryParse(value.toString()) ?? 0.0;

  static int parseIntFromJson(dynamic value) => int.tryParse(value.toString()) ?? 0;

  static String parseStringFromJson(dynamic value) => value ?? "";
}
