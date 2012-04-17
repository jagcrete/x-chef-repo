name "nlc-percona"
description "persona server configuration for nlc"
run_list [
  "recipe[percona::server]",
]
override_attributes :percona => { 
                      :conf => {
                        :mysql => {
                          :port                   => 3306,
                          :socket                 => '/var/lib/mysql/data/mysql.sock'
                        },
                        :mysqld => {
                          # GENERAL
                          :user                   => 'mysql',
                          :default_storage_engine => 'InnoDB',
                          :socket                 => '/var/lib/mysql/data/mysql.sock',
                          :pid_file               => '/var/lib/mysql/data/mysql.pid',
                          # MyISAM
                          :key_buffer_size        => '32M',
                          :myisam_recover         => 'FORCE,BACKUP',
                          # SAFETY
                          :max_allowed_packet     => '16M',
                          :max_connect_errors     => 1000000,
                          :skip_name_resolve      => 1,
                          :sql_mode               => 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_AUTO_VALUE_ON_ZERO,NO_ENGINE_SUBSTITUTION,NO_ZERO_DATE,NO_ZERO_IN_DATE,ONLY_FULL_GROUP_BY',
                          :sysdate_is_now         => 1,
                          :innodb                 => 'FORCE',
                          :innodb_strict_mode     => 1,
                          # DATA STORAGE
                          :datadir                => '/var/lib/mysql/data/', 
                          # BINARY LOGGING
                          :log_bin                => '/var/lib/mysql/data/mysql-bin',
                          :expire_logs_days       => 14,
                          :sync_binlog            => 1,
                          # CACHES AND LIMITS
                          :tmp_table_size         => '32M',
                          :max_heap_table_size    => '32M',
                          :query_cache_type       => 0,
                          :query_cache_size       => 0,
                          :max_connections        => 500,
                          :thread_cache_size      => 50,
                          :open_files_limit       => 65535,
                          :table_definition_cache => 1024,
                          :table_open_cache       => 2048,
                          # INNODB
                          :innodb_flush_method    => 'O_DIRECT',
                          :innodb_log_files_in_group  => 2,
                          :innodb_log_file_size   => '64M',
                          :innodb_flush_log_at_trx_commit => 1,
                          :innodb_file_per_table  => 1,
                          :innodb_buffer_pool_size  => '592M',
                          # LOGGING
                          :log_error              => '/var/lib/mysql/data/mysql-error.log',
                          :log_queries_not_using_indexes => 1,
                          :slow_query_log         => 1,
                          :slow_query_log_file    => '/var/lib/mysql/data/mysql-slow.log'
                        },
                      },
                      :keyserver => 'pgp.mit.edu' 
                    }
