# Mocking Python
{id: index}

## About me
{id: about-me}

* [Gabor Szabo](https://www.linkedin.com/in/szabgab/)
* Help tech teams move faster with more stability.
* [PyWeb](https://www.meetup.com/PyWeb-IL/)
* [Code Maven workshops](https://www.meetup.com/Code-Mavens/)

## Goal
{id: goal}

You will come out from the workshop knowing

* What is mocking and Monkey Patching?
* When to use it?
* What are the dangers?

## Experiment with mocking in various situations
{id: experiment-with-mocking}

* Mocking time.
* Mocking external calls.
* Mocking method calls.

## Situations
{id: situations}

* Replace a complex object with a simpler one.

* Isolate parts of the system to test them on their own.

* Speed up tests (e.g. eliminate remote calls).

* Simulate cases that are hard to replicate. (What if the other system fails?)

* Write application agains API that is not ready yet or not controlled by you.

* Unit tests.

## Unit testing vs Integration testing
{id: unit-testing-vs-integration-testing}

![dryer](dryer.mp4)

## Simple test case using Pytest
{id: simple-test-case}

A simple module with a function:

![](ex1/app.py)

The test:

![](ex1/test_app.py)

Running `pytest`:

```
======================== test session starts ========================
platform darwin -- Python 3.6.3, pytest-3.3.0, py-1.5.2, pluggy-0.6.0
rootdir: /Users/gabor/work/slides/python-mocking/ex1, inifile:
plugins: cov-2.5.1
collected 1 item

test_app.py .                                                 [100%]

===================== 1 passed in 0.01 seconds ======================
```

## Hard coded path
{id: hard-coded-path}

![](exa/app.py)

![](exa/test_data_1.py)

pytest test_data_1.py

```
    def get_sum():
>       with open(data_file) as fh:
E       FileNotFoundError: [Errno 2] No such file or directory: '/corporate/fixed/path/data.json'
```

## Mocking
{id: mocking}

![](exo/aud.py)

![](exo/test_aud_attr.py)

![](exo/test_aud_item.py)


## Mocking attribute
{id: mocking-attribute}

![](exa/test_data_2.py)

![](exa/test_1.json)

## Mocking attribute
{id: monkeypatching-attribute}

![](exa/test_data_3.py)


## Mocking input/output
{id: manually-mocking-input-output}

![](ex2/app.py)

The test:

![](ex2/test_app.py)

![](ex2/test_calc.py)

## Exercises
{id: exercise}

[Source](https://github.com/szabgab/slides)

```
git clone https://github.com/szabgab/slides.git
cd slides/python-mocking/
```

## Exercise: One Dimentsional space-fight
{id: one-dimensional-space-fight}

* Write a test that check the 'x' button works.
* Write a test that check system can properly report 'less than'.
* Write a test that check system can properly report 'greater than'.
* Write a test that check system can properly report 'found'.

* You might need to mock input/output/random.

![](space-fight/game.py)

## Exercise: web client
{id: web-client}

* Test this application without hitting any web site.
* Test what happens if the URL returns 404
* What if it is a 500 error?
* What if the host not found?

![](crawler/app.py)

## Resources
{id: resources}

* [MonkeyPatching](https://docs.pytest.org/en/latest/monkeypatch.html)

## Solutions
{id: solutions}

![](tests/test_game_exit.py)

![](tests/test_game_play.py)
