asana_call <- function(endpoint, verb = "GET", ...) {
  #' General Asana API GET call
  RETRY(
    verb = verb,
    url  = glue("https://app.asana.com/api/1.0/{endpoint}"),
    add_headers(
      Authorization = glue("Bearer {Sys.getenv('ASANA_BOT_TOKEN')}")
    ),
    content_type_json(),
    encode   = "json",
    ...
  ) %T>%
    stop_for_status() %>%
    content(as = "parsed")
}

asana_get_tasks <- function(project_gid) {
  asana_call(glue("projects/{project_gid}/tasks")) %$%
    data %>%
    bind_rows()
}