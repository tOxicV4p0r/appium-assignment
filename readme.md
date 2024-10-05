## Test Execution Instructions
**Note**

Please note that only the `UAT` environment is available in testing only.

> The `SIT` environment is not available in this project.

## Running the Test

The main test file is named `scenario.robot`. Run the test by passing the `-v env:uat` parameter for environment setup and passing the `-v platform:android` `android` or `ios` for platform.

To execute the test:
```bash
robot -v env:uat -v platform:android testcases/scenario.robot
```