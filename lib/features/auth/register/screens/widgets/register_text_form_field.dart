import 'package:flutter/material.dart';
import 'package:shary/core/helpers/app_validators.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/widgets/app_dropdown_form_field.dart';
import 'package:shary/core/widgets/app_text_form_field.dart';

class RegisterTextFormField extends StatefulWidget {
  const RegisterTextFormField({super.key});

  @override
  State<RegisterTextFormField> createState() => _RegisterTextFormFieldState();
}

class _RegisterTextFormFieldState extends State<RegisterTextFormField> {
  // قيم Dropdown
  String? selectedUniversity;

  String? selectedFaculty;

  String? selectedYear;

  final Map<String, List<String>> universityFaculties = {
    "جامعة القاهرة": ["علوم","تجارة", "هندسة", "طب", "حقوق"],
    "جامعة طنطا": ["تجارة", "زراعة","صيدلة","هندسة", "طب","علوم", "آداب "],
    "جامعة المنصورة": ["طب",  "حقوق", "تجارة", "صيدلة", "زراعة"],
  };

  final Map<String, List<String>> facultyYears = {
    "تجارة": ["أولى تجارة", "تانية تجارة", "تالتة تجارة", "رابعة تجارة"],
    "هندسة": ["إعدادي هندسة", "أولى هندسة", "تانية هندسة", "تالتة هندسة", "رابعة هندسة"],
    "طب": ["أولى طب", "تانية طب", "تالتة طب", "رابعة طب", "خامسة طب", "سادسة طب"],
    "حقوق": ["أولى حقوق", "تانية حقوق", "تالتة حقوق", "رابعة حقوق"],
    "علوم": ["أولى علوم", "تانية علوم", "تالتة علوم", "رابعة علوم"],
    "آداب": ["أولى آداب", "تانية آداب", "تالتة آداب", "رابعة آداب"],
    "صيدلة": ["أولى صيدلة", "تانية صيدلة", "تالتة صيدلة", "رابعة صيدلة", "خامسة صيدلة"],
    "زراعة": ["أولى زراعة", "تانية زراعة", "تالتة زراعة", "رابعة زراعة"],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Name
        AppTextFormField(
          hintText: "أدخل اسمك الكامل",
          labelText: "الاسم الكامل",
          prefixIcon: Icons.person_outline,
          keyboardType: TextInputType.name,
          validator: (value) => AppValidators.name(value),
        ),
        verticalSpace(15),
        // Email
        AppTextFormField(
          hintText: "student@university.edu",
          labelText: "البريد الجامعي",
          prefixIcon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
          validator: (value) => AppValidators.universityEmail(value),
        ),
        verticalSpace(15),
        // Password
        AppTextFormField(
          hintText: "أدخل كلمة المرور",
          labelText: "كلمة المرور",
          isObscureText: true,
          prefixIcon: Icons.lock_outline,
          suffixIcon: Icons.visibility_off_outlined,
          keyboardType: TextInputType.visiblePassword,
          validator: (value) => AppValidators.password(value),
        ),
        verticalSpace(20),
        AppDropdownFormField(
          hintText: "اختر الجامعة",
          labelText: "الجامعة",
          value: selectedUniversity,
          items: universityFaculties.keys.map((uni) {
            return DropdownMenuItem(
              value: uni,
              child: Text(uni),
            );
          }).toList(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "مطلوب اختيار الجامعة";
            }
            return null;
          },
          onChanged: (value) {
            setState(() {
              selectedUniversity = value;
              selectedFaculty = null;
              selectedYear = null;
            });
          },
        ),
        verticalSpace(15),
        AppDropdownFormField(
          hintText: "اختر الكلية",
          labelText: "الكلية",
          value: selectedFaculty,
          items: (selectedUniversity != null
              ? universityFaculties[selectedUniversity]!
              : [])
              .map((fac) {
            return DropdownMenuItem<String>(
              value: fac,
              child: Text(fac),
            );
          }).toList(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "مطلوب اختيار الكلية";
            }
            return null;
          },
          onChanged: (value) {
            setState(() {
              selectedFaculty = value;
              selectedYear = null;
            });
          },
        ),
        verticalSpace(15),
        AppDropdownFormField(
          hintText: "اختر السنة الدراسية",
          labelText: "السنة الدراسية",
          value: selectedYear,
          items: (selectedFaculty != null
              ? facultyYears[selectedFaculty]!
              : [])
              .map((yr) {
            return DropdownMenuItem<String>(
              value: yr,
              child: Text(yr),
            );
          }).toList(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "مطلوب اختيار السنة الدراسية";
            }
            return null;
          },
          onChanged: (value) {
            setState(() {
              selectedYear = value;
            });
          },
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     if (_formKey.currentState!.validate()) {
        //       final student = Student(
        //         name: "",
        //         email: "",
        //         password: "",
        //         university: selectedUniversity!,
        //         faculty: selectedFaculty!,
        //         year: selectedYear!,
        //       );
        //       // هنا ممكن تبعته للـ API أو Firebase
        //       print(student.toJson());
        //       ScaffoldMessenger.of(context).showSnackBar(
        //         SnackBar(content: Text("تم التسجيل بنجاح 🎉")),
        //       );
        //     }
        //   },
        //   child: Text("تسجيل"),
        // ),
      ],
    );
  }
}

class Student {
  final String name;
  final String email;
  final String password;
  final String university;
  final String faculty;
  final String year;

  Student({
    required this.name,
    required this.email,
    required this.password,
    required this.university,
    required this.faculty,
    required this.year,
  });

  // تقدر تضيف toJson علشان تبعتها لـ API أو Firestore
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "university": university,
      "faculty": faculty,
      "year": year,
    };
  }
}
