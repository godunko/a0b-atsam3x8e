#!/bin/sh

svd2ada ATSAM3X8E.svd \
  --output ../source/svd \
  --package A0B.ATSAM3X8E.SVD \
  --base-types-package A0B.Types.SVD \
  --boolean \
  --no-elaboration-code-all \
  --no-vfa-on-types
