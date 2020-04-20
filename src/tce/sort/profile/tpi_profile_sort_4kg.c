
void tpi_sort_4kg__(double *A, double *B, int *rowIdx, int *colIdx,
                    int *thirdIdx, int *fourthIdx, int *perm1, int *perm2,
                    int *perm3, int *perm4, double *factor)
{
    int id = 20;
    tpi_start_timer_(&id);
    tce_sort_4kg__(A, B, rowIdx, colIdx, thirdIdx, fourthIdx, perm1, perm2, perm3, perm4, factor);
    tpi_stop_timer_(&id);
}
