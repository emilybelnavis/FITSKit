# FITSKit

Part of **Project Meridian**, the library family powering **AstroLab**.

FITSKit provides a Swift-safe FITS image and metadata API backed by CFITSIO, plus Project Meridian WCS primitives.

## Scope

- FITS read/write API
- HDU enumeration
- Typed header access
- Image plane decoding
- Memory-safe CFITSIO wrapper boundary
- Basic WCS model and TAN/SIP support
- Metadata normalization used by capture and solving
- FITS test corpus and malformed-file handling

## Direct Project Meridian dependencies

- None

## Platform and implementation policy

- macOS 27+
- Apple Silicon first
- Swift 6 strict concurrency
- Objective-C prohibited
- CFITSIO is isolated behind FITSKit's Swift API

## Development

```sh
swift build
swift test
```

See `AGENTS.md`, `PLANS.md`, and `docs/SPEC.md`.
