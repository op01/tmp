import {
  add,
  multiply,
} from "./arithmetic.ts"

import {
  assertEquals
} from "https://deno.land/std@0.71.0/testing/asserts.ts"

Deno.test("add #1", () => {
  const x = add(1,2)
  assertEquals(x, 3)
})

Deno.test("multiply #1", () => {
  const x = multiply(5,4)
  assertEquals(x, 20)
})