name "nlc-production"
description "production environment for nlc"

# default production settings
default_attributes "php" => {
                      "ini" => {
                        "PHP" => {
                          "short_open_tag" => "Off",
                          "asp_tags" => "Off",
                          "precision" => "14",
                          "y2k_compliance" => "On",
                          "output_buffering" => "4096",
                          "zlib.output_compression" => "Off",
                          "implicit_flush" => "Off",
                          "unserialize_callback_func" => "",
                          "serialize_precision" => "100",
                          "allow_call_time_pass_reference" => "Off",
                          "safe_mode" => "Off",
                          "safe_mode_gid" => "Off",
                          "safe_mode_include_dir" => "",
                          "safe_mode_exec_dir" => "",
                          "safe_mode_allowed_env_vars" => "PHP_",
                          "safe_mode_protected_env_vars" => "LD_LIBRARY_PATH",
                          "disable_functions" => "",
                          "disable_classes" => "",
                          "realpath_cache_size" => "256k",
                          "realpath_cache_ttl" => "72000",
                          "expose_php" => "Off",
                          "max_execution_time" => "60",
                          "max_input_time" => "60",
                          "memory_limit" => "64M",
                          "error_reporting" => "E_ALL & ~E_DEPRECATED",
                          "display_errors" => "Off",
                          "display_startup_errors" => "Off",
                          "log_errors" => "On",
                          "log_errors_max_len" => "1024",
                          "ignore_repeated_errors" => "Off",
                          "ignore_repeated_source" => "Off",
                          "report_memleaks" => "Off",
                          "track_errors" => "Off",
                          "html_errors" => "Off",
                          "variables_order" => "GPCS",
                          "request_order" => "GP",
                          "register_globals" => "Off",
                          "register_long_arrays" => "Off",
                          "register_argc_argv" => "Off",
                          "auto_globals_jit" => "On",
                          "post_max_size" => "26M",
                          "magic_quotes_gpc" => "Off",
                          "magic_quotes_runtime" => "Off",
                          "magic_quotes_sybase" => "Off",
                          "auto_prepend_file" => "",
                          "auto_append_file" => "",
                          "default_mimetype" => "text/html",
                          "doc_root" => "",
                          "user_dir" => "",
                          "enable_dl" => "Off",
                          "file_uploads" => "On",
                          "upload_max_filesize" => "25M",
                          "max_file_uploads" => "20",
                          "allow_url_fopen" => "On",
                          "allow_url_include" => "Off",
                          "default_socket_timeout" => "8",
                        }, # PHP
                        "Date" => {
                          "date.timezone" => "(\"Amercia/New York\")"
                        },
                        "Pdo_mysql" => {
                          "pdo_mysql.cache_size" => "2000"
                        },
                        "Syslog" => {
                          "define_syslog_variables" => "Off"
                        },
                        "mail function" => {
                          "SMTP" => "localhost",
                          "smtp_port" => 25
                          "sendmail_path" => "/usr/sbin/sendmail -t -i",
                          "mail.add_x_header" => "On"
                        },
                        "SQL" => {
                          "sql.safe_mode" => "Off"
                        },
                        "MySQL" => {
                          "mysql.allow_persistent" => "On",
                          "mysql.max_persistent" => "-1",
                          "mysql.max_links" => "-1",
                          "mysql.default_port" => "",
                          "mysql.default_socket" => "",
                          "mysql.default_host" => "",
                          "mysql.default_user" => "",
                          "mysql.default_password" => "",
                          "mysql.connect_timeout" => "60",
                          "mysql.trace_mode" => "Off"
                        },
                        "MySQLi" => {
                          "mysqli.max_links" => "-1",
                          "mysqli.default_port" => "3306",
                          "mysqli.default_socket" => "",
                          "mysqli.default_host" => "",
                          "mysqli.default_user" => "",
                          "mysqli.default_pw" => "",
                          "mysqli.reconnect" => "Off"
                        }
                        "Session" => {
                          "session.save_handler" => "files",
                          "session.save_path" => "/var/lib/php/session",
                          "session.use_cookies" => "1",
                          "session.use_only_cookies" => "1",
                          "session.name" => "PHPSESSID",
                          "session.auto_start" => "0",
                          "session.cookie_lifetime" => "0",
                          "session.cookie_path" => "/",
                          "session.cookie_domain" => "",
                          "session.cookie_httponly" => "",  
                          "session.serialize_handler" => "php",
                          "session.gc_probability" => "1",
                          "session.gc_divisor" => "1000",
                          "session.gc_maxlifetime" => "1440",
                          "session.bug_compat_42" => "Off",
                          "session.bug_compat_warn" => "Off",
                          "session.referer_check" => "", 
                          "session.entropy_length" => "0",  
                          "session.entropy_file" => "",
                          "session.cache_limiter" => "nocache",
                          "session.cache_expire" => "180",
                          "session.use_trans_sid" => "0", 
                          "session.hash_function" => "0", 
                          "session.hash_bits_per_character" => "5",
                          "url_rewriter.tags" => "a=href,area=href,frame=src,input=src,form=fakeentry"
                        }
                        "Tidy" => {
                          "tidy.clean_output" => "Off"
                        },
                        "soap" => {
                          "soap.wsdl_cache_enabled" => "0",
                          "soap.wsdl_cache_dir" => "/tmp",
                          "soap.wsdl_cache_ttl" => 86400
                        }
                      } # ini
                    } # end

