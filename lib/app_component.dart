// Copyright (c) 2017, Suresh. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:recaptcha_ng2dart/recaptcha/angular_recaptcha.dart';
import 'package:recaptcha_ng2dart/app_dialog/app_dialog.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, AngularRecaptcha, AppDialog],
  providers: const [materialProviders],
)
class AppComponent implements OnInit {
  String error = "";
  String _value;
  String xxxxx = "6LeQixAUAAAAACDt4tNar-VbMMotm44L1TFcZ63D";

  @ViewChild('myDialog')
  AppDialog dialog;

  @ViewChild("recaptcha")
  AngularRecaptcha recaptcha;

  String get value => _value;

  set value(String v) {
    _value = v;
    error = "";
  }

  void onSubmit() {
    if (value?.isEmpty ?? true) {
      error = "Please validate reCaptcha!!";
    } else {
      dialog.open();
    }
  }

  @override
  ngOnInit() {
    print("Initalizing AppComponent...");
  }
}
