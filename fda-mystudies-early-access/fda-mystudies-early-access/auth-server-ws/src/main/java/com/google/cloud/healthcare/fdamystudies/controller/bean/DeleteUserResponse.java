/*
 * Copyright 2020 Google LLC
 *
 * Use of this source code is governed by an MIT-style
 * license that can be found in the LICENSE file or at
 * https://opensource.org/licenses/MIT.
 */

package com.google.cloud.healthcare.fdamystudies.controller.bean;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class DeleteUserResponse {

  private Integer code;
  private String message;
}
