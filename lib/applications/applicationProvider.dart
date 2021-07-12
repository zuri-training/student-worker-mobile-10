import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../global/pages.dart';
import '../jobs/jobProvider.dart';

final applicationProvider =
    ChangeNotifierProvider.autoDispose((ref) => ApplicationProvider());

class ApplicationProvider extends ChangeNotifier {
  void onAppliedJobTap() {
    navigator!.context.read(jobProvider).isFromJobs = false;
    navigator!.pushNamed(jobDescription);
  }
}
