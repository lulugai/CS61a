""" Lab 13: Final Review """

# Q3
def permutations(lst):
    """Generates all permutations of sequence LST. Each permutation is a
    list of the elements in LST in a different order.

    The order of the permutations does not matter.

    >>> sorted(permutations([1, 2, 3]))
    [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
    >>> type(permutations([1, 2, 3]))
    <class 'generator'>
    >>> sorted(permutations((10, 20, 30)))
    [[10, 20, 30], [10, 30, 20], [20, 10, 30], [20, 30, 10], [30, 10, 20], [30, 20, 10]]
    >>> sorted(permutations("ab"))
    [['a', 'b'], ['b', 'a']]
    """
    if not lst:
        yield []
        return
    "*** YOUR CODE HERE ***"
    ret = []
    def recursive(cur_lst, r_lst):
        nonlocal ret
        if r_lst == []:
            ret.append(cur_lst.copy())
            return 
        for i in range(len(r_lst)):
            cur_lst.append(r_lst[i])
            a = r_lst.pop(i)
            recursive(cur_lst, r_lst)
            cur_lst.pop()
            r_lst.insert(i, a)
    
    lst = list(lst)
    recursive([], lst)
    for v in ret:
        yield v