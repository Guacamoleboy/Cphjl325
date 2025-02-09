int grade = (int)random(0, 100); // float is wack.

if (grade >= 90) { 
 println("Assign letter grade A.");
} else if (grade >= 70) { 
 println("Assign letter grade B.");
} else if (grade >= 50) {
 println("Assign letter grade C.");
} else if (grade >= 30) {
 println("Assign letter grade D.");
} else {
 println("Yea ngl m8. You've failed. Wagwan.");
}

println("The grade was: " + grade);
