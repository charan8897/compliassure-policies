package data.travel_policy
# Consolidated approved policy rules for travel_policy
# Document ID: doc_22e6d4200078
# All approved clauses included

package policy.ai.data_protection.c1

import future.keywords.if
import future.keywords.in
import future.keywords.every

# Default: allow unless a deny rule fires
default allow := false

# ── Detection rules ───────────────────────────────
# Pattern: check input.prompt (single string field)
deny contains msg if {
    input.prompt
    regex.match("(?i).*MAA.*", input.prompt)
    msg := "POLICY VIOLATION [C1]: Restriction — Action: ENFORCE."
}

# Pattern: check input.messages (array field)
deny contains msg if {
    some i
    input.messages[i]
    regex.match("(?i).*MAA.*", input.messages[i])
    msg := "POLICY VIOLATION [C1]: Restriction — Action: ENFORCE."
}

# ── Final allow gate ──────────────────────────────
allow if {
    count(deny) == 0
}

# ── Audit metadata ────────────────────────────────
audit := {
    "policy"     : "policy.ai.data_protection.c1",
    "clause_id"  : "C1",
    "intent"     : "RESTRICTION",
    "severity"   : "CRITICAL",
    "enforcement": "BLOCK",
    "description": "Policy clause C1: RESTRICTION",
    "timestamp"  : time.now_ns(),
}

# Default: Allow if no violations
allow_default {
    true
}
