//
//  Math.swift
//  SomethingLikeAnAutomaton
//
//  Created by Peter Fonash on 2/1/18.
//  Copyright © 2018 Ente. All rights reserved.
//

import Foundation

struct MathThings {
    
    private var stuffIShouldAlreadyKnow = [
    
        "Cross multiplication": "3/x=3/6 --> after cross multiplication (3*6=3x), x= 6",
        "multiple of": "",
        "How to count numbers in a range": ""
    
    ]
    
    private var logic = [
        
        "Proposition": "A declarative sentence that is either true or false, but not both.",
        "Premise": "A statement in an argument, or argument form,  other than the final one",
        "Conclusion": "The final statement in an argument or argument form. ",
        "Propositional variables": "Variables that represent propositions.",
        "Predicate": "A property that the subject of a statement may have.",
        "Satisfiable": "A propositional formula is satisfiable if there is some assignment of truth values to its variables that makes it true.",
        "Logical operators": "AND OR NOT XOR IMPLIES IFF AND ONLY IFF.",
        "Argument": "A sequence of propositions.",
        "Valid argument": "An argument where the conclusion must follow the truth of the premises.  An argument is valid if the truth of all its premises implies the truth of the conclusion.  e.g., if p is true, then q must also be true.",
        "Contrapositive (sym)": "¬q -> ¬p",
        "New conditional statement that is logically equivalent:": "Constrapostive",
        "Converse": "q -> p",
        "Inverse": "¬p -> ¬q",
        "Logically equivalent": "Propositions whose truth value matches in all cases.",
        "Operators order of precedence": "¬ ^ v -> <=>",
        "Tautology": "A compound proposition that is always true for all possible combinations of truth values.",
        "Contradiction": "A compound proposition that is always false for all possible combinations of truth values.",
        "Contingency": "A compound proposition that is neither a tautology or a contradiction.",
        "Propositional function": "A statement containing one or more variables that becomes a proposition when each of its variables is assigned a value or is bound by a quantifier.",
        "Free variable": "A variable not bound in a propositional function.",
        "Argument form": "A sequence of compound propositions involving propositional variables.",
        "Domain of discourse (logic)": "The values a variable in a propositional function may take.",
        "Quantifiers": "The extent to which a predicate is true over a range of elements.  They enable us to reason with statements that assert that a certain property holds for all objects of a certain type and with statements that assert the existence of an object with a particular property.",
        "Theorem": "A mathematical assertion that can be shown to be true",
        "Conjecture": "A mathematical assertation proposed to be true, but that has not been proved.",
        "Scope of quantifiers": "",
        "Hypothetical syllogism": " p - > q and q -> r ----- p ->r",
        "Modus ponens": "if p and p -> q, ----- q.",
        "Modus tollens": "if ¬q and p -> q ----- ¬p.",
        "Disjunctive syllogism": "",
        "Addition": "",
        "Simplification": "",
        "Conjunction": "",
        "Resolution": ""
    ]
    
    private var numberTheory = [
        
        "even * odd": "The product of even number and an odd number is always even.",
        "even * even": "The product of even number and an even number is always even.",
        "odd * odd": "The product of odd number and an odd number is always odd.",
        "even + even": "The sum of two even numbers is always even.",
        "even + odd": "The sum of an even number and an odd number is always odd.",
        "odd + odd": "The sum of two odd numbers is always even.",
        "Perfect power": "An integer that equals n^a where a is an integer greater than 1. 5^2 is a perfect square, and 25 is a perfect power. 3^3 = 9 is a perfect power",
        "Rational number":"A rational number is a number that can be expressed as the fraction of two integers, p/q where q≠0.",
        "Sum of rational numbers": "The sum of two rational numbers is a rational number.",

        "3 key, basic properties of divisibility of integers": "",
        "The division algorithm": "Let a be an integer and d be a positive integer.  Then there are unique integers q and r, with 0 ≤ r < d, such that a = dq + r.  a is the dividend; d is the divisor; q is the quotient; r is the remainder",
        " q=": "a div d",
        "r=": "a mod d",
        "Congruent": "a is congruent to b if b mod m if m divides a-b.  In other words, a ≣ b (mod m).  We say that a ≣ b (mod m) is a congruence, and m is its modulus.",
        "When is a ≣ b (mod m)?": "When (a mod m) = (b mod m) or when m | a-b.",
        "mod":"a - (d * floor(a/d))",
        "When are integers a and b congruent to modulo m?":" IFF there exists an integer k such that a = b + km",
        "Congruence class:":"The set of all integers congruent to a modulu m is called the congruence class of a modulu m.",
        "Greatest common divisor":"The largest integer that divides both of two integers",
        "Closure":"",
        "Associative":"",
        "Commutative":"",
        "Identity elements":"",
        "additive inverse":"",
        "Distributivity":"",
        
    ]
    
    private var proofs = [
        
        "Proof by cases": "A proof broken into separate cases, where these cases cover all possibilities.",
        "Proof by contradiction": "proof that p is true based on the truth of the conditional statement ¬p->q where q is a condtradiction.",
        "Direct proof": "A proof that p->q is true by showing that q must be true when p is true.",
        "Proof by contraposition": "A proof that p -> q is true by showing that p must be false q is false (¬q -> ¬p).",
        "Proof by exhaustion":"A proof that establishes a result by checking a list of all possible cases.",
        "Rule of inference proof by cases based on": "p1 v p2",
        "Counterexample": ""
    ]
    
    private var sets = [
    
        "Set": "Unordered collection of objects",
        "Element/member in a set": "an object in a set",
        "N":"natural numbers",
        "Z":"integer",
        "Z+":"positive integers",
        "Q":"rational numbers",
        "R":"real numbers",
        "R+":"positive real numbers",
        "C":"complex numbers",
        "closed interval":"[x, y]",
        "open interval":"(x, y)",
        "What is the empty set?": "A special set that has no elements.  It is a subset of every other set.",
        "Subset": "A is a subset of B if every element of A is also an element in B.",
        "Proper subset": "Whrn we wish to emphasize that A is a subset of B but that A ≠ B, we write the 'C looking shape' without a line ",
        "(1) A nonempty set is guaranteed how many subsets? (2) what are they? ":"2.  The empty set and itself.",
        "How to show that 2 sets are equal?":"A is a subset of B AND B is a subset of A. ",
        "Power set": "All the subsets of a set S.  The power set is denoted by P(s).",
        "How many elements does the power set of a set with n elements have?": "2^n",
        "Union:": "A set operation that contains those elements that are either in A OR in B, or in both.",
        "Intersection:": "A set operation that denotes the set containing those elements in A AND B.",
        "Disjoint" : "Two sets are disjoint if their intersection is the empty set.",
        "Difference" : "The difference of A and B is is the set containing those elements that are in A but NOT in B.  AKA the complement of B with respect to A.",
        "Universal set:": "The set of all objects.  The complement of the universal set is the empty set.",
        "Cartesian product:": "The set of all ordered pairs (a,b) where a is a member of A and b is member of B.",
        "Ordered n-tuples": "Ordered collection that has a1 as its first element, a2 as its second...an as its nth.",
        "Ordered pairs": "AKA ordered 2-tuples",
        "When are ordered pairs equal": "IFF each corresponding pair of their elements is equal.",
        "Relation": "A subset R of the cartesian products of A x B is called a relation from the set A to the set B.",
        "Truth set": "Given a predicate P and a domain D, The truth set of P is the set of elements x in D for which P(x) is true.  ",
        "Cardinality": "Let S be a set.  If there are exactly n distinct elements in S where n is a non-negative integer, then n is the cardinality of S.",
        "Good method for proving A is a subset of B.": "To prove A is a subset of B. Pick an arbitrary element in A and show it’s in B."
    ]
    
    private var functions = [
        
        "Function":"A function f from A to B is an assignment of exactly one element of B to each element of A.  We write f(a) = b is b is the unique element of B assigned by the function f to the element a of A.  ",
        "Domain":"A is the domain of f if f is a function from A to B.",
        "Co-Domain":"B is the co-domain of f, if f is a function from A to B.",
        "Image and Pre-image":" b is the image of a when f(a)=b.  a is the pre-image.",
        "Range": "The set of all images of elements of A.",
        "One-to-one": "A function is one-to-one IFF f(a) = f(b) implies that a=b for all a and b in the domain of f.",
        "Injective": "A one-to-one function.",
        "Invertible ": "A 1-1 correspondence is invertible because we can define an inverse of it.",
        "Inverse":"The function that reverses the correspondence given f (when f is a bijection)",
        "Onto":"For each b that is an element of B, there exists an a such that f(a)=b (every element in B is an image of some element in A).",
        "Surjective":"An onto function",
        "Bijection or one-to-one correspondence":"A function that is both one-to-one and unto.",
        "Partial functions": "",
        "Well defined ": "An expression is well-defined if its definition assigns it a unique interpretation or value.",
        "Show injective": "",
        "Show surjective": "",
        "Show not injective": "",
        "Show not surjective": "",
        "Show bijection": "Try solving for the inverse function."
        
    ]
    
    private var sequences = [
    
        "Sequence": "A function from a subset of the set of integers {0, 1, 2...} or {1, 2, 3...} to a set S.  We use the a_n to represent a term in the sequence.",
        "Geometric Progression": "A sequence of the form a, ar, ar^2...ar^n.  Analogue to an exponential function.",
        "Geometric series": "A sum of a geometric progression",
        "Initial term": "The first term in a sequence, usually given or known.",
        "Arithmetic progression": "A sequence of the form a, a+d, a+2d, a+nd.  Analogue to a linear function.",
        "Recurrence Relation": "A RR for a sequence is an equation that express a_n in terms of of one or more of the previous terms of the sequence for all integers n with n ≥ n_0 where n_0 is a nonnegative integer.  In other words, a RR recursively defines a sequence.",
        "Solution (to a recurrence relation)":"A sequence is called a solution to a recurrence relation if the terms of the sequence satisfy the recurrence relation.",
        "Initial conditions":"Specify the terms that precede the first term where the recurrence relation takes effect.",
        "Closed (explicit) formula":"We say that we have solved a recurrence relation together with the initial conditions when find an explicit or closed formula for the terms of the sequence. ",
        "Index of summation": "The index is the value below the greek sigma symbol.  It takes a new value as we progress through a sequence.",
        "Lower limit": "The starting point of the index of summation.",
        "Upper limit": "The ending point of the index of summation.",
        "The formula for the sum of a geometric progression": "(ar^(k+1) - a) / (r-1)",
        "The formula for the sum of a lower index of k=1 to n": "n(n+1) / 2"
    
    ]
    
    private var exam1 = [
    
        "Proposition": "A declarative sentence that is either true or false, but not both.",
        "Premise": "A statement in an argument, or argument form,  other than the final one",
        "Conclusion": "The final statement in an argument or argument form. ",
        "Propositional variable": "Variable that represents a proposition.",
        "Predicate": "A property that the subject of a statement may have.",
        "Satisfiable": "A propositional formula is satisfiable if there is some assignment of truth values to its variables that makes it true.",
        "Argument": "A sequence of propositions.",
        "Valid argument": "An argument where the conclusion must follow the truth of the premises.  An argument is valid if the truth of all its premises implies the truth of the conclusion.  e.g., if p is true, then q must also be true.",
        "Contrapositive (sym)": "¬q -> ¬p",
        "Converse": "q -> p",
        "Inverse": "¬p -> ¬q",
        "Disjunctive normal form": "A sequence of conjunctions and disjunctions joined by disjuctions.  The conjunctions are of the form A^B^C where A = p or ¬p B=q or ¬q, and C=r or ¬r.",
        "p v q ≣": "¬p -> q",
        "p -> q ≣": "¬p v q",
        "The equivalnces of p -> q expressed in different terms": """
            q unless ¬p
            p only if q
            q whenever p
            q is necessary for p
            q follows from p
            a necessary condition for p is q
            q if p
            q when p
        """,
        "¬(p -> q) ≣": "p^¬q",
        "¬(∃x.f(x)) ≣": "∀x.¬f(x)",
        "¬(∀x.f(x))": "∃x.¬f(x)",
        "convert p -> q to use 'unless'": "q unless ¬p",
        "Scope of a quantifer": "The part of the logical expression to which a quantifier applies.",
        "When can we safely interchange adjacent quantifiers?": "When they are both the same variety: both existential or both univeral.",
        "Modus tollens (logic rule)": """
        p -> q
        ¬q
        _____
        ¬p
        (contrapositive reasoning)
        """,
        "Modus ponens ": """
        p -> q
        p
        _____
        q
        (direct reasoning)
        """,
        "Disjunctive syllogism": """
        p v q
        ¬p
        _____
        q
        """,
        "Hypothetical syllogism (logic rule)": """
        p -> q
        q -> r
        _____
        p -> r
        
        """,
        "Universal instantiation":"""
        """,
        
        "Simplification (logical inference)": """
        q ^ r
        _____
        q
        """,
        "Addition (logical inference)": """
        q
        _____
        q v r
        """,
        "Direct proof": """
        p -> q
        p
        _____
        q
        """,
        "Proof by contrapositive": """
        
        """,
        "Proof by contradiction": """
        p -> q
        ¬q
        ¬q -> p ^ ¬p.
        """,
        "|A ∪ B | = ": "|A| + |B| - |A ∩ B|",
        "Is zero an integer?": "Yes.",
        "When is a syllogism valid in a truth table": "If the premises are all true, the conclusion is also true.",
        "closed interval":"[x, y]",
        "open interval":"(x, y)",
        "What is the empty set?": "A special set that has no elements.  It is a subset of every other set.",
        "Subset": "A is a subset of B if every element of A is also an element in B.",
        "Proper subset": "When we wish to emphasize that A is a subset of B but that A ≠ B, we write the 'C looking shape' without a line.  That is, A is a subset of B, but there is an element in B that is not in A.",
        "(1) A nonempty set is guaranteed how many subsets? (2) what are they? ":"2.  The empty set and itself.",
        "How to show that 2 sets are equal?":"A is a subset of B AND B is a subset of A. ",
        "Power set": "All the subsets of a set S.  The power set is denoted by P(s).",
        "How many elements does the power set of a set with n elements have?": "2^n",
        "Union:": "A set operation that contains those elements that are either in A OR in B, or in both.",
        "Intersection:": "A set operation that denotes the set containing those elements in A AND B.",
        "Disjoint" : "Two sets are disjoint if their intersection is the empty set.",
        "Difference" : "The difference of A and B is is the set containing those elements that are in A but NOT in B.  AKA the complement of B with respect to A.",
        "Universal set:": "The set of all objects.  The complement of the universal set is the empty set.",
        "Cartesian product:": "The set of all ordered pairs (a,b) where a is a member of A and b is member of B.",
        "Ordered n-tuples": "Ordered collection that has a1 as its first element, a2 as its second...an as its nth.",
        "Ordered pairs": "AKA ordered 2-tuples",
        "When are ordered pairs equal": "IFF each corresponding pair of their elements is equal.",
        "Binary Relation": "A subset R of the cartesian products of A x B is called a relation from the set A to the set B.",
        "Truth set": "Given a predicate P and a domain D, The truth set of P is the set of elements x in D for which P(x) is true.  ",
        "Cardinality": "Let S be a set.  If there are exactly n distinct elements in S where n is a non-negative integer, then n is the cardinality of S.",
        "Good method for proving A is a subset of B.": "To prove A is a subset of B. Pick an arbitrary element in A and show it’s in B.",
        "Proving 1-1":"""
        Set f(x) to f(y) and show that x = y.
        """,
        "Proving onto": """
        Solve for the argument to the function.
        f(n) = n-1
        y = n-1
        n = y+1
        """,
        "Even number":"An even number is an integer of the form 2 * k where k is an integer.",
        "Nancy can fool exactly two people":"∃y∃z(F(Nancy,y)∧F(Nancy,z)∧(y≠z)∧∀x(F(Nancy,x)->(x=y)∨(x=z)))",
        "There is exactly one person whom everybody loves": "∃y∀x.L(x,y)  ^ ∀z.∀w.(L(w,z))→ z=y) ",
        "Proving bijection":"""
        Try solving for an inverse function.
        The inverse means solving for x, or the variable in the expression set equal to y.
        """,
        "Function":"A function f from A to B is an assignment of exactly one element of B to each element of A.  We write f(a) = b if b is the unique element of B assigned by the function f to the element a of A.  ",
        "Domain":"A is the domain of f if f is a function from A to B.",
        "Co-Domain":"B is the co-domain of f, if f is a function from A to B.",
        "Image and Pre-image":" b is the image of a when f(a)=b.  a is the pre-image.",
        "Range": "The set of all images of elements of A.",
        "One-to-one": "A function is one-to-one IFF f(a) = f(b) then a=b for all a and b in the domain of f.",
        "Injective": "A one-to-one function.",
        "Invertible ": "A 1-1 correspondence is invertible if we can define an inverse of this function.",
        "Inverse (function)":"The function that reverses the correspondence given f (when f is a bijection)",
        "Onto":"""
        (a) Every element in B is an image of some element in A; or
        (b) For each b that is an element of B, there exists an a such that f(a)=b
        """,
        "Surjective":"An onto function",
        "Bijection or one-to-one correspondence":"A function that is both one-to-one and unto.",
        "Well defined ": "An expression is well-defined if its definition assigns it a unique interpretation or value.",
        "|A x B| = ": "|A| * |B|"
    ]
    
    private var primesAndGCD = [
        
        "Quotient": "The ratio q, where q = r/s where s≠0.",
        "Remainder": "The number left over when one integer divides another.",
        "Dividend": "A quanity that is divided by another quantity",
        "Divisor/factor": "A number that divides another number.  If a divides b, we say that a is a factor of b and that b is a multiple of a.",
        "Divides": "a divides b if there is an integer c such that b = ac. Or, equivalently, if the quotient of a/b is an integer. Notation: a | b",
        "Factor": """
        A portion of a quantity.
        Typically, an integer or a polynomial multiplied with other factors to give the entire quantity.
        """,
        "Prime number":" An integer p greater than 1 whose only positive factors of p are 1 and p.",
        "Composite number":
        """
        A positive integer that is greater than 1 and is not prime.
        In other words, an integer n is composite if there exists an integer a such that a | b and 1 < a < n
        """,
        "The integer 1": "is neither prime nor composite",
        "The Fundamental Theorem of Arithmetic": """
        Every integer greater than 1 can be written uniquely as a prime or as the product of two or
        more primes where the prime factors are written in order of nondecreasing size.
        For example, 100 = 2 * 2 * 5 * 5 = 2^2 * 5^2
        """,
        "":"",
        "Relatively prime": "Two integers are relatively prime when their GCD is 1",
        "Pairwise relatively prime": "When a sequence of integers are relatively prime to all other integers in the sequence",
        "Least common multiple": "The smallest positive integer that is divisible by a and b.",
        "Theorem 1, 4.1":"",
        "Theorem 2, 4.3 (primes)": "If n is a composite integer, then n has a prime divisor less than or equal to √n",
        "Great common divisor": """
        The largest integer that divides both of two integers.
        Formally: Let a and b be integers.  d such that d | a and d | b
        """,
        "Euclidean algorithm for finding gcd":"""
        Given a and b.
        a mod b = r
        b = a and a = r
        a mod b = r
        Repeat until b = 0.
        The last non-zero remainder is the gcd.
        """,
        "Fermat's little theorem ":"",

    ]
}
