---
applyTo: '**'
description: Analyze code performance, quality, and security issues with specific optimization solutions
---

# Code Optimization Analysis

${1:+Analyze `$1` for}${1:-Analyze entire project for} performance, quality, and security issues with specific optimization solutions

${1:+@$1}

## Analysis Scope

${1:+**Target File**: `$1`}${1:-**Entire Project**: Scan all source code files, focusing on:
- Core business logic files
- Performance-critical paths
- Security-sensitive modules
- High-frequency components}

## Analysis Focus

### 1. Critical Issues (Priority Handling)

- **Security Vulnerabilities**: Input validation, permission control, dependency vulnerabilities
- **Performance Bottlenecks**: Memory leaks, algorithm complexity, blocking operations
- **Error Handling**: Missing try-catch, null/undefined checks

### 2. Code Quality

- **Code Duplication**: Extract common logic
- **Complex Functions**: Split functions exceeding 30 lines
- **Cyclomatic Complexity**: Reduce to below 10

### 3. Modernization Improvements

- **Modern Syntax**: ES6+, optional chaining `?.`, nullish coalescing `??`, async/await
- **Type Safety**: TypeScript type definitions, strict mode
- **Performance Optimization**:
  - Frontend: Component memoization, lazy loading, code splitting
  - Backend: Database indexing, caching, concurrency optimization

## Output Requirements

${1:+### Single File Optimization
1. **Issue List**: List discovered issues by priority (P0/P1/P2)
2. **Optimized Code**: Create new file with optimized code, keep original unchanged
   - Naming convention: `$1.optimized` or create `optimized/` subdirectory
3. **Improvement Summary**: Brief description of main improvements and expected effects
4. **Risk Notice**: Mention compatibility impacts if any}${1:-### Project-wide Optimization
1. **Issue List**: List discovered issues by file/module with priority labels
2. **Optimization Plan**:
   - P0 Critical: Files requiring immediate fixes
   - P1 Important: Modules planned for optimization
   - P2 Improvements: Long-term optimization directions
3. **Priority Files**: Create optimized versions for 3-5 most critical files (new files)
4. **Architecture Recommendations**: Overall architectural improvement directions}

## Implementation Principles

- ✅ Security first, no new risks introduced
- ✅ Maintain backward compatibility
- ✅ Concise and efficient code using modern syntax
- ✅ **YAGNI Principle**: Only optimize what's truly needed, avoid over-optimization
- ✅ **Do not modify original files**: All optimized code output as new files

## Optimization Constraints

- ⚠️ Only fix known issues and obvious performance bottlenecks
- ⚠️ Don't add features or abstractions that might be needed in the future
- ⚠️ Don't rewrite working code just for "perfection"
- ⚠️ Prioritize readability and maintainability over extreme performance

## Documentation Output

${1:+- Analysis Report: `docs/optimize/$1_analysis.md`
- Optimized File: `$1.optimized` or `optimized/$1` (original file remains unchanged)}${1:-- Overall Analysis: `docs/optimize/project_optimization_plan.md`
- Optimized Files: Create `optimized/` subdirectories in respective file directories to store optimized versions}
