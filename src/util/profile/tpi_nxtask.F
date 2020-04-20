      integer function tpinxt(nproc, ichunk)
      integer nproc, ichunk, output
      call tpi_start_timer(14)
      tpinxt = nxtask(nproc, ichunk)
      call tpi_stop_timer(14)
      return 
      end

      integer function tpisynxt(nproc, ichunk)
      integer nproc, ichunk, output
      call tpi_start_timer(19)
      tpisynxt = nxtask(nproc, ichunk)
      call tpi_stop_timer(19)
      return
      end
