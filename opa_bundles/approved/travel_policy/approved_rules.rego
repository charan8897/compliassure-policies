package travel_policy

    allow_c10_cond := {"C10": true, "reason": "Clause C10: CONDITIONAL_ALLOWANCE - YES"} if {
        input.minimumoutofficeduration >= 6
    }

    allow_c10_info := {"C10": true, "reason": "Clause C10: INFORMATIONAL - YES"} if {
        true
    }

    allow_c11_limi := {"C11": true, "reason": "Clause C11: LIMIT - YES"} if {
        input.personalcardailykilometerlimit == "200 kms"
        input.bikedailykilometerlimit == "50 kms"
        input.grouptravelminimumpeople == "3"
    }

    allow_c11_rest := {"C11": true, "reason": "Clause C11: RESTRICTION - YES"} if {
        input.personalcarmaximumdailydistance == "200 km"
        input.personalbikemaximumdailydistance == "50 km"
        input.grouptravelminimumpassengers == "3"
    }

    allow_c12_advi := {"C12": true, "reason": "Clause C12: ADVISORY - YES"} if {
        input.sourcereference == "15, 4.1.1"
    }

    allow_c12_info := {"C12": true, "reason": "Clause C12: INFORMATIONAL - YES"} if {
        true
    }

    allow_c13_info := {"C13": true, "reason": "Clause C13: INFORMATIONAL - YES"} if {
        true
    }

    allow_c13_limi := {"C13": true, "reason": "Clause C13: LIMIT - YES"} if {
        input.wholetimedirectorsdailyallowance == "500 USD/day"
        input.wholetimedirectorsmaximumduration == "45 days"
        input.e8toe10dailyallowance == "350 USD/day"
        input.e8toe10maximumduration == "45 days"
        input.e7andbelowdailyallowance == "300 USD/day"
        input.e7andbelowmaximumduration == "45 days"
        input.residentialtrainingdailyallowance == "200 USD/day"
        input.residentialtrainingmaximumduration == "30 days"
        input.sourcereference == "15, 4.1.2"
    }

    allow_c14_info := {"C14": true, "reason": "Clause C14: INFORMATIONAL - YES"} if {
        true
    }

    allow_c14_rest := {"C14": true, "reason": "Clause C14: RESTRICTION - YES"} if {
        true
    }

    allow_c15_cond := {"C15": true, "reason": "Clause C15: CONDITIONAL_ALLOWANCE - YES"} if {
        input.maximumexchangeratepercentage == "50%"
        input.sourcereference == "15, 4.1.4"
    }

    allow_c16_cond := {"C16": true, "reason": "Clause C16: CONDITIONAL_ALLOWANCE - YES"} if {
        input.maximumvisitduration == "10 days"
        input.maximumforeignexchange == "500 USD"
        input.sourcereference == "15, 4.1.5"
    }

    allow_c17_cond := {"C17": true, "reason": "Clause C17: CONDITIONAL_ALLOWANCE - YES"} if {
        input.visitdurationthreshold == "10 days"
        input.foreignexchangerate == "50 USD/day"
        input.maximumexchangeduration == "45 days"
        input.sourcereference == "15, 4.1.5"
    }

    allow_c18_rest := {"C18": true, "reason": "Clause C18: RESTRICTION - YES"} if {
        input.meaguidelinereference == "MEA OM No. Q/FD/695/1/90"
        input.meaguidelinedate == "28th March 1995"
        input.sourcereference == "15, 4.1.6"
    }

    allow_c19_rest := {"C19": true, "reason": "Clause C19: RESTRICTION - YES"} if {
        input.tipsreimbursementstatus == "not admissible"
        input.sourcereference == "15, 4.1.7"
    }

    allow_c1_rest := {"C1": true, "reason": "Clause C1: RESTRICTION - YES"} if {
        input.policyid == "HR/Pol/02/2014"
        input.companyname == "NAGA LIMITED"
    }

    allow_c20_cond := {"C20": true, "reason": "Clause C20: CONDITIONAL_ALLOWANCE - YES"} if {
        input.hospitalitycondition == "boarding and lodging provided free of cost"
        input.dailyallowancepercentage == "25%"
        input.sourcereference == "15, 4.1.8"
    }

    allow_c21_cond := {"C21": true, "reason": "Clause C21: CONDITIONAL_ALLOWANCE - YES"} if {
        input.additionaldayallowanceconditionarrival == "one day prior"
        input.additionaldayallowanceconditionreturnflight1 == "after 4:30 PM"
        input.additionaldayallowanceconditionreturnflight2 == "after 12:00 AM"
        input.sourcereference == "15, 4.1.9"
    }

    allow_c22_info := {"C22": true, "reason": "Clause C22: INFORMATIONAL - YES"} if {
        input.approvalauthority == "Functional Head (E8 or higher)"
        input.coveredexpensegrades == "E6-E10"
        input.sourcereference == "15, 4.2"
    }

    allow_c23_info := {"C23": true, "reason": "Clause C23: INFORMATIONAL - YES"} if {
        input.clausereference == "3.1.6"
        input.sourcereference == "15, 4.3.1"
    }

    allow_c24_info := {"C24": true, "reason": "Clause C24: INFORMATIONAL - YES"} if {
        input.sourcereference == "15, 4.3.2"
    }

    allow_c25_info := {"C25": true, "reason": "Clause C25: INFORMATIONAL - YES"} if {
        input.leaveentitlementduration == "entire travel period"
        input.approvalauthorityforextensions == "MD & CEO"
        input.sourcereference == "15, 4.4.1"
    }

    allow_c26_info := {"C26": true, "reason": "Clause C26: INFORMATIONAL - YES"} if {
        input.maximumextensionpercentage == "50%"
        input.maximumextensiondays == "10 days"
    }

    allow_c27_info := {"C27": true, "reason": "Clause C27: INFORMATIONAL - YES"} if {
        input.approvalauthority == "MD & CEO"
        input.sourcedocuments == "15, 5.1"
    }

    allow_c28_info := {"C28": true, "reason": "Clause C28: INFORMATIONAL - YES"} if {
        input.approvalauthority == "MD & CEO"
        input.sourcereference == "15, 6"
    }

    allow_c2_cond := {"C2": true, "reason": "Clause C2: CONDITIONAL_ALLOWANCE - YES"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
        input.twinsharingreimbursementlimit == "125% of a Senior level employee's eligible amount"
    }

    allow_c2_limi := {"C2": true, "reason": "Clause C2: LIMIT - YES"} if {
        input.relativefriendlodgingreimbursement == "25% of eligible amount"
        input.twinsharingreimbursementcap == "125% of a Senior level employee's eligible amount"
    }

    allow_c2_rest := {"C2": true, "reason": "Clause C2: RESTRICTION - YES"} if {
        true
    }

    allow_c3_cond := {"C3": true, "reason": "Clause C3: CONDITIONAL_ALLOWANCE - YES"} if {
        true
    }

    allow_c3_limi := {"C3": true, "reason": "Clause C3: LIMIT - YES"} if {
        input.reimbursementdetermination == "employee category"
        input.reimbursementbasis == "eligible amount or bill amount (lesser of)"
        input.referenceclause == "C1"
    }

    allow_c4_appr := {"C4": true, "reason": "Clause C4: APPROVAL_REQUIRED - YES"} if {
        input.approvalauthority == "Reporting Manager"
    }

    allow_c4_rest := {"C4": true, "reason": "Clause C4: RESTRICTION - YES"} if {
        input.sourcereference == "15, 3.1.2"
    }

    allow_c5_appr := {"C5": true, "reason": "Clause C5: APPROVAL_REQUIRED - YES"} if {
        input.sourcereference == "15, 3.1.3"
    }

    allow_c5_rest := {"C5": true, "reason": "Clause C5: RESTRICTION - YES"} if {
        input.traveladvancesettlementdeadline == "2 days"
    }

    allow_c6_cond := {"C6": true, "reason": "Clause C6: CONDITIONAL_ALLOWANCE - YES"} if {
        true
    }

    allow_c6_rest := {"C6": true, "reason": "Clause C6: RESTRICTION - YES"} if {
        true
    }

    allow_c7_advi := {"C7": true, "reason": "Clause C7: ADVISORY - YES"} if {
        true
    }

    allow_c7_rest := {"C7": true, "reason": "Clause C7: RESTRICTION - YES"} if {
        input.validationdepartments == "HR and Accounts"
        input.referenceannexurecityclassification == "Annexure 2"
        input.referenceannexurefieldworkallowance == "Annexure 3"
    }

    allow_c8_limi := {"C8": true, "reason": "Clause C8: LIMIT - YES"} if {
        true
    }

    allow_c8_rest := {"C8": true, "reason": "Clause C8: RESTRICTION - YES"} if {
        true
    }

    allow_c9_info := {"C9": true, "reason": "Clause C9: INFORMATIONAL - YES"} if {
        input.cityclassificationmetros == "Mumbai, Delhi, Kolkata"
        input.cityclassificationstatecapitalshillstations == "Chennai, Hyderabad, Shimla"
        input.cityclassificationdistrictheadquarters == "Coimbatore, Madurai"
    }

    allow_c9_rest := {"C9": true, "reason": "Clause C9: RESTRICTION - YES"} if {
        true
    }
