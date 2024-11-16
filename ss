DATE(1)                                                                    User Commands                                                                    DATE(1)

NNAAMMEE
       date - print or set the system date and time

SSYYNNOOPPSSIISS
       ddaattee [_O_P_T_I_O_N]... [_+_F_O_R_M_A_T]
       ddaattee [_-_u_|_-_-_u_t_c_|_-_-_u_n_i_v_e_r_s_a_l] [_M_M_D_D_h_h_m_m[[_C_C]_Y_Y][_._s_s]]

DDEESSCCRRIIPPTTIIOONN
       Display the current time in the given FORMAT, or set the system date.

       Mandatory arguments to long options are mandatory for short options too.

       --dd, ----ddaattee=_S_T_R_I_N_G
              display time described by STRING, not 'now'

       ----ddeebbuugg
              annotate the parsed date, and warn about questionable usage to stderr

       --ff, ----ffiillee=_D_A_T_E_F_I_L_E
              like ----ddaattee; once for each line of DATEFILE

       --II[[FFMMTT]], ----iissoo--88660011[=_F_M_T]
              output  date/time  in ISO 8601 format.  FMT='date' for date only (the default), 'hours', 'minutes', 'seconds', or 'ns' for date and time to the indi‐
              cated precision.  Example: 2006-08-14T02:34:56-06:00

       --RR, ----rrffcc--eemmaaiill
              output date and time in RFC 5322 format.  Example: Mon, 14 Aug 2006 02:34:56 --00660000

       ----rrffcc--33333399=_F_M_T
              output date/time in RFC 3339 format.   FMT='date',  'seconds',  or  'ns'  for  date  and  time  to  the  indicated  precision.   Example:  2006-08-14
              02:34:56-06:00

       --rr, ----rreeffeerreennccee=_F_I_L_E
              display the last modification time of FILE

       --ss, ----sseett=_S_T_R_I_N_G
              set time described by STRING

       --uu, ----uuttcc, ----uunniivveerrssaall
              print or set Coordinated Universal Time (UTC)

       ----hheellpp display this help and exit

       ----vveerrssiioonn
              output version information and exit

       FORMAT controls the output.  Interpreted sequences are:

       %%     a literal %

       %a     locale's abbreviated weekday name (e.g., Sun)

       %A     locale's full weekday name (e.g., Sunday)

       %b     locale's abbreviated month name (e.g., Jan)

       %B     locale's full month name (e.g., January)

       %c     locale's date and time (e.g., Thu Mar  3 23:05:25 2005)

       %C     century; like %Y, except omit last two digits (e.g., 20)

       %d     day of month (e.g., 01)

       %D     date; same as %m/%d/%y

       %e     day of month, space padded; same as %_d

       %F     full date; like %+4Y-%m-%d

       %g     last two digits of year of ISO week number (see %G)

       %G     year of ISO week number (see %V); normally useful only with %V

       %h     same as %b

       %H     hour (00..23)

       %I     hour (01..12)

       %j     day of year (001..366)

       %k     hour, space padded ( 0..23); same as %_H

       %l     hour, space padded ( 1..12); same as %_I

       %m     month (01..12)

       %M     minute (00..59)

       %n     a newline

       %N     nanoseconds (000000000..999999999)

       %p     locale's equivalent of either AM or PM; blank if not known

       %P     like %p, but lower case

       %q     quarter of year (1..4)

       %r     locale's 12-hour clock time (e.g., 11:11:04 PM)

       %R     24-hour hour and minute; same as %H:%M

       %s     seconds since 1970-01-01 00:00:00 UTC

       %S     second (00..60)

       %t     a tab

       %T     time; same as %H:%M:%S

       %u     day of week (1..7); 1 is Monday

       %U     week number of year, with Sunday as first day of week (00..53)

       %V     ISO week number, with Monday as first day of week (01..53)

       %w     day of week (0..6); 0 is Sunday

       %W     week number of year, with Monday as first day of week (00..53)

       %x     locale's date representation (e.g., 12/31/99)

       %X     locale's time representation (e.g., 23:13:48)

       %y     last two digits of year (00..99)

       %Y     year

       %z     +hhmm numeric time zone (e.g., --00440000)

       %:z    +hh:mm numeric time zone (e.g., --0044:00)

       %::z   +hh:mm:ss numeric time zone (e.g., --0044:00:00)

       %:::z  numeric time zone with : to necessary precision (e.g., --0044, +05:30)

       %Z     alphabetic time zone abbreviation (e.g., EDT)

       By default, date pads numeric fields with zeroes.  The following optional flags may follow '%':

       -      (hyphen) do not pad the field

       _      (underscore) pad with spaces

       0      (zero) pad with zeros

       +      pad with zeros, and put '+' before future years with >4 digits

       ^      use upper case if possible

       #      use opposite case if possible

       After  any  flags comes an optional field width, as a decimal number; then an optional modifier, which is either E to use the locale's alternate representa‐
       tions if available, or O to use the locale's alternate numeric symbols if available.

EEXXAAMMPPLLEESS
       Convert seconds since the epoch (1970-01-01 UTC) to a date

              $ date --date='@2147483647'

       Show the time on the west coast of the US (use tzselect(1) to find TZ)

              $ TZ='America/Los_Angeles' date

       Show the local time for 9AM next Friday on the west coast of the US

              $ date --date='TZ="America/Los_Angeles" 09:00 next Fri'

DDAATTEE SSTTRRIINNGG
       The --date=STRING is a mostly free format human readable date string such as "Sun, 29 Feb 2004 16:21:42 -0800" or "2004-02-29 16:21:42" or even "next Thurs‐
       day".   A  date string may contain items indicating calendar date, time of day, time zone, day of week, relative time, relative date, and numbers.  An empty
       string indicates the beginning of the day.  The date string format is more complex than is easily documented here but is fully described in the  info  docu‐
       mentation.

AAUUTTHHOORR
       Written by David MacKenzie.

RREEPPOORRTTIINNGG BBUUGGSS
       GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
       Report any translation bugs to <https://translationproject.org/team/>

CCOOPPYYRRIIGGHHTT
       Copyright © 2020 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

SSEEEE AALLSSOO
       Full documentation <https://www.gnu.org/software/coreutils/date>
       or available locally via: info '(coreutils) date invocation'

GNU coreutils 8.32                                                         February 2024                                                                    DATE(1)
