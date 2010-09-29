cdef extern from "<list>" namespace "std":
    cdef cppclass list[T]:
        cppclass iterator:
            T& operator*()
            iterator operator++()
            iterator operator--()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            T& operator*()
            iterator operator++()
            iterator operator--()
            bint operator==(iterator)
            bint operator!=(iterator)
        #cppclass const_iterator(iterator):
        #    pass
        #cppclass const_reverse_iterator(reverse_iterator):
        #    pass
        list()
        list(list&)
        list(size_t, T&)
        #list operator=(list&)
        bint operator==(list&, list&)
        bint operator!=(list&, list&)
        bint operator<(list&, list&)
        bint operator>(list&, list&)
        bint operator<=(list&, list&)
        bint operator>=(list&, list&)
        void assign(size_t, T&)
        T& back()
        iterator begin()
        #const_iterator begin()
        bint empty()
        iterator end()
        #const_iterator end()
        iterator erase(iterator)
        iterator erase(iterator, iterator)
        T& front()
        iterator insert(iterator, T&)
        void insert(iterator, size_t, T&)
        size_t max_size()
        void merge(list&)
        #void merge(list&, BinPred)
        void pop_back()
        void pop_front()
        void push_back(T&)
        void push_front(T&)
        reverse_iterator rbegin()
        #const_reverse_iterator rbegin()
        void remove(T&)
        #void remove_if(UnPred)
        reverse_iterator rend()
        #const_reverse_iterator rend()
        void resize(size_t, T&)
        void reverse()
        size_t size()
        void sort()
        #void sort(BinPred)
        void splice(iterator, list&)
        void splice(iterator, list&, iterator)
        void splice(iterator, list&, iterator, iterator)
        void swap(list&)
        void unique()
        #void unique(BinPred)
