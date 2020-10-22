//--------------------------------------------------------------//
                    // LES VARIABLES
//--------------------------------------------------------------//

let game = null;

//--------------------------------------------------------------//
                    // LES FONCTIONS
//--------------------------------------------------------------//

function onClickAddComment(event){
    const pseudo = document.getElementById('pseudo');
    const commentaire = document.getElementById('commentaire')
    const valider = document.getElementById('valider');

    var formData = new FormData();
    formData.append(pseudo);
    formData.append(commentaire, 'Chris');

    var form = new FormData(document.getElementById('login-form'));
    fetch("/login", {
    method: "POST",
    body: form
    })
}

//- Fonction d'affichage --------------------------------------
function refresh(game, avis){

    document.querySelector('img').src = game.UrlPochette;
    document.querySelector('img').alt = game.JeuVideo;
    document.getElementById('Nom').innerHTML = game.JeuVideo;
    document.getElementById('Note').innerHTML = `Note : ` + game.Note + `/10`;
    document.getElementById('DateSortie').innerHTML = `Date de sortie : ` + game.DateSortie;
    document.getElementById('Genre').innerHTML = `Genre : ` + game.Genre;
    document.getElementById('Editeur').innerHTML = `Editeur : ` + game.Editeur;
    document.getElementById('Description').innerHTML = game.Description;
    document.getElementById('Prix').innerHTML = `Prix : ` + game.Prix + `€`;
    
    const comment = document.getElementById('avis');

    comment.innerHTML = null;

    for(let index = 0; index < avis.length; index++){
        const user = avis[index];

        comment.innerHTML +=
        `
        <h6 class="card-title" id="Pseudo">${user.Pseudo}</h6>
        <p class="card-text border-bottom border-warning" id="Commentaire">${user.Commentaire}</p>
        `;
    }
}



//--------------------------------------------------------------//
                    // LE WINDOW FETCH
//--------------------------------------------------------------//

let url = new URL(document.location); // Permet de récupérer l'URL où on se trouve

let Id = url.searchParams.get('Id'); // équivaut à lire $_GET['Id'], si l'URL contient un paramètre Id dans la query string


window.fetch(`http://localhost:8888/GameBase/serveur/API/jeu_video.php?Id=${Id}`)
    .then(function(response)
    {
        // demande à récupérer les résultats en JSON
        return response.json();
    })
    .then(function(game)
    {
        window.fetch(`http://localhost:8888/GameBase/serveur/API/avis.php?Id=${Id}`)
            .then(function(response)
            {
                // demande à récupérer les résultats en JSON
                return response.json();
            })
            .then(function(avis)
            {
                // Mise à jour de l'affichage avec les données du jeu et les avis sur le jeu
                refresh(game, avis);
            });
    });

valider.addEventListenener('click', onClickAddComment);