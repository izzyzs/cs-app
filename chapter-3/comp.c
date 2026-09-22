#define COMP <
typedef int data_t;

int comp(data_t a, data_t b) {
	return a COMP b;
}

int branch(data_t c) {
    data_t val;
    if (c) {
        val = comp(c, 0);
    } else {
        val = comp(c, 4);
    }
    return val;
}

