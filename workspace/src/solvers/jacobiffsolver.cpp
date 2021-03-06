#include "jacobiffsolver.h"

JacobiFFSolver::JacobiFFSolver(const float** A, const float* b, int N, int nWorkers, int grain) : JacobiSolver(A, b, N), mnWorkers(nWorkers), mGrain(grain)
{
    pf = new ff::ParallelFor(mnWorkers, true, true);
}

void JacobiFFSolver::deltax(const float* x, float *dest)
{
    pf->parallel_for(0, mN, 1, mGrain, [&](const long i)
    {
        float s = 0.f;
        for (int j=0; j < i; j++)
            s+= mA[i][j]*x[j];

        for (int j=i+1; j < mN; j++)
            s+= mA[i][j]*x[j];
        dest[i] = (mb[i] - s)/mA[i][i];
    }, mnWorkers);
}