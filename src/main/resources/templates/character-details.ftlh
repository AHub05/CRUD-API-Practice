<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details - Stardew Phonebook</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <div class="container" id="navbar">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="index.html"><b>Phonebook</b></a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="details.html">Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="new-character-form.html">Add a Character</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    
    <div class="container-fluid pt-4 pb-4 px-2">
        <div class="row row-cols-3 row-cols bg-body-tertiary">
            <div class="col text-center"><img src="/Images/Clint.png"></div>
            <div class="col text-center py-5"><em><b>${character.name}</b></em></div>
            <div class="col py-3">
                Occupation: ${character.occupation}<br>
                Relationship: Single<br>
                Birthday: Winter 26<br>
                Location: ${character.address}
            </div>
            <div class="col text-center"><img src="/Images/Gus.png"></div>
            <div class="col text-center py-5"><em><b>Gus</b></em></div>
            <div class="col py-3">
                Occupation: Owner of the Stardrop Saloon<br>
                Relationship: Single<br>
                Birthday: Summer 8<br>
                Location: Pelican Town, The Stardrop Saloon
            </div>
            <div class="col text-center"><img src="/Images/Lewis.png"></div>
            <div class="col text-center py-5"><em><b>Lewis</b></em></div>
            <div class="col py-3">
                Occupation: Mayor of Pelican Town<br>
                Relationship: Marnie?<br>
                Birthday: Spring 7<br>
                Location: Pelican Town, Mayor's Manor
            </div>
            <div class="col text-center"><img src="/Images/Pierre.png"></div>
            <div class="col text-center py-5"><em><b>Pierre</b></em></div>
            <div class="col py-3">
                Occupation: Owns Pierre's General Store<br>
                Relationship: Caroline<br>
                Birthday: Spring 26<br>
                Location: Pelican Town, Pierre's General Store
            </div>
            <div class="col text-center"><img src="/Images/Robin.png"></div>
            <div class="col text-center py-5"><em><b>Robin</b></em></div>
            <div class="col py-3">
                Occupation: Town Carpenter, owns Carpenter's Shop<br>
                Relationship: Demetrius<br>
                Birthday: Fall 21<br>
                Location: The Mountain, 24 Mountain Road
            </div>
            <div class="col text-center"><img src="/Images/Willy.png"></div>
            <div class="col text-center py-5"><em><b>Willy</b></em></div>
            <div class="col py-3">
                Occupation: Owns a Fishing Shop<br>
                Relationship: Single<br>
                Birthday: Summer 24<br>
                Location: The Beach, Fish Shop
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>