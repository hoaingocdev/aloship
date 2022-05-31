part of home;

final GlobalKey<ScaffoldState> homeKey = GlobalKey();

class _HomeViewState extends TTState<_HomeModel, _HomeView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeModel model) {
    return Scaffold(
      key: homeKey,
      endDrawer: MenuWidget(
        onPressed: model.onLogoutPressed,
        onTap: model.onClosePressed,
      ),
      body: buildBody(model),
      bottomNavigationBar: buildBottom(model),
    );
  }

  Widget buildBody(_HomeModel model) {
    switch (model.pageIndex) {
      case 0:
        return createHomeContent();
      case 1:
        return createDiscount();
      case 2:
        return createNotification();
      default:
        return const SizedBox();
    }
  }

  Widget buildBottom(_HomeModel model) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_home,
            color: model.pageIndex == 0 ? Cl.red : Cl.black,
          ),
          label: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_endow,
            color: model.pageIndex == 1 ? Cl.red : Cl.black,
          ),
          label: 'Ưu đãi',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_bell,
            color: model.pageIndex == 2 ? Cl.red : Cl.black,
          ),
          label: 'Thông báo',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_telephone,
            color: model.pageIndex == 3 ? Cl.red : Cl.black,
          ),
          label: 'Liên hệ',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      onTap: model.onPagePressed,
      currentIndex: model.pageIndex,
      selectedItemColor: Cl.red,
      unselectedItemColor: Cl.black,
      selectedLabelStyle: St.body12500,
      unselectedLabelStyle: St.body12400,
    );
  }
}
