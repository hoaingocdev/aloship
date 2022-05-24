part of contact;

class _ContactViewState extends TTState<_ContactModel, _ContactView> {
  @override
  Widget buildWithModel(BuildContext context, _ContactModel model) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          height: 178,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Cl.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Text.rich(
                  TextSpan(
                    text: 'Gọi hotline: ',
                    style: St.body18600.copyWith(color: Cl.black),
                    children: [
                      TextSpan(
                        text: HotlineConfig.phoneDisplay,
                        style: St.body18600.copyWith(color: Cl.red),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 13),
              Text(
                'Xác nhận gọi hotline của chúng tôi',
                style: St.body16400.copyWith(color: Cl.black),
              ),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: model.onCancelPressed,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Cl.red,
                          ),
                        ),
                        child: Text(
                          'Huỷ bỏ',
                          style: St.body18600.copyWith(color: Cl.red),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: MaterialButton(
                        onPressed: model.onCallPressed,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Cl.red,
                          ),
                        ),
                        color: Cl.red,
                        child: Text(
                          'Gọi ngay ',
                          style: St.body18600.copyWith(
                            color: Cl.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
