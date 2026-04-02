<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add A Character - Stardew Phonebook</title>
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
                        <a class="nav-link" href="details.html">Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="new-character-form.html">Add a Character</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    
    <div class="container-fluid bg-body-tertiary">
        <div class="row p-5">
            <div class="col text-center">
                <h1>Character Addition Form</h1>
            </div>
        </div>
    </div>

    <form>
        <div class="mb-3 px-5">
            <label for="characterinput" class="form-label">Enter Character</label>
            <input type="text" class="form-control" id="characterInput" placeholder="John Doe" aria-describedby="userInput" required>
        </div>
        <div class="mb-3 px-5">
            <label for="role" class="form-label">What is their proffesion?</label>
            <input type="text" class="form-control" id="role" placeholder="Hacker" aria-describedby="jobInput" required>
        </div>
        <div class="mb-3 px-5">
            <!-- Input select statement for home-->
            <label for="locationSelect" class="form-label">Where do they live?</label>
            <select class="form-select" id="locationSelect" aria-label="Default select example" required>
                <option>Select from the drop down.</option>
                <option>Pelican Town</option>
                <option>Cindersap Forest</option>
                <option>Beach</option>
                <option>Mountain</option>
                <option>Mutant Bug Lair</option>
                <option>Desert</option>
                <option>Ginger Island</option>
            </select>
        </div>
        <div class="mb-3 px-5">
            <label for="portrait" class="form-label">Upload link to picture</label>
            <input type="url" class="form-control" id="portait" placeholder="website.com" aria-describedby="imageUpload" required>
        </div>
        <div class="mb-3 px-5">
            <label for="descrpitionBox" calss="form-label">Please provide a short description.</label>
            <textarea class="form-control" id="descrpitionBox" rows="2" placeholder="Enter Desctiption here" required></textarea>
        </div>
        
        <div class="mb-3 px-5">
            <button type="submit" class="btn btn-outline-success">Submit</button>
        </div>
    </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>