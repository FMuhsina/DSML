n = int(input("Enter how many numbers: "))
numbers = list(map(int, input(f"Enter {n} numbers separated by space: ").split()))
print("Your list:", numbers)
print("The largest element is:", max(numbers))
