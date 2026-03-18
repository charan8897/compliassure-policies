package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_bf96d359b91f
# All approved clauses included


    # Rule: C1
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allowed_additionalallocationpercentage := ["20"]
    allowed_allocationbase := ["base travel budget"]
    allowed_applicableroles := ["Sales unit personnel"]

    allow_c1_cond := {"allow": true, "reason": "Clause C1: Conditional Allowance - CONDITIONAL"} if {
        allowed_additionalallocationpercentage[_] == input.additionalallocationpercentage
    allowed_allocationbase[_] == input.allocationbase
    allowed_applicableroles[_] == input.applicableroles
    }

# Default: Allow if no violations
allow_default {
    true
}
