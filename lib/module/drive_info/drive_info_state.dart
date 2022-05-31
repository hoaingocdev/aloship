part of drive_info;

class _DriveInfoViewState extends TTState<_DriveInfoModel, _DriveInfoView> {
  @override
  Widget buildWithModel(BuildContext context, _DriveInfoModel model) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          // onTap: model.onDriveInfo,
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 17, 8, 24),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 173,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Cl.white),
            child: buildDriveInfoItem(driveInfo: model.driveInfo),
          ),
        ),
      ),
    );
  }

  Widget buildDriveInfoItem({
    required DriveInfo driveInfo,
  }) {
    return Column(
      children: [
        Text(
          'Thông tin tài xế',
          style: St.body16500.copyWith(color: Cl.black),
        ),
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
              child: Image.network(driveInfo.imageUrl, height: 55),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      driveInfo.name,
                      style: St.body16400.copyWith(color: Cl.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            driveInfo.bks,
                            style: St.body14400.copyWith(color: Cl.black),
                          ),
                          const Spacer(),
                          Text(
                            driveInfo.phone,
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
                        Text(driveInfo.old, style: St.body14400.copyWith(color: Cl.black)),
                        const Spacer(),
                        Text(driveInfo.place, style: St.body14400.copyWith(color: Cl.black)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
