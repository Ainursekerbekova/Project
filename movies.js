
function add() {
    if (! document.querySelector("input")){
        let form = document.querySelector("form");

        let phase = document.createElement("input");
        let name = document.createElement("input");
        let date = document.createElement("input");
        let img = document.createElement("input");
        let about = document.createElement("input");
        let submit = document.createElement("input");

        phase.type = "text";
        name.type = "text";
        date.type = "text";
        img.type = "text";
        about.type = "text";
        submit.type = "submit";

        phase.name = "phase";
        name.name = "name";
        date.name = "date";
        img.name = "img";
        about.name = "about";

        phase.required = true;
        name.required = true;
        date.required = true;
        img.required = true;
        about.required = true;

        phase.placeholder = "1/2/3";
        name.placeholder = "Name of the film";
        date.placeholder = "Date of premiere";
        img.placeholder = "URL of poster";
        about.placeholder = "About the film";

        form.appendChild(phase);
        form.appendChild(name);
        form.appendChild(date);
        form.appendChild(img);
        form.appendChild(about);
        form.appendChild(submit);
    }
}