Welcome to Graphical Analysis of Data Analysis.

### Who am I?

![](../img/mike_taylor.jpg)

Dr. Mike Taylor   
Department of Biology   
Southeast Missouri State University

**My educational background:**

- B.S. in Biology (Chemistry minor) from [Central Missouri State University.](https://www.ucmo.edu/index.php)
- Ph.D. in Zoology from [Louisiana State University](https://www.lsu.edu/science/biosci/) in the lab of [Dr. Mike Hellberg.](https://sites01.lsu.edu/faculty/mhellbe/)
- Postdoctral Researcher at the [University of Notre Dame](https://science.nd.edu/departments/biological-sciences/) in the lab of [Dr. Jeff Feder.](https://federlab.nd.edu)

**My computer background:**

My first computer was a [Macintosh SE](https://en.wikipedia.org/wiki/Macintosh_SE) with 4 (!) megabytes (MB) of RAM and a 20 MB hard drive and two [3.5" floppy](https://en.wikipedia.org/wiki/Floppy_disk#/media/File:Floppy_disk_2009_G1.jpg) disk drives (they weren't actually "floppy"). Compare that your laptop or desktop computer. Back then, I ran a [bulletin board system](https://en.wikipedia.org/wiki/Bulletin_board_system) on that computer with a [U.S. Robotics Courier 14.4K Dual Standard  modem.](https://commons.wikimedia.org/wiki/File:Modem_US_Robotics_Courier_Dual_Standard.jpg) In comparison, typical broadband wireless is at least 17X faster. Back then, my system was the [shiznit.](https://www.urbandictionary.com/define.php?term=shiznit)

I have formal training in the [Pascal](https://en.wikipedia.org/wiki/Pascal_(programming_language)) and [C](https://en.wikipedia.org/wiki/C_(programming_language) programming languages, both of which are at least somewhat obsolete now. I am self-taught in R and in [Python.](https://www.python.org) If you find yourself wanting to learn another language after R, learn Python.


### Who are you?

You will tell me and the rest of the class a little bit about yourself in the first homework assignment.

### Philosophy (move to separate / different place?

I expect that you will be curious. The notes for this course will be brief but they will have links scattered throughout. Follow the links and read the material. Do not follow the [tl;dr](https://www.urbandictionary.com/define.php?term=tl%3Bdr) way of thinking. Others have written tutorials, exercises, and other helpful information far better than I could write. Become a better you and take advantage of these resources. If you do not, you will not be successful in this course.

*Follow the links!* Read. Learn. Practice!

Data analysis requires coding. To learn proper coding, you will have to type R code. *Lots* of R code. Do not give in to the temptation to copy and paste from examples. You will not learn the R language well that way. Typing the code yourself will "drill" the language into your muscle memory and your brain memory. You will learn it better. You will retain it longer. You will have a better chance of getting a job. Just type it!

### Reproducibility: can other scientists reproduce your results?

A central tenet of science is reproducibility. Yet, often it is not. Read this [introduction to reproducible science](http://ropensci.github.io/reproducibility-guide/sections/introduction/) from [rOpenSci.](https://ropensci.org) Follow the other links at your leisure. The tools you will use during this course emphasize the principle of open science. I feel strongly that you should adopt this philosophy in your scientific endeavors.

### Text files: why use them?

Use plain text files for all of your documents. Plain text files are small. Plain text files are portable. Text files can be opened and read on any computer plaform (e.g., OS X, PC, Linux), unlike (for example) Word documents, which use a [proprietary format,](http://opendatahandbook.org/glossary/en/terms/proprietary/), subject to change at any time. Text files are the common currency of reproducibility and open science.

RStudio, which you will use throughout this course, has a built-in text editor, and it will suffice for this course. In the future, or even during this course, you may also want to install a stand alone text editor. Browse this list of [free text editors](https://www.keycdn.com/blog/best-text-editors) to find one that works on your computer platform and suits your needs. Atom works on all platforms and has a good reputation. I've been using it to write this assignment. Nice features are that you can live preview your markdown documents and it can interact directly with Git and GitHub (more on both of these later).

I have used [BBEdit](https://www.barebones.com/products/bbedit/) for OS X since version 4 (now at version 12+) as a good general purpose text editor. You can use the full feature set free for 30 days. After that time, you can still use most of its important functions for free.

For PC, [Notepad++](https://notepad-plus-plus.org) has a [good reputation](https://www.lifewire.com/best-free-text-editors-4155819) but you may want to try a few to find a text editor that suits your style and needs.

**Do not use Microsoft Word to export plain text files.** They are not truly plain text. Cut your umbilical cord. Leave Microsoft for the business world and the less enlightened SEMO community.

### Git and GitHub

During this course, you will write some code. Your code may even work. You may think you can do better. You pursue a thread of an idea, and edit your code. You follow that thread down the rabbit hole, and write even more code. You test your code and realize it does not do what you wanted. The Mad Hatter laughs at you. You try to back out of the rabbit hole but you are lost. You have a jumble of non-working code that even a hookah-smoking caterpillar cannot understand.

You can avoid [falling through the looking glass](https://en.wikipedia.org/wiki/Alice%27s_Adventures_in_Wonderland) by using Git. Git is a [version control system](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control) (VCS) that tracks the changes you make to files through time. You can go back in time to any previous version. You can branch into a copy of a working program to try a new idea. Does your new code work? Awesome, merge it into to the main file. Disaster? No problem, because the original is intact. You laugh at the Mad Hatter and seek further adventures with the White Rabbit.

You may have used some form of version control when writing a report. You start the report, then you make a copy, add a date or version number, edit the copy, then make another copy with a new date or version number. You may have multiple copies spread across flash drives or even emailed to yourself.  Git makes that process much more efficient, in terms of time and storage.

[GitHub](https://github.com/) is a hosting service where you can store and access all of the projects that you maintain by Git version control. I use Git and Github to maintain all of [my course materials](https://github.com/mtaylor-semo) and other bits of code that I write. I am using GitHub tools and web services to manage this course. We will touch on the basics of version control for this course but we will not go very far down the rabbit ho;e.

Git and GitHub have a bit of a learning curve so we'll focus on it first. You will get soon get familiar with the basics of Git. Also, RStudio integrates well with Git and GitHub, which makes version control of your R projects very easy.

[Why Git?](https://peerj.com/preprints/3159/) by Jennifer Bryan.

### Goals for this assignment

By the end of today's class, students are expected to be able to:

- Understand what is expected of them in the course
- List four ways to get help/converse about the course
- Navigate the STAT 545 GitHub framework, and their own profile
- Create and comment on GitHub Issues
- Explain how the course mantras apply in the case of this webpage
- Navigate the files of your computer using the command line

# GitHub as a file-sharing and storage solution

Checklist:

- What are: Repositories (aka. "repo"s)
- Why: README's
- What are: Issues
- What are: Organizations
- What are: Teams
- What is: GitHub pages

Next time: GitHub as a version-control system.

# Course Destinations: revisited

Checklist:

- Org/repo/website diagram of STAT 545 destinations.
- Let's spend time on:
    - Discussion repositories.
    - Students Org

# Course Mantras

Here are some philosophies that will get you far in data analytic work. We will be revisiting these over and over again.

- Embrace plain text (as opposed to rich text) when authoring. (What is plain text?)
- Think in terms of source and output, and remember that source is real.
- Your stuff should be reproducible. Document, test, and leave a breadcrumb trail (version control), even when you are the only collaborator.

__Example__: markdown -> HTML. This webpage was generated from [this markdown source file](https://raw.githubusercontent.com/STAT545-UBC/Classroom/master/notes/cm001.Rmd) on GitHub.

# The Shell

We will avoid this when we can, but we'll at least need it to install _git_ later. Here is the minimum need-to-know about the __shell__:

- Way to control your computer.
- OS-specific language!
    - Mac/linux/unix are about the same.
    - Windows has its own
- Navigate with `cd`, `pwd`, and `ls`. `.` and `..`.

A great introduction to this stuff is in [happygitwithr: Appendix A](http://happygitwithr.com/shell.html).

# Activities

## GitHub activity

[5 minute timer](https://www.youtube.com/watch?v=MxQWLbdGLfE).

1. Register for a GitHub.com account. Don't pay!
    - Want detailed instructions? See  [happygitwithr: Section 5](http://happygitwithr.com/github-acct.html)
2. Navigate to the [Discussion-Internal](https://github.com/STAT545-UBC/Discussion-Internal) repository.
3. Click `Watch` on the upper-right corner of the repo, so that you get email notifications.
4. Go to the Issues section of the repository, and comment on the Issue I created called "Introduce yourself!". In the comment, say who you are, and greet the person above you -- be sure to tag them by their username!
    - NOTE: The `Discussion-Internal` repo will be made private soon (you'll have access).
5. Complete [this survey](https://goo.gl/forms/UPvRA6a9WRod8JPb2).
6. Please put up a profile photo -- it makes the STAT 545 community more personable. You can do this from your profile homepage.
7. OPTIONAL: Register for the [Student Developer Pack](https://education.github.com/pack) with GitHub. It's free!

## Install your stuff

1. Install R and RStudio.
    - R here: <https://cloud.r-project.org>
    - RStudio here: <https://www.rstudio.com/products/rstudio/download/preview/>
    - Commentary on installing this stuff can be found at [stat545.com: r-rstudio-install](http://stat545.com/block000_r-rstudio-install.html)
2. Install git. See [happygitwithr: Section 7](http://happygitwithr.com/install-git.html)
    - You'll need to work with the command line.

# To do

If you haven't already, please do the following before next class:

- Complete activities under "Activities" section.
- Please fill out [this survey](https://goo.gl/forms/UPvRA6a9WRod8JPb2), so that I can give you a repo under the students Org.
