package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_814f7ebd3971
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclass := ["Business"]
    allowed_traveltype := ["International"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclass[_] == input.travelclass
                input.durationthreshold > 6
                allowed_traveltype[_] == input.traveltype
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_applicableunit := ["Sales"]
    allowed_bufferpercentage := ["20"]

    allow_c2_advi := {"allow": true, "reason": "Clause C2: Advisory - CONDITIONAL"} if {
        allowed_applicableunit[_] == input.applicableunit
                allowed_bufferpercentage[_] == input.bufferpercentage
    }

# Default: Allow if no violations
allow_default {
    true
}
