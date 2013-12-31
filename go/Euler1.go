package main

import (
  "fmt"
)

func divide_it(curr int) int {
  if(curr % 3 == 0) {
    return curr
  } else if curr % 5 == 0 {
    return curr
  }
  return 0
}

func my_range(max, curr, ans int) {
  if curr <= max {
    ans = ans + divide_it(curr)
    my_range(max, curr + 1, ans)
  } else {
    fmt.Println(ans)
  }
}

func main() {
  my_range(999, 1, 0)
}

