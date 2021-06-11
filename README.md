# AVC Storage
Storage for AVC projects includes images, model versions and log files in branches.
This document helps setting up a new training machine.

## Installation

1. Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
2. Install [Gitlab Runner](https://docs.gitlab.com/runner/install/)
3. Install [python3](https://www.python.org/downloads/)


## Setting up (only 1 time):
1. Give access permission for all files in the project, at root of the project run:
```bash
chmod +x *
```

1. Register gitlab-runner, replace `PROJECT_REGISTRATION_TOKEN` with project registration token on [Project CI/CD Settings page](https://gitlab.com/adc-capstone/adc-storage/-/settings/ci_cd) (format likes `CHZbfixzsCMxPm18NG--`) in **Runners** section. :
```bash
gitlab-runner register \
  --non-interactive \
  --url "https://gitlab.com/" \
  --registration-token "PROJECT_REGISTRATION_TOKEN" \
  --executor "shell" \
  --tag-list "worker" \
  --run-untagged="false" \
```

Then restart gitlab-runner to activate it:
```bash
    gitlab-runner restart
```

## Usage

