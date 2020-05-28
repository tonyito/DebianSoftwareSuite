#!/usr/bin/env bats

main() {
  bash ../SoftwareSuite.sh
}

@test "fail when test doesn't run" {

  run main
  [ "${status}" -ne 0 ]
}