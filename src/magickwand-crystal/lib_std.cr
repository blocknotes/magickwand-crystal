@[Link("c")]
lib LibStd
  type FilePtr = Void*

  # fun fopen( LibC::Char*, LibC::Char* ): File
  # fun fputs( LibC::Char*, File )
  # fun fclose( File )

  # struct _IO_FILE {
  #   int _flags;		/* High-order word is _IO_MAGIC; rest is flags. */
  # #define _IO_file_flags _flags
  #
  #   /* The following pointers correspond to the C++ streambuf protocol. */
  #   /* Note:  Tk uses the _IO_read_ptr and _IO_read_end fields directly. */
  #   char* _IO_read_ptr;	/* Current read pointer */
  #   char* _IO_read_end;	/* End of get area. */
  #   char* _IO_read_base;	/* Start of putback+get area. */
  #   char* _IO_write_base;	/* Start of put area. */
  #   char* _IO_write_ptr;	/* Current put pointer. */
  #   char* _IO_write_end;	/* End of put area. */
  #   char* _IO_buf_base;	/* Start of reserve area. */
  #   char* _IO_buf_end;	/* End of reserve area. */
  #   /* The following fields are used to support backing up and undo. */
  #   char *_IO_save_base; /* Pointer to start of non-current get area. */
  #   char *_IO_backup_base;  /* Pointer to first valid character of backup area */
  #   char *_IO_save_end; /* Pointer to end of non-current get area. */
  #
  #   struct _IO_marker *_markers;
  #
  #   struct _IO_FILE *_chain;
  #
  #   int _fileno;
  # #if 0
  #   int _blksize;
  # #else
  #   int _flags2;
  # #endif
  #   _IO_off_t _old_offset; /* This used to be _offset but it's too small.  */
  #
  # #define __HAVE_COLUMN /* temporary */
  #   /* 1+column number of pbase(); 0 is unknown. */
  #   unsigned short _cur_column;
  #   signed char _vtable_offset;
  #   char _shortbuf[1];
  #
  #   /*  char* _save_gptr;  char* _save_egptr; */
  #
  #   _IO_lock_t *_lock;
  # #ifdef _IO_USE_OLD_IO_FILE
  # };
end
