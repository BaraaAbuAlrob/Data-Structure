// Stack Challenges:

// Challenge 1: Reverse a List
void reverseList(List<dynamic> list) {
  for (var i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
} // Done.

// Challenge 2: Balance the Parentheses
bool isBalanced(String expression) {
  var count = 0;

  for (var char in expression.split("")) {
    if (char == "(") {
      count++;
    } else if (char == ")") {
      count--;
      if (count < 0) {
        return false;
      }
    }
  }

  return count == 0; // Now count >= 0.
} // Done.

// Linked List Challenges:

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

// Challenge 1: Print in Reverse
void printListInReverse(Node? head) {
  if (head == null) return;

  var list = <dynamic>[];

  while (head != null) {
    list.add(head.data);
    head = head.next;
  }

// Now print the reverse List.
  for (var i = list.length - 1; i >= 0; i--) {
    print(list[i]);

    // or thus ==> reverseList(list);
  }
} // Done.

// Challenge 2: Find the Middle Node.
Node? findMiddleNode(Node? head) {
  if (head == null) return null;

  var twoSteps = head;
  var step = head;

  while (step.next != null && step.next?.next != null) {
    twoSteps = twoSteps.next?.next as Node;
    step = step.next as Node;
  }

  return step;
} // Done.

// Challenge 3: Reverse a Linked List
Node? reverseLinkedList(Node? head) {
  if (head == null)
    return head;
  else if (head.next == null) return head;

  Node? prev = null;
  Node? current = head;
  Node? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

// Challenge 4: Remove All Occurrences
Node? removeAllOccurrences(Node? head) {
  Set<dynamic> set = Set<dynamic>();
  Node? current = head;
  Node? prev = null;

  while (current != null) {
    if (set.contains(current.data)) {
      prev?.next = current.next;
    } else {
      set.add(current.data);
      prev = current;
    }
    current = current.next;
  }

  return head;
}
