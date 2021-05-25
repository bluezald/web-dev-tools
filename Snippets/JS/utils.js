export const timerWithCompletion = (seconds, completion) => {
  let counter = 0
  let interval = setInterval(() => {
    counter++
    if (counter === seconds) {
      if (completion) {
        return completion()
      }
      clearInterval(interval)
    }
  }, 1000)
}