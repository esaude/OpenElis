/*
* The contents of this file are subject to the Mozilla Public License
* Version 1.1 (the "License"); you may not use this file except in
* compliance with the License. You may obtain a copy of the License at
* http://www.mozilla.org/MPL/ 
* 
* Software distributed under the License is distributed on an "AS IS"
* basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
* License for the specific language governing rights and limitations under
* the License.
* 
* The Original Code is OpenELIS code.
* 
* Copyright (C) The Minnesota Department of Health.  All Rights Reserved.
*/

package org.bahmni.feed.openelis.feed.contract.openmrs.encounter;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class OpenMRSOrderType {
    public static final String LAB_ORDER_TYPE = "Lab Order";

    private String uuid;
    private String name;
    private boolean isRetired;

    public OpenMRSOrderType() {
    }

    public OpenMRSOrderType(String uuid, String name, boolean retired) {

        this.uuid = uuid;
        this.name = name;
        isRetired = retired;
    }

    public String getName() {
        return name;
    }

    public boolean isRetired() {
        return isRetired;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isLabOrder() {
        return name.equals(LAB_ORDER_TYPE);
    }
}
