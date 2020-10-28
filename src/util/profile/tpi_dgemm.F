      subroutine tpi_dgemm(transa,transb,m,n,k,alpha,a,lda,b,ldb,beta,
     &                     c,ldc)
      double precision alpha,beta
      integer k,lda,ldb,ldc,m,n
      character transa,transb
      double precision a(lda,*),b(ldb,*),c(ldc,*)
      call tpi_start_timer(10)
      call dgemm(transa,transb,m,n,k,alpha,a,lda,b,ldb,beta,c,ldc)
      call tpi_stop_timer(10)
      return
      end