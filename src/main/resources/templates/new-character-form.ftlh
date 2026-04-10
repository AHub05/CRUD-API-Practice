<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add A Character - Stardew Phonebook</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <!-- Navbar -->
    <div class="container" id="navbar">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="/characters"><b>Phonebook</b></a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/characters">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/characters/about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/characters/add">Add a Character</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    
    <div class="card">
        <h5 class="card-header">Create a Character</h5>
        <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>

            <form id="new-character" action="/characters/" method="post" enctype="multipart/form-data">
                <input type="text" class="form-control" id="name" name="name" placeholder="Johnny Appleseed" />
                <input type="text" class="form-control" id="address" name="address" placeholder="123 House St." />
                <input type="text" class="form-control" id="occupation" name="occupation" placeholder="Farmer" />
                <textarea type="text" class="form-control" id="description" name="description" placeholder="Describe the character..."></textarea>
                <label for="picture" class="form-label"> Picture:</label>
                <input type="file" id="picture" name="picture" />
                <button type="submit" class="btn btn-outline-success">Create</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>