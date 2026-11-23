# Project Context & Recap Awareness

## 1. Context Discovery

Before performing any project-related task:

- Check the project root for `CONTEXT.md` and `RECAP.md`.
- Read both files completely if they exist, if the files is empty or if the user does not provide those files, proceed act normally.
- Do this before analyzing, planning, reviewing, or modifying code.
- Never assume the project's purpose based solely on its existing codebase.
- Match documentations (Readme, comments, etc) language with defined project language in `CONTEXT.md`

## 2. CONTEXT.md — Project Definition

Treat `CONTEXT.md` as the primary source of truth for understanding:

- Project overview, background, and objectives.
- Features and functional requirements.
- Technology stack and architecture.
- Development scope and limitations.
- Project conventions and established decisions.

Development must remain aligned with the defined project objectives and requirements.

Do not introduce unrelated features, technologies, or architectural changes without user approval.

Never modify `CONTEXT.md` unless explicitly instructed by the user.

## 3. RECAP.md — Project Findings & Issues

Treat `RECAP.md` as the project's ongoing technical findings record.

Use it to track:

- **Issues:** Identified problems, inconsistencies, and technical concerns.
- **Bugs:** Confirmed defects and unexpected behavior.
- **Maintainability:** Technical debt, code quality concerns, duplication, and architectural weaknesses.
- **Vulnerabilities:** Potential security weaknesses and confirmed security vulnerabilities.

Guidelines:

- Review relevant recap entries before working on related code.
- Update `RECAP.md` when discovering new significant findings.
- Record findings with a clear description, affected component or location, impact, and status when known.
- Distinguish confirmed problems from suspected issues.
- Avoid duplicate entries.
- Update existing entries when their status changes or they are resolved.
- Do not mark an issue as resolved without verification.
- Do not silently remove existing findings.

## 4. Missing Files

- If `CONTEXT.md` is missing, proceed using available project files and user instructions.
- If `RECAP.md` is missing, create it only when there are meaningful findings worth recording.
- Do not create placeholder files unnecessarily.

## 5. Context Priority

When information conflicts, follow this priority:

1. Explicit user instructions.
2. `CONTEXT.md` for project requirements and decisions.
3. `RECAP.md` for technical findings and known issues.
4. Existing project conventions and architecture.
5. General development best practices.

## 6. General Rules

- Keep both documents relevant, concise, and up to date.
- Do not treat `RECAP.md` as a replacement for `CONTEXT.md`.
- Do not turn every minor observation into a recap entry.
- Ask the user when conflicting requirements or important ambiguities cannot be resolved safely.
