## v1.0.0

- Initial release. Systemlessly blocks the KEY_LEFTMETA (Win/Cmd key) keyboard input by mapping it to UNKNOWN.

## v1.1.0

- Use a more robust method to block the Meta key input, ensuring better compatibility across different devices and Android versions.
- Change the implementation to comment out the `KEY_LEFTMETA` key mapping instead of mapping it to UNKNOWN.
- Support KernelSU's online update mechanism.
