part of personal;

class _PersonalModel extends TTChangeNotifier<_PersonalView> {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController dateOfBirthController;
  final TextEditingController cityController;
  final TextEditingController districytController;
  final TextEditingController stressName;
  bool enable = false;
  final formKey = GlobalKey<FormState>();
  bool isEditMode = false;

  _PersonalModel()
      : nameController = TextEditingController(),
        emailController = TextEditingController(),
        dateOfBirthController = TextEditingController(),
        cityController = TextEditingController(),
        districytController = TextEditingController(),
        stressName = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    dateOfBirthController.dispose();
    cityController.dispose();
    districytController.dispose();
    stressName.dispose();
    super.dispose();
  }

  void validate() {
    enable = nameController.text.isNotEmpty ||
        emailController.text.isNotEmpty ||
        dateOfBirthController.text.isNotEmpty ||
        cityController.text.isNotEmpty ||
        districytController.text.isNotEmpty ||
        stressName.text.isNotEmpty;
    notifyListeners();
  }

  void onSavePressed() {
    isEditMode = !isEditMode;
    notifyListeners();

    // bool isValid = formKey.currentState?.validate() ?? false;
    // if (!isValid) {
    //   return;
    // }
  }

  void onCityPressed() {}

  void onDateOfBirth() {}

  void onDistrictPressed() {}
}
