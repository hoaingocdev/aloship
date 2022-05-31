part of search_loading;

class _SearchLoadingViewState extends TTState<_SearchLoadingModel, _SearchLoadingView> {
  @override
  Widget buildWithModel(BuildContext context, _SearchLoadingModel model) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 178,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 56,
                width: 56,
                child: CircularProgressIndicator(color: Cl.red),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17, bottom: 16),
                child: Text(
                  'Đang tìm tài xế',
                  style: St.body16500.copyWith(color: Cl.black),
                ),
              ),
              TButton(
                text: 'Huỷ tìm kiếm',
                onPressed: model.onCancelClick,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
