How does tracking and adding changes make developers' lives easier?
- It makes things a lot easier because when something goes wrong you can much more easily find the problem by looking through previous versions and the commit history. Even if the code is working and you just want to add or remove something, it is easy to find it when changes have been tracked.
What is a commit?
- A commit is a save point. There is info about why certain changes were made and what changes were made in the commit message. You can view a timeline of a project's commit history and restore a given state of the code based on those commits.
What are the best practices for commit messages?
- Best practices are to use the present tense in commit messages. This makes it clear what happened with a particular commit. It is also good practice to keep things concise and clear.
What does the HEAD^ argument mean?
- HEAD^ argument removes a change from the added stage. To be committed, you would have to add the change again and then commit.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
- 3 stages: modified, staged, committed. First you modify files while in your working directory. Then you stage the changes using "git add". Finally, you commit the changes safely by using "git commit."
Write a handy cheatsheet of the commands you need to commit your changes?
- "git add ." "git commit -m 'Message here'"
What is a pull request and how do you create and merge one?
- A pull request is sent when you have made modifications you think are worthwhile. When a pull request is made, other people can view your changes and determine if it should be merged. After you have made changes locally, you push them to your remote branch. You can make a pull request online at that time. To merge, there is an option for merging, but should rarely be made by the writer of the code on a collaborative project. Rather, the other people working on the project would review the changes and merge at that time.
Why are pull requests preferred when working with teams?
- Everyone involved can review the changes in the request and approve if they see fit. If everyone was constantly merging their own code with the master, then it could become confusing what the current state is, and more often the code wouldn't work.