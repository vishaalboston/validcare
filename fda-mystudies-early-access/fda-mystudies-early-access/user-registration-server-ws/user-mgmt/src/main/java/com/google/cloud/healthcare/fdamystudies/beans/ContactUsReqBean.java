/*
 * Copyright 2020 Google LLC
 *
 * Use of this source code is governed by an MIT-style
 * license that can be found in the LICENSE file or at
 * https://opensource.org/licenses/MIT.
 */ 

package com.google.cloud.healthcare.fdamystudies.beans;

import javax.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ContactUsReqBean {
  @NotBlank
  private String subject;
  @NotBlank
  private String body;
  @NotBlank
  private String firstName;
  @NotBlank
  private String email;
}
