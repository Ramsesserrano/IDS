var Alert = new CustomAlert();

function CustomAlert(){
    this.render = function(){
        let popUpBox = document.getElementById('popUpBox');
        popUpBox.style.display = "block";
        document.getElementById('closeModal').innerHTML = '<a href="index.php"><button type="button">¡Sí quiero!</button></a>';
    
    }
    this.ok = function(){
        document.getElementById('popUpBox').style.display = "none";
        document.getElementById('popUpOverlay').style.display = "none";
    }
}