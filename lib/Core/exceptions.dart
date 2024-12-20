import 'package:weather_app/Core/error.dart';

import '../generated/l10n.dart';

// const noInternetMessage = 'Please check your internet connection and try again';

// const noInternetcode = '2000';
Error noInternetException =
    Error(S.current.error_message_header, S.current.no_internet_error);
