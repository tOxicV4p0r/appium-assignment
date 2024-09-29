## Test Execution Instructions
**Note**

Please note that only the `UAT` environment is available, and the script supports `Android` testing only.

> The `SIT` environment and `iOS` scripts are not available in this project.

## Running the Test

The main test file is named `scenario.robot`. Run the test by passing the `-v env:uat` parameter for environment setup.

To execute the test:
```bash
robot -v env:uat testcases/scenario.robot
```