---
layout: post
title: "Damn useful SMS conversion"
tags: [tools, github, python]
---

Getting a new iPhone or Android phone? Leaving Google Voice?
Want a searchable CSV, JSON, or XML file of your conversations?
Making a sweet app and you want to run on *all* your past texts at once?
Want to move all your messages from your past into a new, date-sorted, database?

{% highlight bash linenos=table %}
git clone git@github.com:t413/SMS-Tools.git
cd SMS-Tools
python sms_tools.py iphone.db androids.xml android.db out.csv
{% endhighlight %}

Imported. Normalized. Sorted. Exported. Easy.

Go clone it at [github.com/t413/SMS-Tools](https://github.com/t413/SMS-Tools)

Convert your message history between:
- iOS 5, 6, and 7 databases directly (from backup or from your jailbroken phone directly)
- Android mmssms.db database (directly from phone)
- Android XML from the [SMS Backup & Restore](http://android.riteshsahu.com/apps/sms-backup-restore) app
- CSV files
- JSON files
- google voice data dump (see more details below)
