part of _forgot_password;

class ForgotPasswordModel extends TTChangeNotifier<ForgotPasswordView> {
  final TextEditingController phoneController;
  final formKey = GlobalKey<FormState>();
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

  void onContinuePressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context!).pushReplacement(
      MaterialPageRoute(
        builder: (_) => createOtp(otpFlow: OtpFlow.forgotPassword),
      ),
    );
  }
}
