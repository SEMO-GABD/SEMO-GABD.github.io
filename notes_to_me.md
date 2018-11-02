Chapter 5 requires the use of modular arithmetic, including converting time. Might be a good idea to cover this early in the general use of R. See for example, the section of [5.5.2.1](https://jrnold.github.io/r4ds-exercise-solutions/data-transformation.html#exercise-5.5.2.1) of the selections book. They use `%% 1440` to convert 2400 (midnight) to 0 but leave all others as they are. One way to demonstrate is

`x <- 1420:1440
x %% 1440

 [1] 1420 1421 1422 1423 1424 1425 1426 1427 1428 1429 1430 1431 1432 1433
[15] 1434 1435 1436 1437 1438 1439    0



## Do chapter five through section 4 on one day. Do rest of chapter on next day.

**5.3.1.2: Sort flights to find the most delayed flights. Find the flights that left earliest.**

The second part of this question is asking about flights with the least delay. That is, they left ahead of schedule.

**5.3.1.3: Sort flights to find the fastest flights.**

Fastest could mean air_time but could also mean air speed. Challenge students to sort it by both. Remind them that speed is distance divided by time and that air_time in minutes needs to be converted to hours. How much info to give? The formula is either `distance / air_time * 60` for proper order of operations (left to right) or `distance / (air_time / 60)` to first convert time from minutes to hours, then divide into distance.

**5.5.2.1: Pay attention to the section on modular arithmetic.**




