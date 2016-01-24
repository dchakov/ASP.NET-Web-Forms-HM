var iRowIndex;    // THE ROW INDEX OF THE GRIDVIEW, TO KEEP THE ROW HIGHLIGHTING
// WHEN THE MOUSE IS ON ANOTHER CONTROL.

function MouseEvents(objRef, evt, desc) {

    if (evt.type == "mouseover") {

        objRef.style.cursor = 'pointer'
        objRef.style.backgroundColor = "#EEE";
        ShowDiv(desc, evt.pageY);

    }
    else {

        objRef.style.backgroundColor = "#FFF";
        iRowIndex = objRef.rowIndex;
        HideDiv();

    }
}
function ShowDiv(desc, pos) {

    // SHOW THE DIV WITH DESCRIPTIONS NEXT TO THE SELECTED GRIDVIEW ROW.

    document.getElementById('divDetail').style.display = 'block';
    document.getElementById('divDetail').innerHTML = desc;
    document.getElementById('divDetail').style.marginTop = pos - 25 + 'px';
}

function HideDiv() { document.getElementById('divDetail').style.display = 'none'; }

function highlight(objRef, evt) {
    if (evt.type == "mouseover") {
        objRef.style.display = 'block';
        document.getElementById('gvEmployee').rows[iRowIndex].style.backgroundColor = "#EEE";
    }
    else {
        if (evt.type == "mouseout") {
            document.getElementById('gvEmployee').rows[iRowIndex].style.backgroundColor = "#FFF";
            objRef.style.display = 'none';
        }
    }
}