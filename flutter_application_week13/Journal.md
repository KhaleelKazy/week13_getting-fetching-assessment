Prompt1

I will organize my Flutter app by connecting album API using HTTP. Create an Album class, use List.view. allow user to tap album,allow HTTP delete request to delete album, remove the deleted albulms from the display list. Show loading circle when waiting for API, show album when request succeeds.Last,show an error message if something goes wrong.

Most confusing part is understnding how to select an alnulm and display the details

I accomplished creating a flutter app that connects to an online api to get
a list of albums. The difference between requesing a list of item versus a single item is a list of items returns mutltiple objects use List<Album> abd ListView.builder to display each item and a single item returns one album object and display information

Prompt2
I accomplished adding the abilty for the album and display title and ID. Using a state variable allows me to change what appears on thee same screen without openeing a new page

Prompt 3
In this phase, I learned how to delete an album using an HTTP DELETE request in Flutter. I used the ID of the selected album to send a request to the server and delete the specific album.

After receiving the response, I checked the status code to make sure the request was successful. If the status code was 200, I used setState() to remove the album from the local list and set selectedAlbum to null, which returned the app to the album list view.

Prompt4
While testing my program, I checked that the albums loaded correctly, that selecting an album displayed its details, and that the Delete button sent a DELETE request to the API.

One unexpected behavior I noticed was that JSONPlaceholder simulates deleting an album but does not permanently remove it from the server. The album could appear again if I refreshed the list.