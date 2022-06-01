part of personal;

class _PersonalViewState extends TTState<_PersonalModel, _PersonalView> {
  @override
  Widget buildWithModel(BuildContext context, _PersonalModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        context: context,
        title: ' Thông tin cá nhân',
      ),
      body: Form(
        key: model.formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 31),
          child: Column(
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(56),
                      child: Image.network(
                        'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
                        height: 112,
                      ),
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Cl.red,
                        border: Border.all(color: Cl.white, width: 2),
                      ),
                      child: Image.asset(Id.ic_camera),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 31),
              TTextfield(
                enabled: model.isEditMode,
                hint: 'name',
                fillColor: Cl.clF3F4F8,
              ),
              const SizedBox(height: 15),
              TTextfield(
                enabled: model.isEditMode,
                hint: 'email',
                fillColor: Cl.clF3F4F8,
                isRequired: true,
                textType: TextType.email,
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: model.onDateOfBirth,
                child: TTextfield(
                  suffixWidget: Image.asset(Id.ic_calendar),
                  enabled: false,
                  hint: 'date of birth',
                  fillColor: Cl.clF3F4F8,
                  contentPadding: const EdgeInsets.only(left: 20, top: 14),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  textInputType: TextInputType.number,
                  controller: model.dateOfBirthController,
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: model.onCityPressed,
                child: TTextfield(
                  suffixWidget: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(Id.ic_arrow_back_right),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20, top: 14),
                  enabled: false,
                  hint: 'city',
                  fillColor: Cl.clF3F4F8,
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: model.onDistrictPressed,
                child: TTextfield(
                  fillColor: Cl.clF3F4F8,
                  suffixWidget: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(Id.ic_arrow_back_right),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20, top: 14),
                  enabled: false,
                  hint: 'district',
                ),
              ),
              const SizedBox(height: 15),
              TTextfield(
                enabled: model.isEditMode,
                fillColor: Cl.clF3F4F8,
                hint: 'house number/ stress name',
              ),
              const SizedBox(height: 130),
              TButton(
                text: model.isEditMode ? 'Lưu lại' : 'chinh sua',
                hasIcon: false,
                onPressed: model.onSavePressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
