package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_019ee7eb1b84
# All approved clauses included


    # Rule: C1
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c1_advi := {"allow": true, "reason": "Clause C1: Advisory - CONDITIONAL"} if {
        input.clientname == "SERKO"
    input.nlpcomponents == "Sentence Transformers, DSL parsing, Google Gemini"
    input.policyevaluationtool == "Open Policy Agent (OPA)"
    input.policyrulelanguage == "Rego"
    input.source == "Professional Experience, Hutech Solutions"
    }


    # Rule: C2
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: warn
    # Ambiguous: False
    allow_c2_cond := {"allow": true, "reason": "Clause C2: Conditional Allowance - CONDITIONAL"} if {
        input.enforcementlevel == "MUST"
    input.source == "Professional Experience, Hutech Solutions"
    }


    # Rule: C3
    # Intent: ADVISORY
    # Action: enforce
    # Ambiguous: False
    allow_c3_advi := {"allow": true, "reason": "Clause C3: Advisory - CONDITIONAL"} if {
        input.datavalidationtools == "Google BigQuery, SQL"
    input.reconciliationfrequency == "daily"
    input.applicableassetdata == "Brokerage asset data (equities, InvITs, bonds, gold)"
    input.datasources == "Professional Experience, Financial Portfolio Data Platform (Winrich)"
    }


    # Rule: C4
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c4_cond := {"allow": true, "reason": "Clause C4: Conditional Allowance - CONDITIONAL"} if {
        input.dataupdatefrequency == "daily"
    input.pipelinesource == "Professional Experience, Financial Portfolio Data Platform (Winrich)"
    }


    # Rule: C5
    # Intent: CONDITIONAL_ALLOWANCE
    # Action: enforce
    # Ambiguous: False
    allow_c5_cond := {"allow": true, "reason": "Clause C5: Conditional Allowance - CONDITIONAL"} if {
        input.supportedprototypes == "ESP32, NodeMCU"
    }


    # Rule: C6
    # Intent: ADVISORY
    # Action: warn
    # Ambiguous: False
    allow_c6_advi := {"allow": true, "reason": "Clause C6: Advisory - CONDITIONAL"} if {
        input.recognitionevent == "Qualcomm Design in India Challenge"
    input.source == "Projects & Achievements, Qualcomm Design in India Challenge – Ayati Devices"
    }


    # Rule: C7
    # Intent: ADVISORY
    # Action: enforce
    # Ambiguous: False
    allow_c7_gen := {"allow": true, "reason": "Clause C7: ADVISORY - EDITED"} if {
        input.degreename == "Bachelor of Engineering in Information Science"
    input.institutionname == "Vemana Institute of Technology"
    input.startyear == "2017"
    input.endyear == "2022"
    }

# Default: Allow if no violations
allow_default {
    true
}
