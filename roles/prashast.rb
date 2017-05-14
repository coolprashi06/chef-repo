name "java"
description "Install oracle java"
run_list "recipe[java],recipe[prashast]"
override_attributes(
    "java" => {
            "install_flavor" => "oracle"
})
default_attributes(
  "java" => {
     "oracle" => {
       "accept_oracle_download_terms" => true
     }
   }
)