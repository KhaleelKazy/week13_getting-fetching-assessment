Prompt1

I will organize my Flutter app by connecting album API using HTTP. Create an Album class, use List.view. allow user to tap album,allow HTTP delete request to delete album, remove the deleted albulms from the display list. Show loading circle when waiting for API, show album when request succeeds.Last,show an error message if something goes wrong.

Most confusing part is understnding how to select an alnulm and display the details

I accomplished creating a flutter app that connects to an online api to get
a list of albums. The difference between requesing a list of item versus a single item is a list of items returns mutltiple objects use List<Album> abd ListView.builder to display each item and a single item returns one album object and display information