# Pre-Edit Breakdown

Before modifying any project files, you MUST create and present a **Pre-Edit Breakdown** for the user to review.

## 1. Required Breakdown

For every file planned to be created, modified, renamed, or deleted, provide:

- **File Path:** Exact relative path from the project root.
- **Action:** Create, Modify, Rename, or Delete.
- **Estimated Location:** Approximate line number or line range where the change will occur.
- **Change Description:** Concise explanation of what will be added, modified, or removed.
- **Reason:** Why the change is necessary.

For new files, use `N/A (New File)` as the estimated line location and describe the expected structure or content.

For deleted files, use `Entire File`.

## 2. Line Estimation Rules

- Inspect the current source code before estimating line locations.
- Use actual line numbers whenever possible, not arbitrary estimates.
- For modifications, identify the expected line range and relevant function, class, component, or section.
- For insertions, identify the approximate insertion point and its surrounding code.
- If the exact location cannot be determined before implementation, explicitly mark it as `Tentative` and explain why.
- Estimates are not fixed boundaries; update the breakdown if implementation requires a materially different scope.

## 3. Required Output Format

Present the breakdown using this structure:

| File Path | Action | Estimated Lines | Planned Changes |
|---|---|---|---|
| `path/to/file` | Modify | 45–68 | Update validation logic |
| `path/to/new-file` | Create | N/A (New File) | Add a new service class |

Follow the table with:

**Scope Summary**
- Total files to create:
- Total files to modify:
- Total files to rename:
- Total files to delete:
- Potential impact or dependencies:

## 4. Approval Gate

- Present the complete Pre-Edit Breakdown before making any modifications.
- Wait for explicit user approval before proceeding.
- Do not interpret requests for planning, analysis, or code suggestions as approval.
- If the user requests changes to the breakdown, revise it and present the updated version.
- Do not modify files outside the approved breakdown.

## 5. Scope Changes During Implementation

If implementation reveals that additional files need to be changed, or the planned changes materially exceed the approved scope:

1. Stop the affected implementation.
2. Explain why the original breakdown is insufficient.
3. Present an updated Pre-Edit Breakdown.
4. Wait for explicit user approval before proceeding with the additional changes.

Minor implementation adjustments within the approved file and functional scope do not require a new approval.

## 6. General Requirements

- Keep the breakdown concise but sufficiently detailed for the user to understand the impact.
- Include configuration, documentation, tests, and supporting files when they require changes.
- Do not omit files merely because their changes are small.
- Never claim a file will remain untouched if the implementation may modify it.
- This rule applies regardless of whether the modification is performed through editor tools, terminal commands, scripts, Python, heredocs, or other execution methods.
