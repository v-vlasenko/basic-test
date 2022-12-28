package terraform

import input.tfrun as tfrun


deny[reason] {
    true
    reason := sprintf("Variables: %v.", [tfrun.shell_variables])
}