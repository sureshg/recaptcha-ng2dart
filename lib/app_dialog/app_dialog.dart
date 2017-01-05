// Copyright (c) 2017, Suresh. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
  selector: 'app-dialog',
  styleUrls: const ['app_dialog.css'],
  templateUrl: 'app_dialog.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AppDialog implements AfterViewInit, OnDestroy {
  /// Modal component that hosts the inner MaterialDialog in a centered overlay.
  @ViewChild('wrappingModal')
  ModalComponent wrappingModal;

  /// Name of user.
  @Input()
  String name = "";

  /// Opens the dialog.
  void open() {
    wrappingModal.open();
  }

  void ngAfterViewInit() {
    print("Initialied the AppDialog.");
    wrappingModal.onVisibleChanged.listen((bool event) {
      print("Visibility : $event");
    });
  }

  void ngOnDestroy() {
    print("Destryong the component.. $name");
    wrappingModal.onVisibleChanged.close();
  }
}
