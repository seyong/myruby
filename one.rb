
def preorder(tree)
	p(tree[0])
	if tree[0].start_with?("Tr")
		preorder(tree[1])
		preorder(tree[2])
	end
end

def postorder(tree)
	if tree[0].start_with?("Tr")
		postorder(tree[1])
		postorder(tree[2])
	end
	p(tree[0])
end

print("Preorder")
node1 = ["Tr1",["Tr2",["LeafA"],["LeafB"]],["Tr3",["LeafC"],["LeafD"]]]
preorder(node1)

print("Postorder")
postorder(node1)
