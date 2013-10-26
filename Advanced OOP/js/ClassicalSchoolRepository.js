var Person = Class.create({
    init: function (fname, lname, age) {
        this.fname = fname;
        this.lname = lname;
        this.age = age;
    },
    introduce: function () {
        return "Name:" + this.fname + " " + this.lname + ", Age: " + this.age;
    }
});

var Student = Class.create({
    init: function (fname, lname, age, grade) {
        this._super = new  this._super(arguments);
        this._super.init(fname, lname, age);
        this.grade = grade;     
    },
    introduce: function () {
        return this._super.introduce() + ", grade: " + this.grade;
    }
});

Student.inherit(Person);

var Teacher = Class.create({
    init: function (fname, lname, age, speciality) {
        this._super = new this._super(arguments);
        this._super.init(fname, lname, age);
        this.speciality = speciality;
    },
    introduce: function () {
        return this._super.introduce() + ", speciality: " + this.speciality;
    }
});

Teacher.inherit(Person);

var School = Class.create({
    init: function (name, town, classes) {
        this.name = name;
        this.town = town;
        this.classes = classes;
    },
    introduce: function () {
        var str = "Name:" + this.name + ", Town:" + this.town + ", Classes:";
        for (var i = 0; i < this.classes.length; i++) {
            str += this.classes[i].name + ", ";
        }
        return str.substr(0, str.length - 2);
    }
});

var Course = Class.create({
    init: function (name, capacity, students, formTeacher) {
        this.name = name;
        this.capacity = capacity;
        this.students = students;
        this.formTeacher = formTeacher;
    },
    introduce: function () {
        var str = "Name:" + this.name + ", Capacity:" + this.capacity + ", Students:";
        for (var i = 0; i < this.students.length; i++) {
            str += this.students[i].introduce() + ", ";
        }
        str += "Form-teacher" + this.formTeacher.introduce();
        return str;
    }
});

var student1 = new Student("Stoyan", "Georgiev", 25, 4);
var student2 = new Student("Ivan", "Petrov", 28, 7);
var student3 = new Student("Dragan", "Ivanov", 26, 5);
var teacher1 = new Teacher("Georgi", "Georgiev", 24, "C# cources");
var teacher2 = new Teacher("Pavel", "Kolev", 27, "JS cources");
console.log(student1.introduce());
console.log(student2.introduce());
console.log(teacher1.introduce());
console.log(teacher2.introduce());

var classA = new Course("classA", 10, new Array(student1, student2, student3), teacher1);
var classB = new Course("classB", 2, new Array(student1, student3), teacher2);
console.log(classA.introduce());
console.log(classB.introduce());
var school = new School("Telerik", "Sofia", new Array(classA, classB));
console.log(school.introduce());