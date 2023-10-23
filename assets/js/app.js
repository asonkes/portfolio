/*** JS POUR PAGE HEADER/
/*** JS POUR MENU BURGER (croix qui apparaît) ***/
const header = document.getElementById("header");
const burger = document.querySelector(".burger");
console.log(burger);

burger.addEventListener("click", () => {
  // Vérifier si le bouton burger a la classe "active"
  if (burger.classList.contains("active")) {
    // Si le menu est actuellement ouvert, le fermer
    burger.classList.remove("active");
    header.style.opacity = 0; // Cacher le menu
  } else {
    // Si le menu est actuellement fermé, l'ouvrir
    burger.classList.add("active");
    header.style.opacity = 1; // Afficher le menu
  }
});
// JS POUR MENU DEROULANT (au scroll)
const allItems = document.querySelectorAll(".navmenu ul li a");
const sectionIds = ["home", "about", "work", "contact"];

function updateActiveLink() {
  const scrollPosition = window.scrollY;

  if (sectionIds) {
    sectionIds.forEach((sectionId, index) => {
      const section = document.getElementById(sectionId);
      const link = allItems[index];

      if (section) {
        const sectionTop = section.offsetTop;
        console.log(sectionTop);
        const sectionBottom = sectionTop + section.offsetHeight;

        if (scrollPosition >= sectionTop && scrollPosition < sectionBottom) {
          link.classList.add("active");
        } else {
          link.classList.remove("active");
        }
      }
    });
  }
}

document.addEventListener("scroll", updateActiveLink);
window.addEventListener("resize", updateActiveLink);
window.addEventListener("load", updateActiveLink);

// JS POUR MENU DEROULANT (au clic)
if (allItems) {
  allItems.forEach((elem, index) => {
    elem.addEventListener("click", (event) => {
      const targetSection = document.getElementById(sectionIds[index]);
      console.log(targetSection);
      if (targetSection) {
        event.preventDefault(); // Empêche le comportement de lien par défaut

        if (targetSection) {
          // Supprime la classe "active" des autres liens
          allItems.forEach((item) => {
            item.classList.remove("active");
          });

          // Fait défiler la page jusqu'à la section cible avec un défilement fluide
          targetSection.scrollIntoView({ behavior: "smooth" });
        }
      }
    });
  });
}

/*********************   ******************************************* */
/*** JS POUR PAGE HOME.PHP/
/*** JS POUR HOME (partie H1)***/
if (document.querySelector(".type")) {
  var typed = new Typed(".type", {
    strings: ["Web Developer", "Strong Woman", "Motivated Junior", "Web Developer"],
    typeSpeed: 60,
    backSpeed: 60,
    loop: false,
  });
}

/*** JS POUR ABOUT (partie photos ordinateur) ***/
const parallaxImage = document.querySelector(".parallax-image");
console.log(parallaxImage);
const imageOrdi = document.getElementById("imageOrdiBlack");
console.log(imageOrdi);
const imageOrdiColor = document.getElementById("imageOrdiColor");
console.log(imageOrdiColor);

if (parallaxImage) {
  parallaxImage.addEventListener("mouseover", () => {
    imageOrdiColor.style.display = "block";
  });

  parallaxImage.addEventListener("mouseout", () => {
    imageOrdiColor.style.display = "none";
  });
}

/*** JS POUR WORK (effet pour les blocks) ***/
const dataEffects = document.querySelectorAll("[data-effect]");
console.log("dataEffects", dataEffects);

const checkIsVisible = (element) => {
  const rect = element.getBoundingClientRect();
  if (rect.top <= window.innerHeight) {
    return true;
  }
  return false;
};

dataEffects.forEach((elem) => {
  console.log("elem", elem, elem.getAttribute("data-effect"));
  console.log("condition", elem.getAttribute("data-effect") === "fade-in-right");
  console.log("elem.parentElement", elem.parentElement);

  elem.style.visibility = "hidden";

  document.addEventListener("scroll", () => {
    if (checkIsVisible(elem)) {
      elem.style.visibility = "visible";

      elem.classList.add("is-animate");
    }
  });
});

/*********************   ******************************************* */
/*** JS POUR WEBDESIGN.PHP ***/
/*** JS POUR CARROUSSEL D'IMAGE ***/
const dataProjects = document.querySelectorAll("[data-project-name]");
console.log("bonjour", dataProjects);

const projectImages = document.querySelectorAll(".project-image");
console.log("coucou", projectImages);

// Sélectionnez l'image par défaut (par exemple, la première image)
const defaultImage = projectImages[0];

dataProjects.forEach((link) => {
  // Réinitialisez l'opacité de toutes les images
  projectImages.forEach((a, index) => {
    if (index > 0) {
      a.style.opacity = 0;
      a.style.visibility = "hidden";
    }
  });

  link.addEventListener("click", function (event) {
    event.preventDefault();
    const projectName = this.innerText; // Utilisez le texte interne du lien

    // Réinitialisez l'opacité de toutes les images
    projectImages.forEach((elem) => {
      elem.style.opacity = 0;
      elem.style.visibility = "hidden";
    });

    // Affichez l'image correspondante en utilisant le texte interne
    projectImages.forEach((elem) => {
      console.log("a", elem, "img", elem.children[0].getAttribute("alt"));
      // Vérifiez si le texte interne de l'image correspond au nom du projet
      if (elem.querySelector(".project-image-enfant").getAttribute("alt") === projectName) {
        elem.style.opacity = 1;
        elem.style.visibility = "visible";
      }
    });
  });
});

// Affichez l'image par défaut au chargement de la page
if (defaultImage) {
  defaultImage.style.opacity = 1;
}
