part of otp;

enum OtpFlow { register, forgotPassword }

class _OtpModel extends TTChangeNotifier<_OtpView> {
  final OtpFlow otpFlow;
  final TextEditingController otpController;
  bool enable = false;
  _OtpModel(this.otpFlow) : otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  void validate() {
    enable = otpController.text.isNotEmpty;
    notifyListeners();
  }

  void onBackPressed() {
    Navigator.of(context!).pop();
  }

  void onCompletePressed() {
    if (otpFlow == OtpFlow.forgotPassword) {
      Navigator.of(context!).pushReplacement(
        MaterialPageRoute(
          builder: (_) => createNewpassword(),
        ),
      );
    } else {
      Navigator.of(context!).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => createHome(),
        ),
        (r) => false,
      );
    }
  }
}
