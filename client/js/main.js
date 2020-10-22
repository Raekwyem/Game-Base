//--------------------------------------------------------------//
                    // LES VARIABLES
//--------------------------------------------------------------//

const selectElement = document.getElementById('sort'); // id de 'select'

let games = []; // on créé une table vide afin de stocker les données que l'on récupère plus tard dedans



//--------------------------------------------------------------//
                    // LES FONCTIONS
//--------------------------------------------------------------//

//- Fonction de tri par nom croissant --------------------------------------
function nomAsc(a, b){
    if(a.JeuVideo < b.JeuVideo){
        return -1;
    }
    if(a.JeuVideo > b.JeuVideo){
        return 1;
    }
}

//- Fonction de tri par prix croissant --------------------------------------
function prixAsc(a, b)
{
    let prixA = parseFloat(a.Prix);
    let prixB = parseFloat(b.Prix);

    if(prixA < prixB) // on utilise parseFloat() car l'API renvoie les champs en type String
    {
        //console.log(a.Prix, b.Prix, '-1');
        // a est plus petit que b
        return -1;
    }

    if(prixA > prixB) // on utilise parseFloat() car l'API renvoie les champs en type String
    {
        //console.log(a.Prix, b.Prix, '1');
        // a est plus grand que b
        return 1;
    }

    //console.log(a.Prix, b.Prix, '0');
    // a et b sont égaux
    return 0;
}

//- Fonction de tri par prix décroissant --------------------------------------
function prixDesc(a, b)
{
    let prixA = parseFloat(a.Prix);
    let prixB = parseFloat(b.Prix);

    if(prixA < prixB) // on utilise parseFloat() car l'API renvoie les champs en type String
    {
            // a est plus petit que b
        return 1;
    }

        if(prixA > prixB) // on utilise parseFloat() car l'API renvoie les champs en type String
    {
            // a est plus grand que b
        return -1;
    }

        // a et b sont égaux
    return 0;
}

//- Fonction de tri par nom croissant --------------------------------------
function dateAsc(a, b){

    let dateA = new Date(a.DateSortie);
    let dateB = new Date(b.DateSortie);

    if(dateA < dateB){
        return -1;
    }
    if(dateA > dateB){
        return 1;
    }
}

//- Fonction appel du tri --------------------------------------
function onChangeSort(event){
    const select = event.currentTarget;

    switch(select.value){
    // switch permet de définir proprement les conditions pour chaque option de select
        case 'nomAsc':
            games.sort(nomAsc);
            break;

        case 'prixAsc':
            games.sort(prixAsc);
            break;
        
        case 'prixDesc':
            games.sort(prixDesc);
            break;
        
        case 'dateAsc':
            games.sort(dateAsc);
            break;
    }

    refresh(games);
}    


//- Fonction d'affichage --------------------------------------
function refresh(gameList){

    const ul = document.getElementById('liste-jeux');

    ul.innerHTML = null;

    for(let index = 0; index < gameList.length; index++){

        const game = gameList[index];

        ul.innerHTML +=
            `<li class="col-md-3">
                <div class="card mb-3 carte" style="max-width: 300px">
                    <div class="row no-gutters">
                        <div>
                            <img src="${game.UrlPochette}" class="card-img jaquette" alt="${game.JeuVideo}">
                        </div>
                        <div>
                            <div class="card-body">
                                <h5 class="card-title"><a href="client/game.html?Id=${game.id}">${game.JeuVideo}</a> [Note: ${game.Note}/10]</h5>
                                <p class="card-text">Date de sortie: ${game.DateSortie}</p>
                                <p class="card-text">Genre: ${game.Genre}</p>
                                <p class="card-text">Editeur: ${game.Editeur}</p>
                                <p class="card-text">Description: ${game.Description}</p>
                                <p class="card-text"> </p>
                                <p class="card-text text-right">Prix: ${game.Prix}€</p>
                            </div>
                        </div>
                    </div>
                </div>
            </li>`;
    }
}



//--------------------------------------------------------------//
                    // LE WINDOW FETCH
//--------------------------------------------------------------//

window.fetch('http://localhost:8888/GameBase/serveur/API/jeu_video.php')
.then(function(response){
    // demande à récupérer les résultats en JSON
    return response.json();
})
.then(function(results){
    games = results;

    //console.log(games.sort(prixAsc));
    //console.log(games.sort(prixDesc));
    refresh(games);
})



//--------------------------------------------------------------//
                    // LES EVENT
//--------------------------------------------------------------//

selectElement.addEventListener('change', onChangeSort);
