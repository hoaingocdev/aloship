part of notification_dialog;

class _NotificationDialogViewState extends TTState<_NotificationDialogModel, _NotificationDialogView> {
  @override
  Widget buildWithModel(BuildContext context, _NotificationDialogModel model) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 17, 5, 5),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 201,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Cl.white,
          ),
          child: Column(children: [
            Text(
              'Thông báo',
              style: St.body16500.copyWith(color: Cl.black),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 33),
              height: 1,
              color: Cl.clEAEFF1,
            ),
            Text(
              'Không tìm thấy tài xế , xin vui lòng thử lại',
              style: St.body16400.copyWith(color: Cl.black),
            ),
            const SizedBox(height: 42),
            TButton(
              text: 'Đồng ý',
              onPressed: model.onApplyPressed,
            )
          ]),
        ),
      ),
    );
  }
}
