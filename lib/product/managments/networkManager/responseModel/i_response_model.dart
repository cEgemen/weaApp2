 

import '../../../../core/base/base_error.dart';

abstract class IResponseModel<T> {
          T ? data;
          BaseError ? error;
  }