part of _forgot_password;

class _ForgotPasswordModel extends TTChangeNotifier<_ForgotPasswordView> {
  final TextEditingController phoneController;
  _ForgotPasswordModel() : phoneController = TextEditingController();
  bool enable = false;
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void validate() {
    enable = phoneController.text.isNotEmpty;
    notifyListeners();
  }

  void onBackPressed() {
    Navigator.of(context!).pop();
  }

  void onContinuePressed() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) => createOtp(),
      ),
    );
  }
}
