
# Independent sleep resource
resource "time_sleep" "sleep_1" {
  create_duration = "5s"
}

# Second sleep resource depends on the first
resource "time_sleep" "sleep_2" {
  create_duration = "5s"

  depends_on = [time_sleep.sleep_1]
}

# Third sleep resource depends on the second
resource "time_sleep" "sleep_3" {
  create_duration = "5s"

  depends_on = [time_sleep.sleep_2]
}

# Fourth sleep resource depends on the third
resource "time_sleep" "sleep_4" {
  create_duration = "5s"

  depends_on = [time_sleep.sleep_3]
}
