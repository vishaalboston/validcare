/*
 * Copyright 2020 Google LLC
 *
 * Use of this source code is governed by an MIT-style
 * license that can be found in the LICENSE file or at
 * https://opensource.org/licenses/MIT.
 */

package com.google.cloud.healthcare.fdamystudies.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UpdateAccountInfoResponseBean {

  private String httpStatusCode;
  private String code;
  private String message;

  public String toString() {
    return this.message;
  }
}
