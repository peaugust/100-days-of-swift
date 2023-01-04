import UIKit

var pi = 3.141
type(of: pi)
pi = 1
type(of: pi)

// The line below throws an error, because isn't possible to assign an Int value to a Double variable
//pi = Int(1)

var piTwo = Float(3.141)
type(of: piTwo)

var booleanVar = true
type(of: booleanVar)

!booleanVar
!(!booleanVar)
!booleanVar || booleanVar
!booleanVar || !booleanVar

booleanVar = false

!booleanVar
!(!booleanVar)
!booleanVar || booleanVar
!booleanVar || !booleanVar
