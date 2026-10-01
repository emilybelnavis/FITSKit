# AGENTS.md

## Repository mission

`FITSKit` is part of **Project Meridian**, the library family behind **AstroLab**.

Mission: provide a Swift-safe FITS image and metadata API backed by CFITSIO, plus Project Meridian WCS primitives.

## Hard constraints

- Project source is Swift; Objective-C and Objective-C++ are prohibited.
- CFITSIO is allowed as a reviewed C dependency and must remain behind FITSKit's Swift API.
- No Qt, KDE, Electron or embedded JavaScript runtime.
- Swift 6 strict concurrency.
- macOS 27 is the minimum supported platform.
- Higher-level packages must not need to understand CFITSIO handles or C memory ownership.

## Implementation rules

- Make C resource ownership explicit and deterministic.
- Convert CFITSIO failures into typed Swift errors.
- Never expose raw C pointers through the public API.
- Preserve FITS header semantics and ordering where required.
- Malformed files must fail safely.
- Keep WCS models independent enough to test without file I/O.
- Add fixtures for every supported HDU/data-shape path.
- Avoid unnecessary full-frame copies for large images.

## Codex workflow

Read `README.md` and `docs/SPEC.md` when changing public behavior, C boundaries, or WCS behavior. Use `PLANS.md` for substantial work.

Before finishing:

1. Build and test.
2. Run FITS fixture tests.
3. Add malformed/truncated-file coverage when parser behavior changes.
4. Check memory ownership and concurrency assumptions.
5. Update public API documentation.
