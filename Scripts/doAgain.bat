@echo off 
echo "Create a script to echo hello"
echo "echo hello" >> hello.bat
schtasks /create /tn SayHello /tr hello.bat /sc hourly /st 08:00:00 /et 20:00:00 /sd 11/05/2019

rem schtasks /create /tn (whatever Task Name you want to call it) /tr (location full of the file) /sc hourly /st 08:00:00 /et 20:00:00 /sd (start date that you want mm/dd/yyyy)


schtasks /Create 
[/S system [/U username [/P [password]]]]
[/RU username [/RP [password]] /SC schedule [/MO modifier] [/D day]
[/M months] [/I idletime] /TN taskname /TR taskrun [/ST starttime]
[/RI interval] [ {/ET endtime | /DU duration} [/K] 
[/XML xmlfile] [/V1]] [/SD startdate] [/ED enddate] [/IT] [/Z] [/F]

Parameters

/S system

    A value that specifies the remote computer to connect to. If omitted, the system parameter defaults to the local computer.

/U username

    A value that specifies the user context under which Schtasks.exe should run.

/P [password]

    A value that specifies the password for a given user context. If omitted, Schtasks.exe prompts the user for input.

/RU username

    A value that specifies the user context under which the task runs. For the system account, valid values are "", "NT AUTHORITY\SYSTEM", or "SYSTEM". For Task Scheduler 2.0 tasks, "NT AUTHORITY\LOCALSERVICE", and "NT AUTHORITY\NETWORKSERVICE" are also valid values.

/RP [password]

    A value that specifies the password for the user specified with the /RU parameter. To prompt for the password, the value must be either "*" or no value. This password is ignored for the system account. This parameter must be combined with either /RU or the /XML switch.

/SC schedule

    A value that specifies the schedule frequency. Valid values are: MINUTE, HOURLY, DAILY, WEEKLY, MONTHLY, ONCE, ONLOGON, ONIDLE, and ONEVENT.

/MO modifier

    A value that refines the schedule type to allow for finer control over the schedule recurrence. Valid values are:

        MINUTE: 1 - 1439 minutes.
        HOURLY: 1 - 23 hours.
        DAILY: 1 - 365 days.
        WEEKLY: weeks 1 - 52.
        ONCE: No modifiers.
        ONSTART: No modifiers.
        ONLOGON: No modifiers.
        ONIDLE: No modifiers.
        MONTHLY: 1 - 12, or FIRST, SECOND, THIRD, FOURTH, LAST, and LASTDAY.
        ONEVENT: XPath event query string.

/D days

    A value that specifies the day of the week to run the task. Valid values are: MON, TUE, WED, THU, FRI, SAT, SUN and for MONTHLY schedules 1 - 31 (days of the month). The wildcard character (*) specifies all days.

/M months

    A value that specifies months of the year. Defaults to the first day of the month. Valid values are: JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, and DEC. The wildcard character (*) specifies all months.

/I idletime

    A value that specifies the amount of idle time to wait before running a scheduled ONIDLE task. The valid range is 1 - 999 minutes.

/TN taskname

    A value that specifies a name which uniquely identifies the scheduled task.

/TR taskrun

    A value that specifies the path and file name of the task to be run at the scheduled time. For example: C:\Windows\System32\calc.exe.

/ST starttime

    A value that specifies the start time to run the task. The time format is HH:mm (24-hour time). For example, 14:30 specifies 2:30PM. The default is the current time is /ST is not specified. This option is required wit the /SC ONCE argument.

/RI interval

    A value that specifies the repetition interval in minutes. This is not applicable for the following schedule types: MINUTE, HOURLY, ONSTART, ONLOGON, ONIDLE, and ONEVENT. The valid range is 1 - 599940 minutes. If either the /ET or /DU parameters are specified, the default is 10 minutes.

    Windows XP and Windows Server 2003: This option is not available.

/ET endtime

    A value that specifies the end time to run the task. The time format is HH:mm (24-hour time). For example, 14:50 specifies 2:50PM. This is not applicable for the following schedule types: ONSTART, ONLOGON, ONIDLE, and ONEVENT.

    Windows XP and Windows Server 2003: This option is not available.

/DU duration

    A value that specifies the duration to run the task. The time format is HH:mm (24-hour time). For example, 14:50 specifies 2:50PM. This is not applicable with /ET and for the following schedule types: ONSTART, ONLOGON, ONIDLE, and ONEVENT. For /V1 tasks (Task Scheduler 1.0 tasks), if /RI is specified, then the duration default is one hour.

    Windows XP: This option is not available.

/K

    A value that terminates the task at the end time or duration time. This is not applicable for the following schedule types: ONSTART, ONLOGON, ONIDLE, and ONEVENT. Either /ET or /DU must be specified.

    Windows XP and Windows Server 2003: This option is not available.

/SD startdate

    A value that specifies the first date on which to run the task. The format is mm/dd/yyyy. This value defaults to the current date. This is not applicable for the following schedule types: ONCE, ONSTART, ONLOGON, ONIDLE, and ONEVENT.

/ED enddate

    A value that specifies the last date that the task will run. The format is mm/dd/yyyy. This is not applicable for the following schedule types: ONCE, ONSTART, ONLOGON, ONIDLE, and ONEVENT.

/EC ChannelName

    A value that specifies the event channel for ONEVENT triggers.

    Windows XP and Windows Server 2003: This option is not available.

/IT

    A value that enables the task to run interactively only if the /RU user is currently logged on at the time the task runs. The task runs only if the user is logged on.

    Windows XP and Windows Server 2003: This option is not available.

/NP

    A value that indicates that no password is stored. The task does not run interactively as the given user. Only local resources are available.

    Windows XP and Windows Server 2003: This option is not available.

/Z

    A value that marks the task to be deleted after its final run.

    Windows XP and Windows Server 2003: This option is not available.

/XML xmlfile

    A value that creates a task from an XML file. This parameter can be combined with /RU and /RP switches, or with the /RP switch alone when the task XML already contains the principal.

    Windows XP and Windows Server 2003: This option is not available.

/V1

    A value that creates a task visible to Windows 2000, Windows Server 2003, and Windows XP platforms.

    Windows XP and Windows Server 2003: This option is not available.

/F

    A value that forcefully creates the task and suppresses warnings if the specified task already exists.

    Windows XP and Windows Server 2003: This option is not available.

/RL level

    A value that sets the run level for the task. Valid values are LIMITED and HIGHEST. The default is LIMITED.

    Windows XP and Windows Server 2003: This option is not available.

/DELAY delaytime

    A value that specifies the wait time to delay the task after the trigger is fired. The time format is mmmm:ss. This option is only valid for schedule types ONSTART, ONLOGON, and ONEVENT.

    Windows XP and Windows Server 2003: This option is not available.

/?

    A value that displays the help message for Schtasks.exe.

Remarks





When creating a task on a remote computer running on the Windows XP, Windows Server 2003, or Windows 2000 operating system, use the /V1 switch.

You cannot create a non-interactive remote Task Scheduler 1.0 task (create a task by not using the /IT switch and using the /V1 switch) if the remote computer has the File and Printer Sharing firewall exception enabled and the Remote Scheduled Tasks Management firewall exception disabled.
Deleting a Task

The following syntax is used to delete one or more scheduled tasks.
syntax

schtasks /Delete 
[/S system [/U username [/P [password]]]]
[/TN taskname] [/F]

Parameters

/S system

    A value that specifies the remote computer to connect to. If omitted, the system parameter defaults to the local computer.

/U username

    A value that specifies the user context under which Schtasks.exe should run.

/P [password]

    A value that specifies the password for the given user context. If omitted, Schtasks.exe prompts the user for input.

/TN taskname

    A value that specifies the name of the scheduled task to delete. The wildcard character (*) can be used to delete all tasks.

/F

    A value that forcefully deletes the task and suppresses warnings if the specified task is running.

/?

    A value that displays Help for Schtasks.exe.

	
	
	
	
	
	
Running a Task

The following syntax is used to immediately run a scheduled task.
syntax

schtasks /Run 
[/S system [/U username [/P [password]]]]
/TN taskname

Parameters

/S system

    A value that specifies the remote computer to connect to. If omitted, the system parameter defaults to the local computer.

/U username

    A value that specifies the user context under which Schtasks.exe should run.

/P [password]

    A value that specifies the password for the given user context. If omitted, Schtasks.exe prompts the user for input.

/TN taskname

    A value that specifies the name of the scheduled task to run.

/?

    A value that displays Help for Schtasks.exe.


	
	
	
	
	
	Ending a Running Task

The following syntax is used to stop a running scheduled task.


schtasks /End 
[/S system [/U username [/P [password]]]]
/TN taskname

Parameters

/S system

    A value that specifies the remote computer to connect to. If omitted, the system parameter defaults to the local computer.

/U username

    A value that specifies the user context under which Schtasks.exe should run.

/P [password]

    A value that specifies the password for the given user context. If omitted, Schtasks.exe prompts the user for input.

/TN taskname

    A value that specifies the name of the scheduled task to stop.

/?

    A value that displays Help for Schtasks.exe.


	
	
	
	
	Querying for Task Information

The following syntax is used to display the scheduled tasks from the local or remote computer.
syntax

schtasks /Query 
[/S system [/U username [/P [password]]]]
[/FO format | /XML] [/NH] [/V] [/TN taskname] [/?]

Parameters

/S system

    A value that specifies the remote computer to connect to. If omitted, the system parameter defaults to the local computer.

/U username

    A value that specifies the user context under which Schtasks.exe should run.

/P [password]

    A value that specifies the password for the given user context. If omitted, Schtasks.exe prompts the user for input.

/FO format

    A value that specifies the output format. The valid values are TABLE, LIST, and CSV.

/NH

    A value that specifies that the column header should not be displayed in the output. This is valid only for TABLE and CSV formats.

/V

    A value that displays verbose task output.

    Note

    If a task was scheduled to run only one time, then the displayed schedule information is "Scheduling data is not available in this format."

/TN taskname

    A value that specifies the task name for which to retrieve the information. If no task name is specified, then information for all the tasks will be displayed.

    Windows XP and Windows Server 2003: This option is not available.

/XML

    A value that is used to display the task definitions in XML format.

    Windows XP and Windows Server 2003: This option is not available.

/?

    A value that is used to display the Help for Schtasks.exe.


	
	
	
	
	
	
	Changing a Task

The following syntax is used to change how the program runs, or change the user account and password used by a scheduled task.
syntax

schtasks /Change 
[/S system [/U username [/P [password]]]] /TN taskname
{ [/RU runasuser] [/RP runaspassword] [/TR taskrun] [/ST starttime] 
[/RI interval] [ {/ET endtime | /DU duration} [/K] ]
[/SD startdate] [/ED enddate] [/ENABLE | /DISABLE] [/IT] [/Z] }

Parameters

/S system

    A value that specifies the remote computer to connect to. If omitted, the system parameter defaults to the local computer.

/U username

    A value that specifies the user context under which Schtasks.exe should run.

/P [password]

    A value that specifies the password for the given user context. If omitted, Schtasks.exe prompts the user for input.

/TN taskname

    A value that specifies which scheduled task to change.

/RU runasuser

    A value that changes the user name (user context) under which the scheduled task will run. For the system account, valid values are "", "NT AUTHORITY\SYSTEM", or "SYSTEM". For Task Scheduler 2.0 tasks, "NT AUTHORITY\LOCALSERVICE" and "NT AUTHORITY\NETWORKSERVICE" are also valid values.

/RP runaspassword

    A value that specifies a new password for the existing user context or the password for a new user account. This password is ignored for the system account.

/TR taskrun

    A value that specifies a new program that the task will run.

/ST starttime

    A value that specifies the start time to run the task. The time format is HH:mm (24-hour time). For example, 14:30 specifies 2:30PM.

    Windows XP and Windows Server 2003: This option is not available.

/RI interval

    A value that specifies the repetition interval, in minutes. The valid range is 1 - 599940 minutes.

    Windows XP and Windows Server 2003: This option is not available.

/ET endtime

    A value that specifies the end time for the task. The time format is HH:mm (24-hour time). For example, 14:50 specifies 2:50PM.

    Windows XP and Windows Server 2003: This option is not available.

/DU duration

    A value that specifies the duration to run the task. The time format is HH:mm (24-hour time). For example, 14:50 specifies 2:50PM. This is not applicable with the /ET parameter.

    Windows XP and Windows Server 2003: This option is not available.

/K

    A value that terminates the task at the end time or duration time.

    Windows XP and Windows Server 2003: This option is not available.

/SD startdate

    A value that specifies the first date on which to run the task. The format is mm/dd/yyyy.

    Windows XP and Windows Server 2003: This option is not available.

/ED enddate

    A value that specifies the last date that the task will run. The format is mm/dd/yyyy.

    Windows XP and Windows Server 2003: This option is not available.

/IT

    A value that enables the task to run interactively only if the /RU user is currently logged on at the time the task runs. The task runs only if the user is logged on.

    Windows XP and Windows Server 2003: This option is not available.

/RL level

    A value that sets the run level for the task. Valid values are LIMITED and HIGHEST.

    Windows XP and Windows Server 2003: This option is not available.

/ENABLE

    A value that enables the scheduled task. An enabled task can run, and a disabled task cannot run.

    Windows XP and Windows Server 2003: This option is not available.

/DISABLE

    A value that disables the scheduled task from running.

    Note

    If a remote Task Scheduler 1.0 task is disabled by Schtasks.exe and the remote computer has the File and Printer Sharing firewall exception enabled and the Remote Scheduled Tasks Management firewall exception disabled, then the task will not be disabled when read from a Task Scheduler 2.0 API.

    Windows XP and Windows Server 2003: This option is not available.

/Z

    A value that marks the task to be deleted after its final run.

    Windows XP and Windows Server 2003: This option is not available.

/DELAY delaytime

    A value that specifies the wait time to delay the running of the task after the trigger is fired. The time format is mmmm:ss. This option is only valid for tasks with the schedule types ONSTART, ONLOGON, and ONEVENT.

    Windows XP and Windows Server 2003: This option is not available.

/?

    A value that displays the Help message for Schtasks.exe.
