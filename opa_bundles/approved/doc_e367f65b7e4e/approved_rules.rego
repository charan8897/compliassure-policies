package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_e367f65b7e4e
# All approved clauses included


    # Rule: C1
    # Intent: RESTRICTION
    # Action: enforce
    # Ambiguous: False
    allow_c1_rest := {"allow": true, "reason": "Clause C1: Restriction - YES"} if {
        input.policyid == "HR/Pol/02/2014"
    input.companyname == "NAGA LIMITED"
    }


    # Rule: C10
    # Intent: LIMIT
    # Action: enforce
    # Ambiguous: False
    allow_c10_limi := {"allow": true, "reason": "Clause C10: Limit - STRICT"} if {
        input.personalvehicledailylimit == "200 kms"
    input.grouptravelthresholddistance == "200 kms"
    input.minimumgrouptravelsize >= 3
    input.driverchargespayable == "No"
    input.personalbikedailylimit == "50 kms"
    }


    # Rule: C11
    # Intent: INFORMATIONAL
    # Action: enforce
    # Ambiguous: False
    allow_c11_info := {"allow": true, "reason": "Clause C11: Informational - OK"} if {
        input.allowancedetailsfor == "SALES PERSONNEL"
    input.referenceclause == "C1"
    }

# Default: Allow if no violations
allow_default {
    true
}
