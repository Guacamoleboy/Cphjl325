package persons;

    public class Person {

        private int age;
        private String name;

        public Person(int age, String name) {

            this.name = name;
            this.age = age;

        } // Constructor end

        public int getAge() { // Task 1
            return this.age;
        }

        public String getName() { // Task 1
            return this.name;
        }

        public void setAge(int age) { // Task 2
            this.age = age;
        }

        public void setName(String name) { // Task 2
            this.name = name;
        }

        public String toString() { // Task 3
            return "Name: " + this.name + ", Age: " + this.age;
        }

} // Entity class end
