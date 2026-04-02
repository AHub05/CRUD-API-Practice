<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stardew Phonebook</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <div class="container" id="navbar">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="index.html"><b>Phonebook</b></a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/characters">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="character-details.ftlh">Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/characters/about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="new-character-form.html">Add a Character</a>
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
                <a href="details.html">
                    <div class="col">
                        <div class="card shadow-sm" style="background-color: #393E46;">
                            <img src="Images/${character.name}.png" class="img-thumbnail" alt="Clint portait">
                            <div class="card-body">
                                <h4 style="color: #DFD0B8;">${character.name}</h4>
                                <p style="color: #DFD0B8;">${character.occupation}</p>
                            </div>
                        </div>
                    </div>
                </a>
            </#list>
            <!-- <a href="details.html">
                <div class="col">
                    <div class="card shadow-sm" style="background-color: #393E46;">
                        <img src="Images/Clint.png" class="img-thumbnail" alt="Clint portait">
                        <div class="card-body">
                            <h4 style="color: #DFD0B8;">Clint</h4>
                            <p style="color: #DFD0B8;">Blacksmith</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="details.html">
                <div class="col">
                    <div class="card shadow-sm" style="background-color: #393E46;">
                        <img src="Images/Lewis.png" class="img-thumbnail" alt="Lewis portait">
                        <div class="card-body">
                            <h4 style="color: #DFD0B8;">Lewis</h4>
                            <p style="color: #DFD0B8;">Mayor</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="details.html">
                <div class="col">
                    <div class="card shadow-sm" style="background-color: #393E46;">
                        <img src="Images/Pierre.png" class="img-thumbnail" alt="Pierre portait">
                        <div class="card-body">
                            <h4 style="color: #DFD0B8;">Pierre</h4>
                            <p style="color: #DFD0B8;">Store Owner</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="details.html">
                <div class="col">
                    <div class="card shadow-sm" style="background-color: #393E46;">
                        <img src="Images/Robin.png" class="img-thumbnail" alt="Robin portait">
                        <div class="card-body">
                            <h4 style="color: #DFD0B8;">Robin</h4>
                            <p style="color: #DFD0B8;">Carpenter</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="details.html">
                <div class="col">
                    <div class="card shadow-sm" style="background-color: #393E46;">
                        <img src="Images/Willy.png" class="img-thumbnail" alt="Willy portait">
                        <div class="card-body">
                            <h4 style="color: #DFD0B8;">Willy</h4>
                            <p style="color: #DFD0B8;">Fisherman</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="details.html">
                <div class="col">
                    <div class="card shadow-sm" style="background-color: #393E46;">
                        <img src="Images/Gus.png" class="img-thumbnail" alt="Gus portait">
                        <div class="card-body">
                            <h4 style="color: #DFD0B8;">Gus</h4>
                            <p style="color: #DFD0B8;">Saloon Owner</p>
                        </div>
                    </div>
                </div>
            </a> -->
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>