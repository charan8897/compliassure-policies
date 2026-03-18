package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_13560758d9b5
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_policyid := ["02"]
    allowed_companyname := ["NAGA LIMITED"]

    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        allowed_policyid[_] == input.policyid
    allowed_companyname[_] == input.companyname
    }


    # Rule: C10
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c10_cond := {"allow": true, "reason": "Clause C10: Conditional Allowance - CONDITIONAL"} if {
        input.minimumoutofficeduration >= 6
    }


    # Rule: C11
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allowed_personalcarmaximumdailydistance := ["200"]
    allowed_personalbikemaximumdailydistance := ["50"]

    allow_c11_rest := {"allow": true, "reason": "Clause C11: Restriction - YES"} if {
        allowed_personalcarmaximumdailydistance[_] == input.personalcarmaximumdailydistance
    allowed_personalbikemaximumdailydistance[_] == input.personalbikemaximumdailydistance
    input.grouptravelminimumpassengers == 3
    }


    # Rule: C12
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allowed_personneltype := ["SALES PERSONNEL"]

    allow_c12_info := {"allow": true, "reason": "Clause C12: Informational - OK"} if {
        allowed_personneltype[_] == input.personneltype
    }


    # Rule: C13
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allowed_allowancetype := ["Food & Fuel"]
    allowed_personneltype := ["Local SALES PERSONNEL"]

    allow_c13_info := {"allow": true, "reason": "Clause C13: Informational - OK"} if {
        allowed_allowancetype[_] == input.allowancetype
    allowed_personneltype[_] == input.personneltype
    }


    # Rule: C14
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allowed_policyeffectivedate := ["1"]

    allow_c14_info := {"allow": true, "reason": "Clause C14: Informational - OK"} if {
        allowed_policyeffectivedate[_] == input.policyeffectivedate
    }


    # Rule: C2
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allowed_relativefriendlodgingreimbursement := ["25"]
    allowed_twinsharingreimbursementcap := ["125"]

    allow_c2_limi := {"allow": true, "reason": "Clause C2: Limit - STRICT"} if {
        allowed_relativefriendlodgingreimbursement[_] == input.relativefriendlodgingreimbursement
    allowed_twinsharingreimbursementcap[_] == input.twinsharingreimbursementcap
    }


    # Rule: C3
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allowed_reimbursementdetermination := ["employee category"]
    allowed_reimbursementbasis := ["eligible amount or bill amount (lesser of)"]
    allowed_referenceclause := ["1"]

    allow_c3_limi := {"allow": true, "reason": "Clause C3: Limit - STRICT"} if {
        allowed_reimbursementdetermination[_] == input.reimbursementdetermination
    allowed_reimbursementbasis[_] == input.reimbursementbasis
    allowed_referenceclause[_] == input.referenceclause
    }


    # Rule: C4
    # Intent: APPROVAL_REQUIRED
    # Action: enforce
    # Ambiguous: False
    allowed_approvalauthority := ["Reporting Manager"]

    allow_c4_appr := {"allow": true, "reason": "Clause C4: Approval Required - CONDITIONAL"} if {
        allowed_approvalauthority[_] == input.approvalauthority
    }


    # Rule: C5
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_traveladvancesettlementdeadline := ["2"]

    allow_c5_rest := {"allow": true, "reason": "Clause C5: Restriction - YES"} if {
        allowed_traveladvancesettlementdeadline[_] == input.traveladvancesettlementdeadline
    }


    # Rule: C6
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c6_rest := {"allow": true, "reason": "Clause C6: Restriction - YES"} if {
        true
    }


    # Rule: C7
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_validationdepartments := ["HR, Accounts"]
    allowed_referenceannexurecityclassification := ["2"]
    allowed_referenceannexurefieldworkallowance := ["3"]

    allow_c7_rest := {"allow": true, "reason": "Clause C7: Restriction - YES"} if {
        allowed_validationdepartments[_] == input.validationdepartments
    allowed_referenceannexurecityclassification[_] == input.referenceannexurecityclassification
    allowed_referenceannexurefieldworkallowance[_] == input.referenceannexurefieldworkallowance
    }


    # Rule: C8
    # Intent: LIMIT
    # Action: warn
    # Ambiguous: False
    allow_c8_limi := {"allow": true, "reason": "Clause C8: Limit - STRICT"} if {
        true
    }


    # Rule: C9
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c9_gen := {"allow": true, "reason": "Clause C9: INFORMATIONAL - EDITED"} if {
        input.cityclassificationmetros == "Mumbai, Delhi, Kolkata, Bangalore"
    input.cityclassificationstatecapitalshillstations == "Chennai, Hyderabad, Shimla, Nellore, Kerala"
    input.cityclassificationdistrictheadquarters == "Coimbatore, Madurai"
    }

# Default: Allow if no violations
allow_default {
    true
}
