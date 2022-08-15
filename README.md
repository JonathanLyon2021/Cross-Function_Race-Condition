# Cross-Function_Race-Condition
This is an optional exercise from the documentation of Kingsland University's Blockchain Developer program. 
This is how a cross-function race condition works:
The attacker calls transfer() when their code is executed on the external call in withdrawBalance.
Since their balance has not yet been set to 0, they are able to transfer the tokens even though they already received the withdrawal.
Another example:
This occurs when two functions are called and share the same state. 
The contract is tricked into thinking that two contract states exist, when in reality there is only one true contract state that can exists.
