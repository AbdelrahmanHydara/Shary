class AppValidators {
  static String? requiredField(String? value, {String fieldName = "هذا الحقل"}) {
    if (value == null || value.trim().isEmpty) {
      return "$fieldName مطلوب";
    }
    return null;
  }

  // ✅ التحقق من الإيميل الجامعي (مثلاً لازم ينتهي بـ edu.eg)
  static String? universityEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "البريد الإلكتروني مطلوب";
    }
    // regex بسيط للتحقق من إنه إيميل جامعي
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+edu(\.eg)?$').hasMatch(value)) {
      return "يجب إدخال بريد جامعي صحيح";
    }
    return null;
  }

  // ✅ التحقق من الاسم (لازم يكون حروف بس ومش أقل من 3 حروف)
  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "الاسم مطلوب";
    }
    if (!RegExp(r'^[ء-يa-zA-Z\s]+$').hasMatch(value)) {
      return "الاسم يجب أن يحتوي على حروف فقط";
    }
    if (value.trim().length < 3) {
      return "الاسم قصير جدًا";
    }
    return null;
  }

  // ✅ التحقق من الكلية (مثال: لازم تكون من لستة معينة)
  static String? college(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "اسم الكلية مطلوب";
    }

    // مثال: لستة بالكليات المسموح بها
    List<String> validColleges = [
      "تجارة",
      "هندسة",
      "طب",
      "علوم",
      "حقوق",
      "آداب",
    ];

    if (!validColleges.contains(value.trim())) {
      return "من فضلك اختر كلية صحيحة";
    }

    return null;
  }

  // ✅ التحقق من السنة الدراسية (من 1 لـ 4 مثلاً)
  static String? studyYear(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "السنة الدراسية مطلوبة";
    }

    int? year = int.tryParse(value.trim());
    if (year == null || year < 1 || year > 4) {
      return "السنة الدراسية يجب أن تكون بين 1 و 4";
    }

    return null;
  }

  // ✅ الباسورد (مثلاً 8 حروف على الأقل + رقم + حرف كبير)
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return "كلمة المرور مطلوبة";
    }
    if (value.length < 8) {
      return "كلمة المرور يجب أن تكون 8 حروف على الأقل";
    }
    if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)').hasMatch(value)) {
      return "كلمة المرور يجب أن تحتوي على حرف كبير ورقم";
    }
    return null;
  }
}
