## Usage

### Get Started

To use this workflow, follow these steps:

1. **Use this template**: Click on the "Use this template" button on the GitHub repository page to create a new repository based on this template.

2. **Name your repository**: Give your new repository a name of your choice.

3. **Configure workflow**: After creating the repository, navigate to the Actions tab and click on "Set up a workflow yourself". Copy and paste the content of the `auto.yml` file from this repository into the editor.

4. **Set user email and name**: Update the `GIT_USER_EMAIL` and `GIT_USER_NAME` environment variables in the workflow file (`auto.yml`) to reflect your GitHub account details.

5. **Update RPC URLs**: Update the RPC URLs in each script file (`eth.sh`, `near.sh`, `starknet.sh`, and `axelar.sh`) with the corresponding URLs of your blockchain networks.

6. **Run the workflow**: The workflow is triggered automatically on a schedule (every 15-20 minutes) and can also be manually triggered from the GitHub UI.

### Manual Trigger

You can manually trigger the workflow from the GitHub UI by selecting the "Run workflow" option.


### Shout out
1) [dante4rt](https://github.com/dante4rt/)
2) [Megumiiiiii](https://github.com/Megumiiiiii/)
