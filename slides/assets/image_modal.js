<script>
// Get the modal
var modal = document.getElementById("myModal");
var modal2 = document.getElementById('myModal2');
var modal3 = document.getElementById('myModal3');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var modalImg = $("#img01");
var modalImg2 = $("#img02");
var modalImg3 = $("#img03");
var captionText = document.getElementById("caption");
var captionText2 = document.getElementById("caption2");
var captionText3 = document.getElementById("caption3");

/* this adds the imag src from alt rather than having to add it manually*/
$('.modalImg').attr("src", function() {
  return "images/html_template_" + this.alt + ".png";
  });
$('.modalImg2').attr("src", function() {
  return "images/html_template_" + this.alt + ".png";
  });
$('.modalImg3').attr("src", function() {
  return "images/html_template_" + this.alt + ".png";
  });

/* this adds iframe */
$('.modalImg').click(function(){
    modal.style.display = "block";
    var newSrc = "html/html_template_" + this.alt + ".html";
    modalImg.attr('src', newSrc);
    captionText.innerHTML = this.alt;
});
$('.modalImg2').click(function(){
    modal2.style.display = "block";
    var newSrc = "html/html_template_" + this.alt + ".html";
    modalImg2.attr('src', newSrc);
    captionText2.innerHTML = this.alt;
});
$('.modalImg3').click(function(){
    modal3.style.display = "block";
    var newSrc = "html/html_template_" + this.alt + ".html";
    modalImg3.attr('src', newSrc);
    captionText3.innerHTML = this.alt;
});


// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
</script>
