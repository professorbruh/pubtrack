const title = document.getElementById("title");
const email1 = document.getElementById("email1");
const name1 = document.getElementById("name1");
const inst = document.getElementById("institution");
const manu = document.getElementById("manuscript");
const report = document.getElementById("report");

var manuPath = manu.value;
var manuExt = /(\.pdf)$/i;

var repoPath = report.value;
var repoExt = /(\.jpg|\.jpeg|\.bmp|\.gif|\.png)$/i;

title.addEventListener("input", function (event) {
  if (title.validity.valueMissing) {
    title.setCustomValidity("Please fill out this field");
  } else {
    email.setCustomValidity("");
    }
});

email1.addEventListener("input", function (event) {
    if (email1.validity.typeMismatch) {
      email1.setCustomValidity("Enter a valid email id");
    } else {
      email1.setCustomValidity("");
    }
    if (email1.validity.valueMissing) {
      email1.setCustomValidity("Please fill out this field");
    } else {
      email1.setCustomValidity("");
    }
});

name1.addEventListener("input", function (event) {
    if (name1.validity.valueMissing) {
        name1.setCustomValidity("Please fill out this field");
    } else {
        name1.setCustomValidity("");
      }
});

inst.addEventListener("input", function (event) {
  if (inst.validity.valueMissing) {
    inst.setCustomValidity("Please fill out this field");
  } else {
    inst.setCustomValidity("");
    }
});

manu.addEventListener("input", function (event) {
  if (!manuExt.exec(manuPath)) {
    manu.setCustomValidity("Invalid File type");
    manuPath.value = '';
    return false;
  } 
});

report.addEventListener("input", function (event) {
  if (!repoExt.exec(repoPath)) {
    report.setCustomValidity("Invalid File type");
    repoPath.value = '';
    return false;
  } 
});
