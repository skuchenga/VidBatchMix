# VidBatchMix
Mix music videos using batch files

Video Batch Mix
This is an application to mix music video clips using batch files.
The application uses three batch files, and a text file.
Ok, here is the flow. To launch the application, select the three batch files, (Vid.bat, Vid2.bat and vidTimer.bat) and hit the enter key or right click and run the selection. When they start:
1.	 Vid.bat starts vlc.exe, and plays the video file in the path specified, starting at the time specified in the –start-time parameter.
2.	Vid2.bat starts a timeout of /T seconds, which is the duration the current video (launched by Vid.bat) will play.
3.	vidTimer.bat waits for a few seconds (4 seconds in the github sample). It then checks task list, and fetches the process id (PID) of the first vlc.exe image name, and writes it to VLC.TXT, replacing, any text in that text file. It then begins timing out, for x seconds, 2 seconds, behind vid2.bat in the github sample. So Vid2.bat timeout finishes 2 seconds before vidTimer.bat timeout. When vid2.bat timeout finishes, the batch file moves to the next line. The next line, does what vid.bat did in step 1 i.e., Starts an instance of vlc, and plays the specified video file, starting at the specified time. When vidTimer.bat timeout finishes, 2 seconds later, it terminates the PID that is in VLC.TXT, which is the instance of the vlc that was started by Vid.bat. Then, when the batch file is closed, the batch file that launched it, automatically executes the next line. Its next line will be a timeout of the video that has been launched by the other vid.bat file. At the same time, vidTime.bat moves to the next line of execution after terminating vlc. It waits for a second (4 seconds in the github sample) and gets the current vlc instance PID and writes it to VLC.TXT. 

The execution continues like that.  You can set goto labels that you can jump to at any point in the execution. For example, if you want to jump to REGGAE, SOUL, HIPHOP etc. When the mix ends, it goes to :BEGIN i.e. it restarts.
