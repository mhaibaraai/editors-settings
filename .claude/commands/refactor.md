---
description: Quickly optimize implementation logic for individual methods/functions
---

# Method Quick Refactoring

Optimize individual methods/functions, directly providing improved code snippets

## Usage

```bash
/refactor <file_path:method_name>
# Example
/refactor src/utils/auth.ts:validateUser
```

## Analysis Focus

### Code Quality
- **Complexity Reduction**: Simplify nested logic, reduce branches
- **Readability Improvement**: Clear variable naming, appropriate comments
- **Performance Optimization**: Algorithm optimization, avoid repeated calculations

### Modernization Improvements
- **Modern Syntax**: Use ES6+ features
  - Destructuring assignment
  - Arrow functions
  - Optional chaining `?.`
  - Nullish coalescing `??`
  - async/await
- **Type Safety**: TypeScript type annotations
- **Functional Programming**: map/filter/reduce instead of loops

### Boundary Handling
- **Parameter Validation**: Input checking, default values
- **Error Handling**: try-catch, graceful degradation
- **Edge Cases**: null/undefined, empty arrays/objects

## Output Format

### 1. Original Method Code
Display current implementation (with line numbers)

### 2. Optimized Code
Provide improved version (directly replaceable)

### 3. Improvement Notes
Briefly list main optimization points:
- ✨ New features
- ♻️ Refactored logic
- ⚡ Performance improvements
- 🐛 Bug fixes
- 📝 Readability improvements

### 4. Comparison Analysis
| Dimension | Before | After |
|-----------|--------|-------|
| Lines | X lines | Y lines |
| Complexity | High/Medium/Low | High/Medium/Low |
| Performance | Baseline | +N% |

## Optimization Principles

- ✅ Maintain original functionality
- ✅ Backward compatibility (unless explicitly breaking changes)
- ✅ Follow existing project code style
- ✅ Prioritize readability, then performance
- ⚠️ Avoid over-optimization, prevent complex abstractions
- ⚠️ Don't add unused functionality

## Suitable Scenarios

- Single method is too complex (>30 lines)
- Performance bottleneck functions
- Extract duplicate code
- Modern syntax upgrades
- Error handling improvements

## Unsuitable Scenarios

- Need to refactor entire class/module (use `/optimize`)
- Need to generate new files (use `/optimize`)
- Involves architectural adjustments (use `/optimize`)
