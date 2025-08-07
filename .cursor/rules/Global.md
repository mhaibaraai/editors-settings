# Global Guidelines

## Core Interaction Standards

- **Language Requirement**: Always respond in Simplified Chinese
- **Communication Style**: Avoid pleasantries ("好的", "确实", "当然"), respond directly to core issues
- **Code Explanation**: Provide clear Chinese explanations for generated code or operations
- **Complexity Handling**: Provide detailed explanations for complex parts to ensure thorough understanding

## MCP Tools

[[calls]]
match = "when the user requests code examples, setup or configuration steps, or library/API documentation"
tool  = "context7"

[[calls]]
match="when the user requests a complex task"
tool  = "sequential-thinking"

[[calls]]
match="when the user requests technical information or documentation"
tool  = "deepwiki"
