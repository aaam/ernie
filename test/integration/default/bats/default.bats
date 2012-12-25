#!/usr/bin/env bats

@test "should install the ernie gem" {
  [ "$(gem list | grep ernie)" ]
}

@test "should install erlang (erl)" {
   [ -x "/usr/bin/erl" ]
}

@test "should put ernie in the path" {
  [ "$(ernie -v)" ]
}
