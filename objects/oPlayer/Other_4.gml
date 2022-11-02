/// @description Auto Save

//Overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);


//Consider doing - What you should do instead is make a different file, let's call it "temp.sav". You write your save info in temp.sav and then, once you're all done, you delete save.sav, and rename temp.sav to "save.sav".