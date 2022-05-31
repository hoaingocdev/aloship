part of found_drive;

class _FoundDriveViewState extends TTState<_FoundDriveModel, _FoundDriveView> {
  @override
  Widget buildWithModel(BuildContext context, _FoundDriveModel model) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: model.onDriveInfo,
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 17, 8, 24),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 171,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Cl.white),
            child: Column(
              children: [
                const Text('Đã tìm thấy tài xế'),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 23),
                  height: 1,
                  color: Cl.clEAEFF1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(27),
                      child: Image.network('https://cdn.chanhtuoi.com/uploads/2022/01/hinh-avatar-nam-deo-kinh.jpg',
                          height: 55),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hoàng huy',
                              style: St.body16400.copyWith(color: Cl.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  Text(
                                    'Bks: 30A - 123.45',
                                    style: St.body14400.copyWith(color: Cl.black),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '0966 123 456',
                                    style: St.body14400.copyWith(
                                      color: Cl.cl006DE0,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text('Tuổi 25', style: St.body14400.copyWith(color: Cl.black)),
                                const Spacer(),
                                Text('Hà Nội', style: St.body14400.copyWith(color: Cl.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
