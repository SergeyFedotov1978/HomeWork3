public class Dog extends Animal {
    private String breed;

    public Dog(String name, int age, String breed) {
        super(name, age);
        this.breed = breed;
    }

    public String getBreed() {
        return breed;
    }

    @Override
    public void speak() {
        System.out.println("Woof! Woof!");
    }
}
