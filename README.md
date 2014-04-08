#PRISM Simulation

###ALU Analysis
#####Initial test: 
During my first test of my ALU design, I noticed that the results were not matching what I had anticipated. For operations like NEG and NOT, my _Result_ output was basing itself on the current value of _Data_ and not on the value of _Acculumator_. I referenced the PRISM manual word document to verify what each operation is supposed to do - a silly thing to do after the fact, I realize that now, - and found that the problem was that I had simply misunderstood that these operations were supposed to be performed on _Acculumator_ and not on _Data_. It was easy to make the few changes in my ALU_shell file, re-check my syntax, and re-launch the Simulate Behavior Model function. 


Once I was sure NEG and NOT were correct, I proceeded to check each operation by first going through each one on paper by hand, and then verifying the answer I got on the paper with the one generated by the simulation. For example, for the ROR operation, I looked at the OpSel input and made sure that it matched with what ROR is supposed to be (3 in this case, or 011 in binary). I then looked at the description in the PRISM manual to ensure I was doing the operation to the specification laid out in it. Then, I looked at the current value of _Acculumator_ and rotated the bits 1 spot to the right, and then looked at the value of _Result_ to verify that it matched the value I had on paper. I did the same for however many different inputs there were, and proceeded to do the same for each operation - verifying the _OpSel_ input with the correct operation, doing the operation on paper with the values of _Data_ and/or _Accumulator_, and verifying my on-paper answer with the value of _Result_ from the simulation. 


Once I had gone through this process for each operation, and verified that every one worked properly, I took a screenshot of my simulation results, which can be found below. 

![waveform](https://github.com/JasonPluger/PRISM/blob/master/ALU_testbench_waveform.JPG "ALU simulation waveform")

Documentation: 7Apr14: EI with Dr. Neebel; we discussed whether I had to create separate entities for some operations, and he told me it was acceptable to do so, but not necessary. We also discussed the various ways of implementing the architechture of the ALU_shell file - in particular using a process statement with either case-statements or if/elsif statements. Is the process statement required when using the if/elsif? 
