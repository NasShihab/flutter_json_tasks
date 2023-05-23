# flutter_json_tasks

## The Task "Flutter JSON Task"

Input-1

[{"0":{"id":1,"title":"Gingerbread"},"1":{"id":2,"title":"Jellybean"},"3":{"id":3,"title":"KitKat"}},[{"id":4,"title":"Lollipop"},{"id":5,"title":"Pie"},{"id":6,"title":"Oreo"},{"id":7,"title":"Nougat"}]]

Output 1
<img src="https://www.dropbox.com/s/ukvbbowdzpv3w6b/output01.png?raw=1" width="450" height="200">


Input-2

[{"0":{"id":1,"title":"Gingerbread"},"1":{"id":2,"title":"Jellybean"},"3":{"id":3,"title":"KitKat"}},{"0":{"id":8,"title":"Froyo"},"2":{"id":9,"title":"Éclair"},"3":{"id":10,"title":"Donut"}},[{"id":4,"title":"Lollipop"},{"id":5,"title":"Pie"},{"id":6,"title":"Oreo"},{"id":7,"title":"Nougat"}]]

Output 2
<img src="https://www.dropbox.com/s/6zw35ohwotphs0w/output02.png?raw=1" width="450" height="200">


Keep these inputs as static in the separate variables and keep two buttons to display output. You have to create only one function to parse the JSON. That means whatever the same structure of input you will pass on to this function it will be able to parse.

Create another function to search using id. You will pass id inside the function and it will return you the title and display it.

Rules:
You can design it yourself as long as it looks good.
Don’t use any state management
Don’t use JSON POJO class. You have to parse json manually.

class AndroidVerison {
AndroidVerison({
this.id,
this.title,
});

    int? id;
    String? title;
}

Use this model class to make the list. Don’t modify this model class. 

## Here is my work
Page 1
<img src="https://www.dropbox.com/s/iesjkzmf9fy0mbb/page1.jpg?raw=1" width="450" height="200">
Output 1
<img src="https://www.dropbox.com/s/t3czednp59txkuc/myOutput01.jpg?raw=1" width="450" height="200">
Output 2
<img src="https://www.dropbox.com/s/aiw10nev3okjr95/myOutput02.jpg?raw=1" width="450" height="200">