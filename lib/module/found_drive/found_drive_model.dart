part of found_drive;

class _FoundDriveModel extends TTChangeNotifier<_FoundDriveView> {
  void onDriveInfo() {
    Navigator.of(context!).push(MaterialPageRoute(builder: (_) {
      return createCreateOrderItem();
    }));
  }
}
