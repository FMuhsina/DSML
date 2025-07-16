user_input = input("Enter pairs separated by commas (e.g. Rajesh 75,Vasudevan 80): ")
pairs = [tuple(pair.strip().split()) for pair in user_input.split(',')]
print("Tuple=",pairs)
dictionary = dict(pairs)
print("Dictionary=",dictionary)
