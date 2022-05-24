library contact;

import 'package:aloship/config/config.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

part 'contact_view.dart';
part 'contact_model.dart';
part 'contact_state.dart';

Future showContactDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return createContact();
    },
  );
}

ChangeNotifierProvider<_ContactModel> createContact() {
  return ChangeNotifierProvider<_ContactModel>(
    create: (_) => _ContactModel(),
    child: _ContactView(),
  );
}
