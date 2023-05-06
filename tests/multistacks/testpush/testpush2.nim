discard """
  targets: "c cpp js"
  matrix: "--mm:orc;--mm:refc"
"""

import std/unittest
import ../../../src/multistacks

var stack = newMultiStack[int]()
stack.push([newSeq[int]()]) # Do nothing.
check stack.peek().len == 0
check stack.height == 0
