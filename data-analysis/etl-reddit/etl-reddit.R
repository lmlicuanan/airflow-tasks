suppressPackageStartupMessages({
  library(tidyverse)
  library(magrittr)
  library(RedditExtractoR)
  library(googleCloudStorageR)
})

thread.dt <- find_thread_urls(
  subreddit = "philippines", 
  sort_by = "top",
  period = "day"
) %>% as_tibble()

thread_content.dt <- thread.dt %>% 
  head(2) %$% get_thread_content(url) %>% 
  enframe() %>% unnest(value)

thread_with_content.dt <- thread.dt %>% 
  inner_join(
    thread_content.dt %>% select(
      url, author, comment, comment_id, 
      upvotes, downvotes
    ), by = "url"
  )

user_content.dt <- thread_with_content.dt %>% head(2) %$% 
  author %>% get_user_content() %>% enframe() %>% unnest_wider(value)

# x %>% mutate(
#   pmap(list(about, comments, threads), function(about, comments, threads) {
#     browser()
#   })
# ) 

