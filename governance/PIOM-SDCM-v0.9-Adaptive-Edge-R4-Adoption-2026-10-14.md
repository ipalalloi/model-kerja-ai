# PIOM-SDCM v0.9 — Adaptive Edge R4 Adoption Policy
Date: 2026-10-14
Status: APPROVED GOVERNANCE POLICY; IMPLEMENTATION PER PROJECT REQUIRES VERIFICATION
Scope: Existing and future projects. This is a PIOM profile, not a replacement for PiGO v11.0 or any other framework.

## Immutable principles
- CORE_FREEZE v0.9 remains unchanged.
- Lifecycle: RESPONSIBILITY -> GOAL -> EVIDENCE PLAN -> ROUTE -> EXECUTE -> VERIFY -> DECIDE -> PROMOTE/ARCHIVE.
- Separate canonical repository, candidate branch/PR, CI result, package digest, deployed runtime, DB migration epoch, and human acceptance.
- Never infer canonical project truth from chat memory, agent sessions, Dots, cloud workspace, or PR status.
- No silent deployment, database migration, destructive rollback, credential changes, publication submission, or cross-project promotion.
- Project-specific known-good baselines and tenant isolation take precedence over generic templates.
- Preserve configuration and credentials; no secrets in commits, telemetry, ZIPs, or evidence registry.

## Required Adaptive Edge profiles
1. ESAR + Runtime Placement: select executor/model/reasoning/service tier based on capability, permissions, privacy, cost and verification requirements.
2. Model Capability and Sunset Guard: inventory model IDs; check official retirement schedules; compatibility tests before substitution.
3. Persistent Responsibility/Project Steward: identify owner, next decision, evidence frontier and stalled promotions; observations are not authority.
4. Cross-Surface Delegation/Permission Drift/Personalization Boundary: delegated task requires project ID, approved authority scope, artifact digest and trace.
5. Runtime Source Parity + True-Live Reconciliation: record repository SHA, deployed artifact identity, database migration status, and user acceptance separately.
6. Baseline-Aware Regression + Portable Verification Runner: compare with known-good baseline; record environment fingerprint and inherited failures.
7. Evidence Artifact Gate + Observability + Grounding: trace claim -> source -> version -> test -> outcome, minimal necessary telemetry.
8. Side-Effect Idempotency + Paired Code/DB Restore + Migration Irreversibility: dry run, restore boundary, and explicit approval for consequential actions.
9. Academic evidence profile: authoritative manuscript identity, citation provenance, pilot data, independent coding, reviewer findings, reproducibility and submission gate.
10. Event-Driven Evidence Watch: alert only on material verified changes, security exposure, or pending human decisions.

## Project-specific protection (historical state, not fresh live verification)
- DOSEN MAIN: TC-015 solo 16 / team teaching 8 / PAW normal user-reported live success; PR #43 draft; reconcile live and canonical without replaying migration 027.
- DOSEN Multi-Prodi: tenant-isolated architecture; do not copy MAIN migrations.
- RPS_app: PR #7 draft; preserve governance/composer baseline; verify release lineage and staging acceptance.
- PIOM-NEXUS (PPF-V2): PR #29 draft, Build 0006 cPanel candidate; package verification is not server/device acceptance.
- IAEF: maintain eliminated novelty hypotheses unless new independent prior-art evidence changes assessment.
- KONSTELASI/APTIKOM: reviewer pilot comparison and independent N-O-P coding unresolved until source evidence.
- RESTI: independent contribution and overlap check against KONSTELASI; no unverified submission-ready claim.
- LivingLAB-PhD: Dimitri validation return reported 2026-10-08; reconcile source form/master sheet; do not infer CVI from correspondence.
- Other projects: enroll with separate identity, owner, canonical baseline, evidence plan, verification frontier and approval boundary before first promotion.

## Required evidence registry fields
project_id, domain, responsibility_id, goal, canonical_repo_or_document, baseline_sha_or_version, candidate_sha_or_version, environment_fingerprint, artifact_sha256, runtime_identity, migration_epoch, verification_method, verification_result, evidence_uri, evidence_timestamp, confidence, next_human_decision, approver, promotion_state.

## Adoption
This policy is approved for use across existing and future projects. It does NOT attest that individual projects have been modified, tested, deployed, or promoted. Existing project implementation is opt-in per verified project-specific change. No automatic mass edits or cross-repo synchronization.
