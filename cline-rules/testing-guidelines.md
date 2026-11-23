# Testing Guidelines

## 1. Testing Permissions
- Testing is allowed and encouraged as part of development.
- Freely execute tests, linters, static analysis, build checks, and other validation commands that do not involve Docker operations.
- Do not skip testing when it can be performed safely.

## 2. Docker Environment
- If the project runs in a Docker environment, prioritize testing outside Docker whenever reasonably possible.
- Use locally available runtimes, tools, and dependencies to perform tests without interacting with Docker.
- Never execute Docker-related operations, including:
  - `docker` and `docker compose` commands.
  - Container creation, removal, restart, or rebuild.
  - Image or volume modifications.
  - Docker service or network modifications.
- Do not attempt to bypass these restrictions through alternative tools.

## 3. User Testing Instructions
- If testing requires Docker operations, do not execute those operations yourself.
- Instead, provide the user with clear, step-by-step testing instructions.
- Include the exact commands to execute, expected results, and what to verify.
- Explain which tests could not be performed due to Docker restrictions.

## 4. Reporting
- Clearly distinguish between:
  - Tests executed successfully.
  - Tests executed but failed.
  - Tests not executed because they require Docker operations.
- Never claim a test has passed if it has not actually been executed.
