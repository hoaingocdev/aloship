part of register;

class _RegisterModel extends TTChangeNotifier<_RegisterView> {
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final TextEditingController repasswordController;
  bool enabled = false;
  _RegisterModel()
      : nameController = TextEditingController(),
        phoneController = TextEditingController(),
        passwordController = TextEditingController(),
        repasswordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    repasswordController.dispose();
    super.dispose();
  }

  void validate() {
    enabled = nameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        repasswordController.text.isNotEmpty;
    notifyListeners();
  }

  void onRegisterPressed() {
    Navigator.of(context!).pushReplacement(
      MaterialPageRoute(
        builder: (_) => createOtp(otpFlow: OtpFlow.register),
      ),
    );
  }

  void onBackPressed() {
    Navigator.of(context!).pop();
  }
}
