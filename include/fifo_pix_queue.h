//
// Created by josetobias on 5/12/19.
//

#ifndef PARALLEL_COUNTING_STARS_FIFO_PIX_QUEUE_H
#define PARALLEL_COUNTING_STARS_FIFO_PIX_QUEUE_H

#include "imagelib.h"

typedef struct q_comp_ {
    struct pix_ *c;
    struct q_comp_ *last;
} q_comp;

typedef struct fifo_queue_ {
    int size;
    q_comp *head;
} fifo_queue;

void enqueue(fifo_queue **q, struct pix_ *c);

struct pix_ *
dequeue(fifo_queue **q);

#endif //PARALLEL_COUNTING_STARS_FIFO_PIX_QUEUE_H
