# Steps to Compile and Use The Software:

1. Unzip the "Submit AA Grp 31". Make sure not to delete/change any of the internal folders.
1. Go to Attendance Application > Project > Gui App and open the "Gui App.sln" using Visual Studio 2017 or above.
1. Build the whole project using "x64 Release" Configuration. Ensure that 
1. Now go to Attendance Application > Package. Click on "resetDB.bat", ensure that AppDB.db is created. Then click on "execute.bat", and ensure 3 files : "Gui App.exe", "Server.exe", and "imgui.ini" are created.
1. Ensure above steps are executed properly.
1. Click on "Server.exe", to start the server.
1. Click on "Gui App.exe", to open the clients.
1. Ensure only one server is instantiated. There may be multiple clients. Also ensure that the server is running when any client is intantiated.
1. Using the app may change the example DB provided. To regenerate the original DB, just click on "resetDB.bat" again.
