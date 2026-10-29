## 📝 Change Summary
*Provide a concise summary of the module additions, enhancements, or bug fixes:*
- 

## 🔗 Related Issue / Work Item
*Link the relevant project issue (e.g., Closes #12):*
- Closes #

## 🏷️ Change Classification
*Select all applicable types with [x]:*
- [ ] Feature Implementation (`feat`)
- [ ] Bug Fix (`fix`)
- [ ] Architecture / Refactoring (`refactor`)
- [ ] Documentation Update (`docs`)
- [ ] Automated Test Suite (`test`)

---

## 🛡️ PiGO Quality & Security Checklist
*Mandatory verification by the Contributor before requesting Supervisory Review:*
- [ ] **Local Verification**: Changes have been tested and verified locally.
- [ ] **Zero-Regression**: Existing system capabilities remain fully functional without regressions.
- [ ] **Syntax & Type Validation**: All modified files pass CLI syntax checks (`php -l` / `tsc --noEmit`).
- [ ] **Role-Aware Anti-IDOR**: User-scoped mutations and queries enforce strict identity/role binding.
- [ ] **Zero-Leakage Assurance**: Verified that no secrets, credentials, or `.env` files are tracked in this PR.
- [ ] **Sanitization Defense**: Server-side input validation and output encoding (`htmlspecialchars`) applied.
- [ ] **Target Branch Alignment**: PR targets the `staging` integration branch (not `main`).

---

## 👥 Review & Supervisory Sign-off
- **Assigned Contributor**: @
- **Assigned Supervisor / Reviewer**: @
