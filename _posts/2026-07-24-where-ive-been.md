---
title: 'A Few Years Later'
date: 2026-07-24 00:00:00 Z
permalink: years-later
tags:
- return
layout: post
author: Brennan Brown
comment: true
---

It's been just over a week since I [deleted all my corporate social media accounts](https://brennan.day/a-full-guide-to-properly-delete-corporate-social-media-accounts/) and, honestly? I've been loving the quiet and lack of notifications and decreased screen time. I'm sure I'm missing out on things, but those are not things I care about. What I care about is writing here, for you! This is exactly what I was talking about when I was writing about figuring out what [juice is worth the squeeze](https://brennan.day/is-the-juice-worth-the-squeeze/) in life.

But then the question arises: what do I do with all this newfound free time in the heat of these dog days of summer? There are many options, the most sensible being to just do more of the work I've been slacking on. But why be sensible when I can procrastinate in other, more interesting ways instead? (I jest, as what I'm going to explain will actually make me far more productive in the long-run, don't worry.)

## Getting Back on the Horse

I'm a [Beeminder](https://beeminder.com) superuser. I've been using the site for many years, and wrote [two guest](https://blog.beeminder.com/tao/) [blog posts](https://blog.beeminder.com/tao2/) for the company all the way back in 2017. What even is Beeminder? Well, it's a commitment tool—a platform that allows you to externalize your willpower so you do the tasks you know you ought to do. They use the term [Akrasia](https://blog.beeminder.com/akrasia/), which can be understood as the want to want. You want to be the kind of person that effortlessly wants to do the hard but necessary work, but you know reality differs.

The way Beeminder pushes you to do the hard but necessary work is simple: you're charged money if you fail to complete the tasks you set. For me, personally, Beeminder has been the only thing that's worked. Here's my testimonial. It has been a Godsend for me to get my shit together and ingrain good habits.

I decided to return to Beeminder in this quiet after deleting social media. I think it would do me a world of good, especially now that I have more free time. It is the [Year of the Horse](https://www.chinahighlights.com/travelguide/chinese-zodiac/horse.htm), after all. Time to climb back on it!

I've set up 17 new goals across personal development, learning, creative work, productivity, and social communication. The real magic of Beeminder for me is its incredible, robust amount of integration options which pull datapoints automatically. This means I'm not manually adding data—which would be tedious and also tempt me to simply add false data to avoid being charged.

Read more about my return to Beeminder [here](https://brennan.day/beeminder-getting-back-on-the-horse/).

## Building a Digital Garden

Continuing where I left off yesterday writing about Beeminder, I realized that there were a couple goals/systems that I needed to modify due to how various integration options and API have changed. I used to have a goal named [**/github**](https://beeminder.com/brennanbrown/github) which would track my commits across all my repositories on GitHub. But GitHub's API changed, and so now you can only track the commits of one repository at a time.

Anyways, I decided to use this as a good excuse to build an experiment that's been on my mind for awhile: a dedicated, low-friction place to dump my day-to-day small stuff which doesn't really belong on [Brennan.day](https://brennan.day). Quotes, bookmarks, half-formed notes, a diary line, a code snippet worth remembering. I want to create a commonplace book, wiki-linked digital garden which I have a reason to work on every day.

I decided to use https://brennan.click for this project.

I realized I could kill two birds with one stone with this project. I used to use the wonderful online Markdown editor [Draft](https://web.archive.org/web/20230104023309/https://draftin.com/) to track the amount of words I wrote per day on Beeminder on my goal [**/writing**](https://beeminder.com/brennanbrown/writing). They sadly shut down and I never found a good alternative.

I actually tried creating my own, a Swift MacBook app called [Bearminder](https://github.com/brennanbrown/bearminder), which uses the [Bear](https://bear.app/) API to send word count to Beeminder. But I found it too cumbersome and I am not a good Swift dev.

But, I realized this project was the perfect opportunity for me to actually finally use [URLminder](https://help.beeminder.com/article/88-urlminder), which lets Beeminder count the words in any publicly accessible URL. I created an Eleventy function that concatenates all my published notes into a single plain-text feed at `https://brennan.click/urlminder.txt`, which Beeminder then counts to drive an Odometer goal for my writing.

The technical implementation includes `[[double-bracket]]` wiki-links that automatically resolve (broken links generate stub pages), backlinks on every page, CSS-only hover transclusion for link previews and footnotes (no JavaScript), and brutalist design with Modern Font Stacks and Gruvbox colors.

It's really fun to find a small, personal problem and let the constraints of the smallweb do the work of keeping the scope feasible.

Read more about the digital garden project [here](https://brennan.day/creating-a-digital-garden-in-11ty-tracking-my-daily-word-count-with-urlminder/).

## What's Next

I'm not sure yet how regularly I'll be updating this Beejournal. The world has changed a lot since 2021, and so have I. But I do know that the practice of public accountability matters. There's value in saying "this is what I'm doing, this is how I'm trying to improve, here are my systems and my failures."

For now, I'm glad to be back. To mix up my animal metaphors, the horse is still there, waiting. Time to climb back on.
