all: README.md deploy

README.md: guessinggame.sh
	touch README.md
	echo "This repo contains project for Unix Workbench Course." > README.md
	echo "It was done on:" >> README.md
	date +"Date %F Time %T" >> README.md
	echo "The number of lines of code contained in guessinggame.sh is" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

deploy:
	git config user.email "harshraj.rathore@gmail.com"
	git config user.name "rathore287" 
	git init
	git add . 
	git status 
	git commit -m "CI-CD with makefile"
	git remote add origin https://github.com/rathore287/unix-ci-cd.git
	git push origin master
clean:
	rm README.md