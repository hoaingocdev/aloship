part of notification;

class _NotificationViewState extends TTState<_NotificationModel, _NotificationView> {
  @override
  Widget buildWithModel(BuildContext context, _NotificationModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: 'Thông báo',
        onBackPressed: model.onBackPressed,
        hasIcon: false,
        actions: [
          Image.asset(Id.ic_menu_left),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, i) {
          return buildNotification(
            notificationInfo: model.notifications[i],
            onPressed: () => model.onNotificationItem(i),
            isSelected: i == model.notificationIndex,
          );
        },
      ),
    );
  }

  Widget buildNotification({
    required NotificationInfo notificationInfo,
    VoidCallback? onPressed,
    bool isSelected = false,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        color: isSelected ? Cl.cl021EAE0D.withOpacity(0.05) : Cl.white,
        height: 91,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 17,
                    left: 15,
                  ),
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Cl.clED1C241A.withOpacity(0.01),
                  ),
                  child: Image.asset(Id.ic_taxi),
                ),
                const SizedBox(width: 6),
                Text(
                  notificationInfo.title,
                  style: St.body18500.copyWith(color: Cl.black),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: Image.asset(Id.ic_arrow_back_right),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 43),
              child: Text(notificationInfo.text),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 43),
              child: Text(notificationInfo.time),
            ),
            const SizedBox(height: 11),
            Container(
              width: double.infinity,
              // padding: EdgeInsets.symmetric(horizontal: 15),
              height: 1,
              color: Cl.clD8D9DB,
            )
          ],
        ),
      ),
    );
  }
}
