part of home;

class MenuWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onTap;
  const MenuWidget({Key? key, this.onPressed, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: 320,
            color: Cl.white,
            child: TTAppBar.create(
              title: 'Tài khoản',
              hasIcon: false,
              actions: [
                InkWell(
                  onTap: onTap,
                  child: Image.asset(Id.ic_close),
                ),
              ],
            ),
          ),
          const SizedBox(height: 21),
          buildMenuItem(
            name: 'Thông tin cá nhân',
            imageAsset: Id.ic_user,
          ),
          buildMenuItem(
            name: 'Lịch sử vận chuyển',
            imageAsset: Id.ic_watch,
          ),
          buildMenuItem(
            name: 'Ví của tôi',
            imageAsset: Id.ic_wallet,
            money: '240.000 đ',
          ),
          buildMenuItem(
            name: 'Đổi mật khẩu',
            imageAsset: Id.ic_lock,
          ),
          buildMenuItem(
            name: 'Điều khoản chính sách',
            imageAsset: Id.ic_acttention,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 31),
            child: TButton(
              text: 'Đăng xuất',
              icon: Id.ic_logout,
              onPressed: onPressed,
            ),
          )
        ],
      ),
    );
  }

  Widget buildMenuItem({
    required String name,
    required String imageAsset,
    String? money,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
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
            margin: const EdgeInsets.only(top: 17, bottom: 20),
            height: 1,
            color: Cl.clEAEFF1,
          )
        ],
      ),
    );
  }
}
