part of destination;

class _DestinationViewState extends TTState<_DestinationModel, _DestinationView> {
  @override
  Widget buildWithModel(BuildContext context, _DestinationModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: 'Điểm đến',
        hasIcon: true,
        onBackPressed: model.onBackPressed,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 22,
            ),
            child: TTextfield(
              onChanged: model.onSearchChange,
              controller: model.controller,
              hint: 'Nhập điểm den của bạn',
              prefixWidget: const Icon(
                Icons.search,
                color: Cl.black,
              ),
              suffixWidget: ValueListenableBuilder<bool>(
                valueListenable: model.isShowClear,
                builder: (context, isShowClear, _) {
                  return isShowClear
                      ? InkWell(
                          onTap: model.onCleared,
                          child: Image.asset(Id.ic_close),
                        )
                      : const SizedBox();
                },
              ),
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Gợi ý tìm kiếm',
              style: St.body16600.copyWith(color: Cl.black),
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, i) => const SizedBox(height: 20),
              itemCount: model.addresses.length,
              itemBuilder: (_, i) => TTLocationWidget(
                addressInfo: model.addresses[i],
              ),
            ),
          )
        ],
      ),
    );
  }
}
