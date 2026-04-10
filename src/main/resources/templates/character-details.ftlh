<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details: ${character.name}</title>
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

    <!-- Character Detail Page -->
    <div class="container-md mt-5">
        <div class="row gx-2">
            <div class="col-md bg-secondary">
                <img src="/profile-pictures/${character.profilePicturePath}" class="rounded mb-2">
                <h4><strong>${character.name}</strong></h4>
                <p class="card-text">Occupation: ${character.occupation}</p>
                <p class="card-text">Address: ${character.address}</p>
                <p class="card-text">Bio: ${character.description}</p>
            </div>
            <div class="col">
                <h4>Character Description</h4>
                <p>${character.description}</p>
                <form id="edit-character" action="/characters/update/${character.characterId?c}" method="post" enctype="multipart/form-data">
                    <input type="text" id="id" name="id" value="${character.characterId?c}" readonly />
                    <input type="text" id="name" name="name" value="${character.name}" placeholder="Name" />
                    <input type="text" id="occupation" name="occupation" value="${character.occupation}" placeholder="Job" />
                    <input type="text" id="address" name="address" value="${character.address}" placeholder="Address" />
                    <input type="text" id="description" name="description" value="${character.description}" placeholder="Description.." />
                    <label for="picture" class="form-label"> Picture:</label>
                    <input type="file" id="picture" name="picture" />
                    <button type="submit" class="btn btn-primary">Save</button>
                    <div class="alert alert-danger" role="alert">
                        DELETE CHARACTER
                        <a style="float: right;" href="/characters/delete/${character.characterId?c}" class="btn btn-danger">Delete</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>