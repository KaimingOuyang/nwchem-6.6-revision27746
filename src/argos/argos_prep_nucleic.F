      logical function argos_prep_nucleic(sgmnam)
c
c $Id: argos_prep_nucleic.F 19708 2010-10-29 18:04:21Z d3y133 $
c
      implicit none
c
#include "argos_prep_common.fh"
c
      character*5 sgmnam
c
      argos_prep_nucleic=.true.
c
      if(sgmnam(1:3).eq.'A  '.or.sgmnam(1:3).eq.'+A '.or.
     + sgmnam(1:3).eq.'C  '.or.sgmnam(1:3).eq.'+C '.or.
     + sgmnam(1:3).eq.'G  '.or.sgmnam(1:3).eq.'+G '.or.
     + sgmnam(1:3).eq.'I  '.or.sgmnam(1:3).eq.'+I '.or.
     + sgmnam(1:3).eq.'T  '.or.sgmnam(1:3).eq.'+T '.or.
     + sgmnam(1:3).eq.'U  '.or.sgmnam(1:3).eq.'+U ') return
      if(ffield(1:5).eq.'amber') then
      if(sgmnam(1:3).eq.'DA '.or.sgmnam(1:3).eq.'RA '.or.
     + sgmnam(1:3).eq.'DC '.or.sgmnam(1:3).eq.'RC '.or.
     + sgmnam(1:3).eq.'DG '.or.sgmnam(1:3).eq.'RG '.or.
     + sgmnam(1:3).eq.'DT '.or.sgmnam(1:3).eq.'RU ') return
      endif
      if(ffield(1:6).eq.'charmm') then
      endif
c
      argos_prep_nucleic=.false.
      return
      end
