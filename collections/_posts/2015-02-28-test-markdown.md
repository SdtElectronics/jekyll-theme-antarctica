---
layout: article
title: Test Markdown
categories: markdown
tags: test
eyeCatcher: https://2.bp.blogspot.com/-ziKs7dE1pL0/Wk30eueIHMI/AAAAAAAAC8o/Qe-_SvXliJ8N1UIeGBrEuuTy1PpK4KvwwCEwYBhgL/s1600/%25D0%2597%25D0%25B8%25D0%25BC%25D0%25B0%2B%25D0%25B2%2B%25D0%2598%25D1%2581%25D0%25BB%25D0%25B0%25D0%25BD%25D0%25B4%25D0%25B8%25D0%25B8%2B%2B%252811%2529.jpg
---

You can write regular [markdown](http://markdowntutorial.com/) here and Jekyll will automatically convert it to a nice webpage.  I strongly encourage you to [take 5 minutes to learn how to write in markdown](http://markdowntutorial.com/) - it'll teach you how to transform regular text into bold/italics/headings/tables/etc.

**Here is some bold text**

## Here is a secondary heading

Here's a useless table:

| Number | Next number | Previous number |
| :------ |:--- | :--- |
| Five | Six | Four |
| Ten | Eleven | Nine |
| Seven | Eight | Six |
| Two | Three | One |


How about a yummy crepe?

![Crepe](https://s3-media3.fl.yelpcdn.com/bphoto/cQ1Yoa75m2yUFFbY2xwuqw/348s.jpg)

Here's a code chunk:

~~~
var foo = function(x) {
  return(x + 5);
}
foo(3)
~~~

And here is the same code with syntax highlighting:

```javascript
var foo = function(x) {
  return(x + 5);
}
foo(3)
```

And here is the same code yet again but with line numbers:

{% highlight javascript linenos %}
var foo = function(x) {
  return(x + 5);
}
foo(3)
{% endhighlight %}

## Boxes
You can add notification, warning and error boxes like this:

### Notification

{: .box-note}
**Note:** This is a notification box.

### Warning

{: .box-warning}
**Warning:** This is a warning box.

### Error

{: .box-error}
**Error:** This is an error box.

