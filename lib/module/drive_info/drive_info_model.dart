part of drive_info;

class _DriveInfoModel extends TTChangeNotifier<_DriveInfoView> {
  final DriveInfo driveInfo = DriveInfo.from({
    'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
    'name': 'Hoàng huy',
    'bks': 'Bks: 30A - 123.45',
    'old': 'Tuổi 25',
    'phone': '0966 123 456',
    'place': 'Hà Nội',
  });
}
