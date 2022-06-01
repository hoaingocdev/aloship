part of home;

class MenuWidget extends StatelessWidget {
  final VoidCallback? onLogoutPressed;
  final VoidCallback? onCloseTap;
  final VoidCallback? onHistoryPressed;
  final VoidCallback? onPersonalPressed;

  const MenuWidget({
    Key? key,
    this.onCloseTap,
    this.onHistoryPressed,
    this.onLogoutPressed,
    this.onPersonalPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: 320,
            color: Cl.white,
            child: TTAppBar.create(
              context: context,
              title: 'Tài khoản',
              hasIcon: false,
              actions: [
                InkWell(
                  onTap: onCloseTap,
                  child: Image.asset(Id.ic_close),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 21),
          buildMenuItem(
            context,
            onPressed: onPersonalPressed,
            name: 'Thông tin cá nhân',
            imageAsset: Id.ic_user,
          ),
          buildMenuItem(
            context,
            onPressed: onHistoryPressed,
            name: 'Lịch sử vận chuyển',
            imageAsset: Id.ic_watch,
          ),
          buildMenuItem(
            context,
            name: 'Ví của tôi',
            imageAsset: Id.ic_wallet,
            money: '240.000 đ',
          ),
          buildMenuItem(
            context,
            name: 'Đổi mật khẩu',
            imageAsset: Id.ic_lock,
          ),
          buildMenuItem(
            context,
            name: 'Điều khoản chính sách',
            imageAsset: Id.ic_acttention,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 31),
            child: TButton(
              text: 'Đăng xuất',
              hasIcon: true,
              onPressed: onLogoutPressed,
            ),
          )
        ],
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context, {
    required String name,
    required String imageAsset,
    String? money,
    VoidCallback? onPressed,
  }) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
        onPressed?.call();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 21),
            Row(
              children: [
                Image.asset(imageAsset),
                const SizedBox(width: 10),
                Text(
                  name,
                  style: St.body18500.copyWith(color: Cl.black),
                ),
                const Spacer(),
                Text(
                  money ?? '',
                  style: St.body16500.copyWith(color: Cl.red),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              height: 1,
              color: Cl.clEAEFF1,
            ),
          ],
        ),
      ),
    );
  }
}
