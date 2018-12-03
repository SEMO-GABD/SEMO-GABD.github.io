Assignment Schedule
================

Here is the schedule of assignments, with links to appear after
assignments are released. Your completed assignments are due by 23:59 of
the scheduled due date.

**Warning:** I am still changing this
schedule\!

| Reading                                                                                                    | Assignment                                                           | Due (23:59) | Resources                                                                                                                                                                                                          |
| :--------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------- | :---------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [01 Install software;<br/> GitHub; Markdown](notes/cm002.nb.html)                                          | [HTML](assignments/hw01/hw01.html)  [PDF](assignments/hw01/hw01.pdf) | 19 Dec (W)  | Tutorials for [markdown](https://commonmark.org/help/tutorial/) and [GitHub](https://guides.github.com/activities/hello-world/).                                                                                   |
| [02 Get familiar with R](notes/cm003.nb.html)                                                              | [HTML](assignments/hw02/hw02.html)  [PDF](assignments/hw01/hw01.pdf) | 21 Dec (F)  | [DataCamp](https://www.datacamp.com)<br/> R: [R4ds Chapter 4](https://r4ds.had.co.nz/workflow-basics.html); <br/> [adv-r: data structures](http://adv-r.had.co.nz/Data-structures.html) for a more advanced intro. |
| 03                                                                                                         |                                                                      | 24 Dec (M)  | Rmd: [stat545: Rmd test drive](http://stat545.com/block007_first-use-rmarkdown.html).                                                                                                                              |
| [04 The git workflow; collab with GitHub](notes/cm004.nb.html)                                             |                                                                      | 26 Dec (W)  |                                                                                                                                                                                                                    |
| [05 working with data in R; `dplyr` and the `tidyverse`](notes/cm005.nb.html)                              |                                                                      | 28 Dec (F)  |                                                                                                                                                                                                                    |
| [06 ggplot2, Part I](notes/cm006.nb.html)                                                                  |                                                                      | 31 Dec (M)  |                                                                                                                                                                                                                    |
| [07 ggplot2, Part II](notes/cm007.nb.html)                                                                 |                                                                      | 02 Jan (W)  |                                                                                                                                                                                                                    |
| [08 Grouping of tibbles](notes/cm008.nb.html)                                                              |                                                                      | 04 Jan (F)  |                                                                                                                                                                                                                    |
| [09 Tidy data, reshaping](notes/cm009.nb.html)                                                             |                                                                      | 07 Jan (M)  |                                                                                                                                                                                                                    |
| [10 Table joins?](notes/cm010.nb.html); [Advanced R programming; file I/O](notes/cm011.nb.html)            |                                                                      | 09 Jan (W)  |                                                                                                                                                                                                                    |
| [11 The joy of Factors](notes/cm012.nb.html)                                                               |                                                                      | 11 Jan (F)  |                                                                                                                                                                                                                    |
| [12 Revisit ggplot; plotly; practicalities of daily figure-making](notes/cm013.nb.html)                    |                                                                      | Date        |                                                                                                                                                                                                                    |
| [14 The model-fitting paradigm in R; `broom`; deep thoughts about data analytic work](notes/cm014.nb.html) |                                                                      | Date        |                                                                                                                                                                                                                    |
| Maps?                                                                                                      |                                                                      |             | Date                                                                                                                                                                                                               |

## Logistics

Here is the general flow that will happen for the assignments.

1.  When a assignments are released, I will post a GitHub Issue in the
    [Internal
    Discussion](https://github.com/semo-gabd/internal_discussion) repo,
    tagging the students (you should get an email notification, too,
    unless you’ve somehow disabled this, are not `Watch`ing the Internal
    Discussion repo, or did not inform me of your GitHub username).
2.  Create a new homework folder called `hw##` inside the folder on your
    computer that you created for this class. Replace the `##` with the
    assignment number, e.g., `hw01`, `hw02`, etc. **Use a separate
    folder for each assignment.** By the end of the course, you should
    have folders labeled `hw01` through `hw11`.
3.  Download any `.Rmd` or other files associated with the assignment
    and place them in your new homework folder.
4.  Complete the assignment. Push your edits to your GitHub repository
    often while you work.
5.  After you have pushed the final version you want graded, go to the
    [GABD Students](https://github.com/gabd-students) GitHub page and
    open an issue in *your* repository. Add the `@instructor` tag and
    the Git SHA number for the version you want graded.
6.  I will grade the version of your completed assignment that matches
    the SHA. I will add any comments about your assignment as an issue
    in your GitHub repository, and post the grade in Moodle.

## Evaluation

Components of each assignment will be graded on a 3-point scale. Here is
the general rubric *(also consult any specific guidance given in the
relevant assignment itself).*

A few assignments (exact number still to be determined) will have extra
work for graduate and honors contract students that *must* be completed.
Other students may attempt the extra work but I will not include your
attempt in your
grade.

| Topic                                                                                | Excellent: 3                                                                                                                                                                                                                               | Satisfactory: 2                                                                                                                                                      | Needs work: 1                                                                                                                            |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Coding style                                                                         | Student has gone beyond what was expected and required, [coding manual](https://style.tidyverse.org) is followed, code is well commented                                                                                                   | Coding style lacks refinement and has some errors, but code is readable and has some comments                                                                        | Many errors in coding style, little attention paid to making the code human readable                                                     |
| Coding strategy                                                                      | Complicated problem broken down into sub-problems that are individually much simpler. Code is efficient, correct, and minimal. Code uses appropriate data structure (list, data frame, vector/matrix/array). Code checks for common errors | Code is correct, but could be edited down to leaner code. Some “hacking” instead of using suitable data structure. Some checks for errors.                           | Code tackles complicated problem in one big chunk. Code is repetitive and could easily be functionalized. No anticipation of errors.     |
| Presentation: graphs                                                                 | Graph(s) carefully tuned for desired purpose. One graph illustrates one point                                                                                                                                                              | Graph(s) well chosen, but with a few minor problems: inappropriate aspect ratios, poor labels.                                                                       | Graph(s) poorly chosen to support questions.                                                                                             |
| Presentation: tables                                                                 | Table(s) carefully constructed to make it easy to perform important comparisons. Careful styling highlights important features.                                                                                                            | Table(s) generally appropriate but possibly some minor formatting deficiencies.                                                                                      | Table(s) with too many, or inconsistent, decimal places. Table(s) not appropriate for questions and findings. Major display problems.    |
| Achievement, mastery, cleverness, creativity                                         | Student has gone beyond what was expected and required, e.g., extraordinary effort, additional tools not addressed by this course, unusually sophisticated application of tools from course.                                               | Tools and techniques from the course are applied very competently and, perhaps,somewhat creatively. Chosen task was acceptable, but fairly conservative in ambition. | Student does not display the expected level of mastery of the tools and techniques in this course. Chosen task was too limited in scope. |
| Ease of access for instructor, compliance with course conventions for submitted work | Access as easy as possible, code runs\!                                                                                                                                                                                                    | Satisfactory                                                                                                                                                         | Not an earnest effort to reduce friction and comply with conventions and/or code does not run                                            |

**Warning:** I will run your code on the original data. You may be
tempted to modify the data file in Excel or other editor to “ease”
importing and wrangling. That defeats the purpose of this course and a
strength of R. If your code does not work on the original data, then I
will consider your code as non-working.

## Grades

Grades are mapped as follows:

| Grade | Percentage |
| ----: | ---------: |
|   3.0 |       100% |
|   2.5 |        90% |
|   2.0 |        80% |
|   1.5 |        70% |
|   1.0 |        60% |
|   0.0 |         0% |

Intermediate points are allowed, and follow a linear scale in between
each point, so that the full mapping is depicted in the following
chart:

<img src="README_files/figure-gfm/unnamed-chunk-1-1.png" style="display: block; margin: auto;" />

Undergraduates must have an average grade of 60% or better to pass this
course. Graduate students must have an average grade of 70% or better to
pass.
