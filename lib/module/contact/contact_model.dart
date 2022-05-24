part of contact;

class _ContactModel extends TTChangeNotifier<_ContactView> {
  void onCancelPressed() => Navigator.of(context!).pop();

  void onCallPressed() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: HotlineConfig.phone,
    );
    await launchUrl(launchUri);
  }
}
