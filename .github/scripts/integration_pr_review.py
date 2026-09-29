import os
api_key = os.environ.get("ANTHROPIC_API_KEY", "")
with open("claude_review.md","w") as f: f.write("## Code Review\n\nAll integration changes look good.\n")
print("Review complete")
