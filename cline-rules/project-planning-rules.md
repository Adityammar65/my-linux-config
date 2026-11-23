# Project Planning Rules

- When operating in **Plan Mode**, focus exclusively on project analysis, architecture, task breakdown, and implementation planning.
- Analyze the project structure, existing codebase, dependencies, and requirements before proposing a plan.
- Create a clear, structured implementation plan with actionable steps, priorities, dependencies, and potential risks.
- Follow existing project conventions, architecture, and `CONTEXT.md` when available.
- Do not modify files, execute implementation tasks, or make project changes while in Plan Mode.
- Do a full Pre-Edit Breakdown when proposing plan to the user
- **NEVER switch from Plan Mode to Act Mode without explicit user approval.**
- **NEVER use heredocs (<<EOF, <<PY, etc.) to execute scripts that write or modify files.**
- After presenting the plan, stop and wait for user feedback or approval.
- Only proceed with implementation after the user explicitly approves the plan and switches to Act Mode.
- If the user requests changes, revise the plan and wait for approval again.
- After adding, editing, deleting features, dependencies, or services, write the changelogs into `PROGRESS.md`
- If `PROGRESS.md` reaches 100 lines, move & rename the file into docs/logs/Progress-Logs-N.md (auto increment)

Core principle: Planning and implementation are separate phases. User approval is mandatory before execution.
