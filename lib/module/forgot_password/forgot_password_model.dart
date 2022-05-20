part of _forgot_password;

class ForgotPasswordModel extends TTChangeNotifier<ForgotPasswordView> {
  final TextEditingController phoneController;
  ForgotPasswordModel() : phoneController = TextEditingController();
  bool enable = false;
  @override
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
    Navigator.of(context!).pushReplacement(
      MaterialPageRoute(
        builder: (_) => createOtp(otpFlow: OtpFlow.forgotPassword),
      ),
    );
  }
}
