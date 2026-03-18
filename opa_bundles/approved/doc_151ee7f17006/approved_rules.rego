package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_151ee7f17006
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_travelclassallowance := ["Business class"]
    allowed_travelscope := ["international destinations"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_travelclassallowance[_] == input.travelclassallowance
    input.minimumtravelduration >= 6
    allowed_travelscope[_] == input.travelscope
    }


    # Rule: C2
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c2_gen := {"allow": true, "reason": "Clause C2: ADVISORY - EDITED"} if {
        input.travelroute == "London and nevada"
    input.transportrecommendation == "Flight"
    }

# Default: Allow if no violations
allow_default {
    true
}
