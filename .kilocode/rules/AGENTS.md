# AGENTS.md
This project the flutter SDK for JamaiBase V2 as of 2025-10-03. We adhere to best Dart and Flutter practices to ensure code reusabilty. This SDK is used to interact with the SAAS platform https://cloud.jamaibase.com/

the url here can be replaces for the case of local deployments. The usasge of the sdk is modular where each section of the api is split up in well defined groups for good semantics and isolation.

Generally this sdk wraps REST API calls for the user so they can quickly get up to speed using JamAI Base.

## Guidelines

- We refer to the open API specs to implement methods here https://jamaibase.readme.io/reference/
- If you are not sure about the type that the endpoint returns you can let me know then we can work on that together.
- Prefer to use the playwright MCP server when looking up the references for the open API spec.
- pay close attention to types accepted by the api. You are allowed to create enums and other types to ensure type safety when the user uses our SDK,
