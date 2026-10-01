# FITSKit Specification

## Purpose

Swift-safe FITS image and metadata access backed by CFITSIO, plus WCS primitives used by Project Meridian.

## Required capabilities

- [ ] FITS read/write API
- [ ] HDU enumeration
- [ ] Typed header access
- [ ] Image plane decoding
- [ ] Memory-safe CFITSIO wrapper boundary
- [ ] Basic WCS model
- [ ] TAN projection support
- [ ] SIP distortion support
- [ ] Metadata normalization used by capture and solving
- [ ] FITS fixture corpus and malformed-file handling

## Non-goals

- Reimplementing the complete FITS standard
- General image processing
- User interface

## Architectural requirements

- CFITSIO types and raw pointers do not escape the package boundary.
- File operations produce typed Swift errors.
- Public data structures should be Sendable where practical.
- WCS calculations are testable independently of file I/O.
