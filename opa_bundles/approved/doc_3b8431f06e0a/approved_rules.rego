package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_3b8431f06e0a
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        true
    }


    # Rule: C10
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c10_info := {"allow": true, "reason": "Clause C10: Informational - OK"} if {
        true
    }


    # Rule: C11
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c11_rest := {"allow": true, "reason": "Clause C11: Restriction - YES"} if {
        true
    }


    # Rule: C12
    # Intent: ADVISORY
    # Action: enforce
    # Ambiguous: False
    allow_c12_advi := {"allow": true, "reason": "Clause C12: Advisory - CONDITIONAL"} if {
        input.sourcereference == "15, 4.1.1"
    }


    # Rule: C13
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c13_limi := {"allow": true, "reason": "Clause C13: Limit - STRICT"} if {
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


    # Rule: C14
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c14_rest := {"allow": true, "reason": "Clause C14: Restriction - YES"} if {
        true
    }


    # Rule: C15
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c15_cond := {"allow": true, "reason": "Clause C15: Conditional Allowance - CONDITIONAL"} if {
        input.maximumexchangeratepercentage <= 50
    input.sourcereference == "15, 4.1.4"
    }


    # Rule: C16
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c16_cond := {"allow": true, "reason": "Clause C16: Conditional Allowance - CONDITIONAL"} if {
        input.maximumvisitduration <= 10
    input.maximumforeignexchange <= 500
    input.sourcereference == "15, 4.1.5"
    }


    # Rule: C17
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c17_cond := {"allow": true, "reason": "Clause C17: Conditional Allowance - CONDITIONAL"} if {
        input.visitdurationthreshold == "10 days"
    input.foreignexchangerate == "50 USD/day"
    input.maximumexchangeduration <= 45
    input.sourcereference == "15, 4.1.5"
    }


    # Rule: C18
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c18_rest := {"allow": true, "reason": "Clause C18: Restriction - YES"} if {
        input.meaguidelinereference == "MEA OM No. Q/FD/695/1/90"
    input.meaguidelinedate == "28th March 1995"
    input.sourcereference == "15, 4.1.6"
    }


    # Rule: C19
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c19_rest := {"allow": true, "reason": "Clause C19: Restriction - YES"} if {
        input.tipsreimbursementstatus == "not admissible"
    input.sourcereference == "15, 4.1.7"
    }


    # Rule: C2
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        true
    }


    # Rule: C20
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c20_cond := {"allow": true, "reason": "Clause C20: Conditional Allowance - CONDITIONAL"} if {
        input.hospitalitycondition == "boarding and lodging provided free of cost"
    input.dailyallowancepercentage == "25%"
    input.sourcereference == "15, 4.1.8"
    }


    # Rule: C21
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c21_cond := {"allow": true, "reason": "Clause C21: Conditional Allowance - CONDITIONAL"} if {
        input.additionaldayallowanceconditionarrival == "one day prior"
    input.additionaldayallowanceconditionreturnflight1 == "after 4:30 PM"
    input.additionaldayallowanceconditionreturnflight2 == "after 12:00 AM"
    input.sourcereference == "15, 4.1.9"
    }


    # Rule: C22
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c22_info := {"allow": true, "reason": "Clause C22: Informational - OK"} if {
        input.approvalauthority == "Functional Head (E8 or higher)"
    input.coveredexpensegrades == "E6-E10"
    input.sourcereference == "15, 4.2"
    }


    # Rule: C23
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c23_info := {"allow": true, "reason": "Clause C23: Informational - OK"} if {
        input.clausereference == "3.1.6"
    input.sourcereference == "15, 4.3.1"
    }


    # Rule: C24
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c24_info := {"allow": true, "reason": "Clause C24: Informational - OK"} if {
        input.sourcereference == "15, 4.3.2"
    }


    # Rule: C25
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c25_info := {"allow": true, "reason": "Clause C25: Informational - OK"} if {
        input.leaveentitlementduration == "entire travel period"
    input.approvalauthorityforextensions == "MD & CEO"
    input.sourcereference == "15, 4.4.1"
    }


    # Rule: C26
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c26_info := {"allow": true, "reason": "Clause C26: Informational - OK"} if {
        input.maximumextensionpercentage <= 50
    input.maximumextensiondays <= 10
    }


    # Rule: C27
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c27_info := {"allow": true, "reason": "Clause C27: Informational - OK"} if {
        input.approvalauthority == "MD & CEO"
    input.sourcedocuments == "15, 5.1"
    }


    # Rule: C28
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c28_info := {"allow": true, "reason": "Clause C28: Informational - OK"} if {
        input.approvalauthority == "MD & CEO"
    input.sourcereference == "15, 6"
    }


    # Rule: C3
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c3_cond := {"allow": true, "reason": "Clause C3: Conditional Allowance - CONDITIONAL"} if {
        true
    }


    # Rule: C4
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c4_rest := {"allow": true, "reason": "Clause C4: Restriction - YES"} if {
        input.sourcereference == "15, 3.1.2"
    }


    # Rule: C5
    # Intent: APPROVAL_REQUIRED
    # Action: enforce
    # Ambiguous: False
    allow_c5_appr := {"allow": true, "reason": "Clause C5: Approval Required - CONDITIONAL"} if {
        input.sourcereference == "15, 3.1.3"
    }


    # Rule: C6
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c6_cond := {"allow": true, "reason": "Clause C6: Conditional Allowance - CONDITIONAL"} if {
        true
    }


    # Rule: C7
    # Intent: ADVISORY
    # Action: enforce
    # Ambiguous: False
    allow_c7_advi := {"allow": true, "reason": "Clause C7: Advisory - CONDITIONAL"} if {
        true
    }


    # Rule: C8
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c8_rest := {"allow": true, "reason": "Clause C8: Restriction - YES"} if {
        true
    }


    # Rule: C9
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c9_rest := {"allow": true, "reason": "Clause C9: Restriction - YES"} if {
        true
    }

# Default: Allow if no violations
allow_default {
    true
}
