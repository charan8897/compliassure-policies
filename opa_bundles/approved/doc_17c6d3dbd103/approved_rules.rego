package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_17c6d3dbd103
# All approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allowed_travelclassforseniormanagers := ["Business class"]
    allowed_applicableroles := ["Senior Manager"]

    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - YES"} if {
        allowed_travelclassforseniormanagers[_] == input.travelclassforseniormanagers
    input.minimumflightdurationforbusinessclass >= 6
    allowed_applicableroles[_] == input.applicableroles
    }


    # Rule: C2
    # Intent: RESTRICTION
    # Action: warn
    # Ambiguous: False
    allowed_hotelcity := ["New York City"]
    allowed_hotelcitycode := ["NYC"]

    allow_c2_rest := {"allow": true, "reason": "Clause C2: Restriction - YES"} if {
        allowed_hotelcity[_] == input.hotelcity
    allowed_hotelcitycode[_] == input.hotelcitycode
    input.maximumhotelcostpernight <= 300
    }

# Default: Allow if no violations
allow_default {
    true
}
