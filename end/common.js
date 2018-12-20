let c="c";
let m="m";
function out() {
    document.cookie="admin=; expires=Thu, 01 Jan 1970 00:00:01 GMT;";
    document.cookie="user=; expires=Thu, 01 Jan 1970 00:00:01 GMT;";
}
function add(l) {
    if (!document.querySelector("form")) {
        let form = document.createElement("form");
        form.method = 'post';
        let divka = document.getElementById("addmovie");
        divka.classList.add("addmovie");
        console.log("yes");
        let name = document.createElement("input");
        name.type = "text";
        name.name = "name";
        name.required = true;
        let date = document.createElement("input");
        date.type = "text";
        date.name = "date";
        date.required = true;
        let img = document.createElement("textarea");
        img.rows = "2";
        img.cols = "30";
        img.name = "img";
        img.required = true;
        let about = document.createElement("textarea");
        about.rows = "10";
        about.cols = "30";
        about.name = "about";
        about.required = true;
        let submit = document.createElement("input");
        submit.type = "submit";
        submit.value = "Add";

        if (l === "m") {
            form.action = 'movies.php';
            var label = document.createElement("label");
            label.innerHTML = "PHASE";
            var phase = document.createElement("select");
            let o1 = document.createElement("option");
            o1.value = "1";
            o1.innerHTML = "1";
            let o2 = document.createElement("option");
            o2.value = "2";
            o2.innerHTML = "2";
            let o3 = document.createElement("option");
            o3.value = "3";
            o3.innerHTML = "3";
            phase.appendChild(o1);
            phase.appendChild(o2);
            phase.appendChild(o3);
            phase.name = "phase";
            phase.required = true;

            name.placeholder = "Name of the film";
            date.placeholder = "DD Month YYYY of premier";
            img.placeholder = "URL of poster";
            about.placeholder = "About the movie";

            form.appendChild(label);
            form.appendChild(phase);
        }
        else {
            form.action = 'characters.php';

            let page = document.createElement("textarea");
            page.rows = "2";
            page.cols = "30";
            page.name = "page";
            page.required = true;

            name.placeholder = "Character's name";
            date.placeholder = "First mention of character";
            img.placeholder = "URL of his picture";
            page.placeholder = "URL of it's web page";
            about.placeholder = "couple words about the character";

            form.appendChild(page);
        }

        form.appendChild(name);
        form.appendChild(date);
        form.appendChild(img);
        form.appendChild(about);
        form.appendChild(submit);
        divka.appendChild(form);
    }
}