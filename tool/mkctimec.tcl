#!/usr/bin/tclsh
#
# To build the
#
#   const char **azCompileOpt[]
#
# declaration used in src/ctime.c, run this script.
#

# All Boolean compile time options.
#
set boolean_options {
  SQLITE_32BIT_ROWID
  SQLITE_4_BYTE_ALIGNED_MALLOC
  SQLITE_64BIT_STATS
  SQLITE_ALLOW_COVERING_INDEX_SCAN
  SQLITE_ALLOW_URI_AUTHORITY
  SQLITE_BUG_COMPATIBLE_20160819
  SQLITE_CASE_SENSITIVE_LIKE
  SQLITE_CHECK_PAGES
  SQLITE_COVERAGE_TEST
  SQLITE_DEBUG
  SQLITE_DEFAULT_AUTOMATIC_INDEX
  SQLITE_DEFAULT_AUTOVACUUM
  SQLITE_DEFAULT_CKPTFULLFSYNC
  SQLITE_DEFAULT_FOREIGN_KEYS
  SQLITE_DEFAULT_LOCKING_MODE
  SQLITE_DEFAULT_MEMSTATUS
  SQLITE_DEFAULT_RECURSIVE_TRIGGERS
  SQLITE_DEFAULT_SYNCHRONOUS
  SQLITE_DEFAULT_WAL_SYNCHRONOUS
  SQLITE_DIRECT_OVERFLOW_READ
  SQLITE_DISABLE_DIRSYNC
  SQLITE_DISABLE_FTS3_UNICODE
  SQLITE_DISABLE_FTS4_DEFERRED
  SQLITE_DISABLE_INTRINSIC
  SQLITE_DISABLE_LFS
  SQLITE_DISABLE_PAGECACHE_OVERFLOW_STATS
  SQLITE_DISABLE_SKIPAHEAD_DISTINCT
  SQLITE_ENABLE_8_3_NAMES
  SQLITE_ENABLE_API_ARMOR
  SQLITE_ENABLE_ATOMIC_WRITE
  SQLITE_ENABLE_CEROD
  SQLITE_ENABLE_COLUMN_METADATA
  SQLITE_ENABLE_COLUMN_USED_MASK
  SQLITE_ENABLE_COSTMULT
  SQLITE_ENABLE_CURSOR_HINTS
  SQLITE_ENABLE_DBSTAT_VTAB
  SQLITE_ENABLE_EXPENSIVE_ASSERT
  SQLITE_ENABLE_FTS1
  SQLITE_ENABLE_FTS2
  SQLITE_ENABLE_FTS3
  SQLITE_ENABLE_FTS3_PARENTHESIS
  SQLITE_ENABLE_FTS3_TOKENIZER
  SQLITE_ENABLE_FTS4
  SQLITE_ENABLE_FTS5
  SQLITE_ENABLE_HIDDEN_COLUMNS
  SQLITE_ENABLE_ICU
  SQLITE_ENABLE_IOTRACE
  SQLITE_ENABLE_JSON1
  SQLITE_ENABLE_LOAD_EXTENSION
  SQLITE_ENABLE_LOCKING_STYLE
  SQLITE_ENABLE_MEMORY_MANAGEMENT
  SQLITE_ENABLE_MEMSYS3
  SQLITE_ENABLE_MEMSYS5
  SQLITE_ENABLE_MIGEMO
  SQLITE_ENABLE_MULTIPLEX
  SQLITE_ENABLE_NULL_TRIM
  SQLITE_ENABLE_OVERSIZE_CELL_CHECK
  SQLITE_ENABLE_PREUPDATE_HOOK
  SQLITE_ENABLE_RBU
  SQLITE_ENABLE_RTREE
  SQLITE_ENABLE_SELECTTRACE
  SQLITE_ENABLE_SESSION
  SQLITE_ENABLE_SNAPSHOT
  SQLITE_ENABLE_SQLLOG
  SQLITE_ENABLE_STMT_SCANSTATUS
  SQLITE_ENABLE_UNKNOWN_SQL_FUNCTION
  SQLITE_ENABLE_UNLOCK_NOTIFY
  SQLITE_ENABLE_UPDATE_DELETE_LIMIT
  SQLITE_ENABLE_URI_00_ERROR
  SQLITE_ENABLE_VFSTRACE
  SQLITE_ENABLE_WHERETRACE
  SQLITE_ENABLE_ZIPVFS
  SQLITE_EXPLAIN_ESTIMATED_ROWS
  SQLITE_EXTRA_IFNULLROW
  SQLITE_FTS5_ENABLE_TEST_MI
  SQLITE_FTS5_NO_WITHOUT_ROWID
  SQLITE_HAS_CODEC
  SQLITE_HOMEGROWN_RECURSIVE_MUTEX
  SQLITE_IGNORE_AFP_LOCK_ERRORS
  SQLITE_IGNORE_FLOCK_LOCK_ERRORS
  SQLITE_INLINE_MEMCPY
  SQLITE_INT64_TYPE
  SQLITE_LIKE_DOESNT_MATCH_BLOBS
  SQLITE_LOCK_TRACE
  SQLITE_LOG_CACHE_SPILL
  SQLITE_MEMDEBUG
  SQLITE_MIXED_ENDIAN_64BIT_FLOAT
  SQLITE_MMAP_READWRITE
  SQLITE_MUTEX_NOOP
  SQLITE_MUTEX_NREF
  SQLITE_MUTEX_OMIT
  SQLITE_MUTEX_PTHREADS
  SQLITE_MUTEX_W32
  SQLITE_NEED_ERR_NAME
  SQLITE_NOINLINE
  SQLITE_NO_SYNC
  SQLITE_OMIT_ALTERTABLE
  SQLITE_OMIT_ANALYZE
  SQLITE_OMIT_ATTACH
  SQLITE_OMIT_AUTHORIZATION
  SQLITE_OMIT_AUTOINCREMENT
  SQLITE_OMIT_AUTOINIT
  SQLITE_OMIT_AUTOMATIC_INDEX
  SQLITE_OMIT_AUTORESET
  SQLITE_OMIT_AUTOVACUUM
  SQLITE_OMIT_BETWEEN_OPTIMIZATION
  SQLITE_OMIT_BLOB_LITERAL
  SQLITE_OMIT_BTREECOUNT
  SQLITE_OMIT_CAST
  SQLITE_OMIT_CHECK
  SQLITE_OMIT_COMPLETE
  SQLITE_OMIT_COMPOUND_SELECT
  SQLITE_OMIT_CONFLICT_CLAUSE
  SQLITE_OMIT_CTE
  SQLITE_OMIT_DATETIME_FUNCS
  SQLITE_OMIT_DECLTYPE
  SQLITE_OMIT_DEPRECATED
  SQLITE_OMIT_DISKIO
  SQLITE_OMIT_EXPLAIN
  SQLITE_OMIT_FLAG_PRAGMAS
  SQLITE_OMIT_FLOATING_POINT
  SQLITE_OMIT_FOREIGN_KEY
  SQLITE_OMIT_GET_TABLE
  SQLITE_OMIT_HEX_INTEGER
  SQLITE_OMIT_INCRBLOB
  SQLITE_OMIT_INTEGRITY_CHECK
  SQLITE_OMIT_LIKE_OPTIMIZATION
  SQLITE_OMIT_LOAD_EXTENSION
  SQLITE_OMIT_LOCALTIME
  SQLITE_OMIT_LOOKASIDE
  SQLITE_OMIT_MEMORYDB
  SQLITE_OMIT_OR_OPTIMIZATION
  SQLITE_OMIT_PAGER_PRAGMAS
  SQLITE_OMIT_PARSER_TRACE
  SQLITE_OMIT_POPEN
  SQLITE_OMIT_PRAGMA
  SQLITE_OMIT_PROGRESS_CALLBACK
  SQLITE_OMIT_QUICKBALANCE
  SQLITE_OMIT_REINDEX
  SQLITE_OMIT_SCHEMA_PRAGMAS
  SQLITE_OMIT_SCHEMA_VERSION_PRAGMAS
  SQLITE_OMIT_SHARED_CACHE
  SQLITE_OMIT_SHUTDOWN_DIRECTORIES
  SQLITE_OMIT_SUBQUERY
  SQLITE_OMIT_TCL_VARIABLE
  SQLITE_OMIT_TEMPDB
  SQLITE_OMIT_TEST_CONTROL
  SQLITE_OMIT_TRACE
  SQLITE_OMIT_TRIGGER
  SQLITE_OMIT_TRUNCATE_OPTIMIZATION
  SQLITE_OMIT_UTF16
  SQLITE_OMIT_VACUUM
  SQLITE_OMIT_VIEW
  SQLITE_OMIT_VIRTUALTABLE
  SQLITE_OMIT_WAL
  SQLITE_OMIT_WSD
  SQLITE_OMIT_XFER_OPT
  SQLITE_PCACHE_SEPARATE_HEADER
  SQLITE_PCRE2_JIT
  SQLITE_PERFORMANCE_TRACE
  SQLITE_POWERSAFE_OVERWRITE
  SQLITE_PREFER_PROXY_LOCKING
  SQLITE_PROXY_DEBUG
  SQLITE_REVERSE_UNORDERED_SELECTS
  SQLITE_RTREE_INT_ONLY
  SQLITE_SECURE_DELETE
  SQLITE_SMALL_STACK
  SQLITE_SOUNDEX
  SQLITE_SUBSTR_COMPATIBILITY
  SQLITE_SYSTEM_MALLOC
  SQLITE_TCL
  SQLITE_TEST
  SQLITE_UNLINK_AFTER_CLOSE
  SQLITE_UNTESTABLE
  SQLITE_USE_ALLOCA
  SQLITE_USE_FCNTL_TRACE
  SQLITE_USER_AUTHENTICATION
  SQLITE_USE_URI
  SQLITE_VDBE_COVERAGE
  SQLITE_WIN32_MALLOC
  SQLITE_ZERO_MALLOC
}

# All compile time options for which the assigned value is other than boolean.
#
set value_options {
  SQLITE_BITMASK_TYPE
  SQLITE_DEFAULT_CACHE_SIZE
  SQLITE_DEFAULT_FILE_FORMAT
  SQLITE_DEFAULT_FILE_PERMISSIONS
  SQLITE_DEFAULT_JOURNAL_SIZE_LIMIT
  SQLITE_DEFAULT_LOCKING_MODE
  SQLITE_DEFAULT_LOOKASIDE
  SQLITE_DEFAULT_MMAP_SIZE
  SQLITE_DEFAULT_PAGE_SIZE
  SQLITE_DEFAULT_PCACHE_INITSZ
  SQLITE_DEFAULT_PROXYDIR_PERMISSIONS
  SQLITE_DEFAULT_ROWEST
  SQLITE_DEFAULT_SECTOR_SIZE
  SQLITE_DEFAULT_SYNCHRONOUS
  SQLITE_DEFAULT_WAL_AUTOCHECKPOINT
  SQLITE_DEFAULT_WAL_SYNCHRONOUS
  SQLITE_DEFAULT_WORKER_THREADS
  SQLITE_ENABLE_8_3_NAMES
  SQLITE_ENABLE_LOCKING_STYLE
  SQLITE_EXTRA_INIT
  SQLITE_EXTRA_SHUTDOWN
  SQLITE_FTS3_MAX_EXPR_DEPTH
  SQLITE_INTEGRITY_CHECK_ERROR_MAX
  SQLITE_MALLOC_SOFT_LIMIT
  SQLITE_MAX_ATTACHED
  SQLITE_MAX_COLUMN
  SQLITE_MAX_COMPOUND_SELECT
  SQLITE_MAX_DEFAULT_PAGE_SIZE
  SQLITE_MAX_EXPR_DEPTH
  SQLITE_MAX_FUNCTION_ARG
  SQLITE_MAX_LENGTH
  SQLITE_MAX_LIKE_PATTERN_LENGTH
  SQLITE_MAX_MEMORY
  SQLITE_MAX_MMAP_SIZE
  SQLITE_MAX_MMAP_SIZE_
  SQLITE_MAX_PAGE_COUNT
  SQLITE_MAX_PAGE_SIZE
  SQLITE_MAX_SCHEMA_RETRY
  SQLITE_MAX_SQL_LENGTH
  SQLITE_MAX_TRIGGER_DEPTH
  SQLITE_MAX_VARIABLE_NUMBER
  SQLITE_MAX_VDBE_OP
  SQLITE_MAX_WORKER_THREADS
  SQLITE_SORTER_PMASZ
  SQLITE_STAT4_SAMPLES
  SQLITE_STMTJRNL_SPILL
  SQLITE_TEMP_STORE
}

# Options that require custom code.
#
set options(ENABLE_STAT3) {
#if defined(SQLITE_ENABLE_STAT4)
  "ENABLE_STAT4",
#elif defined(SQLITE_ENABLE_STAT3)
  "ENABLE_STAT3",
#endif
}
set options(COMPILER) {
#if defined(__clang__) && defined(__clang_major__)
  "COMPILER=clang-" CTIMEOPT_VAL(__clang_major__) "."
                    CTIMEOPT_VAL(__clang_minor__) "."
                    CTIMEOPT_VAL(__clang_patchlevel__),
#elif defined(_MSC_VER)
  "COMPILER=msvc-" CTIMEOPT_VAL(_MSC_VER),
#elif defined(__GNUC__) && defined(__VERSION__)
  "COMPILER=gcc-" __VERSION__,
#endif
}
set options(HAVE_ISNAN) {
#if HAVE_ISNAN || SQLITE_HAVE_ISNAN
  "HAVE_ISNAN",
#endif
}
set options(THREADSAFE) {
#if defined(SQLITE_THREADSAFE)
  "THREADSAFE=" CTIMEOPT_VAL(SQLITE_THREADSAFE),
#elif defined(THREADSAFE)
  "THREADSAFE=" CTIMEOPT_VAL(THREADSAFE),
#else
  "THREADSAFE=1"
#endif
}

proc trim_name {in} {
  set ret $in
  if {[string range $in 0 6]=="SQLITE_"} {
    set ret [string range $in 7 end]
  }
  return $ret
}

foreach b $boolean_options {
  set name [trim_name $b]
  set options($name) [subst {
#if $b
  "$name",
#endif
}]
}
  
foreach v $value_options {
  set name [trim_name $v]
  set options($name) [subst {
#ifdef $v
  "$name=" CTIMEOPT_VAL($v),
#endif
}]
}

foreach o [lsort [array names options]] {
  puts [string trim $options($o)]
}


