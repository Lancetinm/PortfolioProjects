BRANCH to EMPLOYEE:

A BRANCH Employes 1-or-many EMPLOYEE(S).
An EMPLOYEE is Employed_By 1-or-many BRANCHE(S) (an EMPLOYEE may flexibly work at multiple BRANCH locations).

BRANCH to PRODUCT:

A BRANCH Sells 1-or-many PRODUCT(S).

A PRODUCT is Sold_By 1-and-only-1 BRANCH location.

CUSTOMER to PURCHASE_ORDER:

A CUSTOMER Places 0-or-many PURCHASE_ORDER(S).

A PURCHASE_ORDER is Placed_By 1-and-only-1 CUSTOMER.

ORDER_DETAIL to PRODUCT:

An ORDER_DETAIL Contains 1-or-many PRODUCT(S).

A PRODUCT is Contained_By 0-or-many ORDER_DETAIL(S).

PURCHASE_ORDER to ORDER_DETAIL:

An ORDER_DETAIL is Related_To 1-and-only-1 PURCHASE_ORDER.

A PURCHASE_ORDER Related_To 1-and-only-1 ORDER_DETAIL.

PROMOTION to PRODUCT:

A PROMOTION Modifies 1-or-many PRODUCT(S).

A PRODUCT is Modified_By 0-or-many PROMOTION(S).

INVENTORY to PRODUCT:

A count of INVENTORY Tracks 1-or-many PRODUCT(S).

A PRODUCT is Tracked_By 0-or-many counts of INVENTORY.
