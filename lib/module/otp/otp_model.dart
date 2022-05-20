part of otp;

class _OtpModel extends TTChangeNotifier<_OtpView> {
  final TextEditingController otpController;
  bool enable = false;
  _OtpModel() : otpController = TextEditingController();

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
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) => createNewpassword(),
      ),
    );
  }
}
