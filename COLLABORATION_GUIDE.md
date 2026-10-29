# Collaboration & Team Engineering Guide
*PiGO Framework Collaboration Standard — Professional Multi-Tier Engineering Workflow (Oktober 2026)*

Welcome to the engineering team! This guide establishes professional collaboration standards for **Project Leads**, **Supervisors / Reviewers**, and **Module Contributors** to build robust, scalable, and production-grade software together seamlessly without risking system regressions or data breaches.

---

## 👥 1. Role & Responsibility Matrix

| Professional Role | Designation | Primary Responsibilities |
|---|---|---|
| **Principal Architect & Project Lead** | Lead Maintainer | Owns the `main` branch, governs system architecture, enforces security policies, approves production releases, and manages environment secrets. |
| **System Supervisor & Core Reviewer** | Review Authority | Validates business logic, conducts architectural and code reviews, oversees milestone delivery, and mentors contributors. |
| **Module Contributor & Feature Developer** | Implementation Engineer | Builds isolated features/modules on dedicated branches, maintains clean MVC patterns, validates locally, and submits structured Pull Requests. |

---

## 🌿 2. Git Workflow (5-Stage Standard Pipeline)

Direct commits to the `main` production branch are **strictly prohibited**. All feature implementations and bugfixes must traverse this standardized pipeline:

```
[main] ───────────────────────────┬ (Solely merged by Principal Architect)
                                  │
[staging] ──────┬─────────────────┴ (Integration & Supervisory Testing)
                │ (git checkout -b)
[feat/module] ──┴─── (Contributor Workspace) ───► [Submit Pull Request]
```

### Stage 1: Synchronize Workspace
Before starting any new task, ensure your local integration branch is synchronized with upstream:
```bash
git checkout staging
git pull origin staging
```

### Stage 2: Create an Isolated Feature Branch
Branch naming convention: `feat/<contributor-name>-<module-name>` or `fix/<contributor-name>-<bug-summary>`.
```bash
git checkout -b feat/alex-assessment-scoring
```

### Stage 3: Develop Locally with Environment Isolation
- Run against local development environments (XAMPP / Docker / Local DB).
- **Never connect development instances to production databases**.
- Leverage your AI pair-programmer under `.agents/AGENTS.md` guidelines.

### Stage 4: Self-Audit & Pre-Commit Verification
Before staging changes:
1. Ensure no credentials, API keys, or `.env` files are tracked (`git status`).
2. Run syntax and type checks locally via CLI (e.g., `php -l <file>` or `npm run build`).
3. Enforce **Anti-IDOR Owner Binding** on all user-scoped data mutations (`WHERE id = :id AND user_id = :current_user`).

Commit with clear, conventional messages:
```bash
git add .
git commit -m "feat(assessment): implement scoring evaluation algorithm"
```

### Stage 5: Publish Branch & Initiate a Pull Request (PR)
Push your feature branch to the remote repository:
```bash
git push -u origin feat/alex-assessment-scoring
```
Navigate to GitHub and create a **Pull Request**:
- **Base branch**: `staging` (never target `main` directly).
- **Compare branch**: `feat/alex-assessment-scoring`.
- Complete the PR checklist and request review from your assigned **System Supervisor**.

---

## 🔒 3. Enterprise Security & Quality Directives

1. **Zero-Leakage Policy**:
   - Secrets, database credentials, and private keys must remain strictly in `.env`.
   - `.env` is permanently excluded via `.gitignore`. Refer to `.env.example` for required variables.
2. **Role-Aware Anti-IDOR**:
   - Direct object references must always verify authorization: `(user_id = :current_user OR :role = 'admin')`.
3. **Defensive Input & Output Sanitization**:
   - Validate input parameters on the server side (type, length, schema).
   - Sanitize all view renderings with `htmlspecialchars(..., ENT_QUOTES, 'UTF-8')`.
4. **Subresource Integrity (SRI)**:
   - External CDN assets must include `integrity="sha384-..."` and `crossorigin="anonymous"`.

---

## ⚡ 4. Utilizing AI Pair-Programming (PiGO Shortcuts)

Contributors using AI-assisted IDEs (Google Antigravity, Cursor, VS Code) can utilize PiGO shortcuts for autonomous compliance checks:
- `pigo test` : Validates syntax and regression checks across touched files.
- `pigo fix`  : Diagnoses terminal/execution logs and resolves bugs autonomously.
- `pigo audit`: Validates security headers, Anti-IDOR, and pre-commit secret scans before submitting PRs.

---

## 🤝 5. Escalation & Code Review Etiquette
- For blocking architectural dilemmas, tag your **System Supervisor** on the GitHub Issue or PR thread.
- Resolving merge conflicts should be done via rebase or merging `staging` into your feature branch locally. Never execute `git push --force` on shared branches.
