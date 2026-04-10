<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stardew Phonebook</title>
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

    <div class="contianer py-5 text-center">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1>Stardew Phonebok</h1>
                <p class="lead text-body-secondary">
                    Welcome to <em>Stardew Phonebook</em> your one stop shop your citizen information needs!
                </p>
            </div>
        </div>
    </div>

    <div class="container text-center" id="character-gallery">
        <div class="row row-cols-1 p-2">
            <form class="d-flex justify-content-center" role="search">
                <input class="form-control" type="search" placeholder="Citizen" aria-label="search"/>
                <button class="btn btn-outline-light" type="submit"><img src="Images/search.svg"></button>
            </form>
        </div>
        <div class="row row-cols-3 g-2">
            <#list characterList as character>
                <a href="/characters/${character.characterId?c}">
                    <div class="col">
                        <div class="card shadow-sm" style="background-color: #393E46;">
                            <img src="/profile-pictures/${character.profilePicturePath}" class="img-thumbnail" alt="Clint portait">
                            <div class="card-body">
                                <h4 style="color: #DFD0B8;">${character.name}</h4>
                                <p style="color: #DFD0B8;">${character.occupation}</p>
                            </div>
                        </div>
                    </div>
                </a>
            </#list>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>