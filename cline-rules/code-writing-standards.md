# Code Writing Standards

## 1. Code Visibility
- Prioritize readability and visibility over excessive abstraction or overly compact implementations.
- Use clear, descriptive variable, function, and class names.
- Prefer explicit, straightforward implementations over clever or unnecessarily complex solutions.
- Avoid unnecessary one-liners, nested expressions, and excessive shorthand.
- Keep code easy to inspect, understand, and maintain.

## 2. Naming Convention
- Use commonly accepted technical terms and loanwords instead of forced Indonesian translations.
- Prefer established English technical terminology for identifiers.
- Examples:
  - `AuthController`, not `OtentikasiKontroller`.
  - `UserRepository`, not `RepositoriPengguna`.
  - `LoginRequest`, not `PermintaanMasuk`.
  - `getUserData()`, not `ambilDataPengguna()`.
- Follow existing framework and language naming conventions.

## 3. Comments
- Only write marker comments when necessary to identify sections, boundaries, or important code locations.
- Do not write explanatory, redundant, or self-evident comments.
- Every marker comment must have exactly one blank line above and below it.
- Keep marker comments short and meaningful.

Example:

```php
// Authentication

public function login()
{
    // Validate credentials

    $validated = $this->validateCredentials();
}
```

## 4. Development Progress Logging

Use `PROGRESS.md` in the project root to record development activities.

- Log every meaningful code change, fix, and feature addition.
- Write exactly one line per action.
- Keep entries concise and describe the actual change.
- Do not record analysis, discussions, or planned changes as completed actions.
- Only update `PROGRESS.md` if it already exists. Never create it automatically.

### Log Rotation

- Count the existing non-empty log entries in `PROGRESS.md`.
- When it reaches 50 lines, archive the entire file into `docs/logs/`.
- Use the naming format `PROGRESS-LOG-N.md`, where `N` is an incrementing number.
- Determine the next number from existing archived logs to avoid overwriting previous records.
- Create `docs/logs/` if it does not exist.
- Start a fresh `PROGRESS.md` with subsequent development entries.
- Preserve all previous log entries during rotation.

Example:

```text
project/
├── PROGRESS.md
└── docs/
    └── logs/
        ├── PROGRESS-LOG-1.md
        ├── PROGRESS-LOG-2.md
        └── PROGRESS-LOG-3.md
```

## 5. Consistency
- Follow existing project conventions unless they conflict with these rules.
- Apply these standards consistently across newly written or modified code.
- Avoid unrelated refactoring or formatting changes.
- Keep changes focused on the requested task.
