---
layout: article
title: Lite Logger
categories: Software
tags: C++ library
eyeCatcher: https://sdtelectronics.github.io/assets/gallery/2021-4-10-head-Lite-Logger.png
---

Lightweight, fully-customizable log library for C++17.

[Github repository](https://github.com/SdtElectronics/lite-logger)

## Highlights
* Standard streams style operations
* Fully customizable message format with simple interface
* Level and predicate based conditional logging

## Quick Start
``` c++
#include "llogger.h"
llogger ll(std::cout, llogger::info);
ll(llogger::warning) << "Weather control device detected.";
// [ 2021-10-04 22:40:47 ] WARNING: Weather control device detected.
```

## Conditional Logging
Values in the log are costly to be evaluated sometimes, or the log at low severity level is too lengthy. In these cases it would be nice to disable specific log accordingly. Lite logger supports two categories of conditions: severity levels and bool expressions. 

Lite logger has 5 predefined severity levels:
* `fatal`
* `error`
* `warning`
* `notice`, and
* `info`

You can augment or modify them easily with slight changes in source code.

The severity level of the message is designated by the first parameter passed to the instance of `llogger`, and messages with level lower than the enabled level are not logged. The enabled severity level is initialized with the second parameter in the `llogger` constructor:
``` c++
llogger ll(std::cout, llogger::error);
ll(llogger::warning) << "Weather control device detected.";
// Nothing is printed
```
If the severity level of the message is not provided, the severity level of the previous message is used.

A bool expression can also be passed to the instance of `llogger`. If it is evaluated to `false`, the following message is not logged:

``` c++
llogger ll(std::cout, llogger::error);
ll(1 < 0) << "Weather control device detected.";
// Nothing is printed
```

The bool expression can be used together with the severity level, and the later is always passed first:

``` c++
llogger ll(std::cout, llogger::warning);
ll(llogger::warning, true) << "Weather control device detected.";
// [ 2021-10-30 22:34:04 ] WARNING: Weather control device detected.
```

Expressions in the message body are always evaluated before the body is passed to the logger. This is enforced by the semantic of C++ language. To defer the evaluation of expressions, they have to be wrapped inside a lambda (or any callable). They will not be evaluated unless the logging conditions are met:

``` c++
llogger ll(std::cout, llogger::warning);
ll(1 < 0) << []{return "This is not going to be evaluated!";};
// Nothing is printed
```

## Message Format Customization
Lite logger provides extreme flexibility in customization of message format via the `llfmt` class, which has the same stream operation style as `llogger`. `llfmt` supports 5 types of message segments:
* `llfmt::level` represents the severity level of this message
* `llfmt::time` represents the time this message is logged
* `llfmt::logStr` represents the message text
* `std::function<std::string ()>` allows functions returning a `string` to be evaluated during logging, and the returned value is inserted
* `std::string` is the static text in the message format

The default format is initialized as a static member of `llogger`. The explicit process of creation and using it to initialize a `llogger` is:
``` c++
llfmt lfmt;
lfmt << "[" << llfmt::time  << "] "
            << llfmt::level << ": "
            << llfmt::logStr;
llogger ll(std::cout, llogger::info, lfmt);
// The format is
// [ yyyy-mm-dd hh:mm:ss ] LEVEL: Message.
```
`llfmt::logStr` and  `llogger::fmtStr` allows interleaving the format text with the message:
``` c++
llfmt lfmt;
lfmt << "format text0 " 
    << llfmt::logStr 
    << "format text1 " 
    << llfmt::logStr;
llogger ll(std::cout, llogger::info, lfmt);
ll(llogger::warning) << "Message 0 " << llogger::fmtStr << "Message 1";
// format text0 Message 0 format text1 Message 1
```
Functionalities like a counter are easy to be implemented with a function in the format:
``` c++
llfmt lfmt;
int cnt = 0;
lfmt << "[" << []{std::to_string(++cnt);} << "] "
            << llfmt::level << ": "
            << llfmt::logStr;
llogger ll(std::cout, llogger::info, lfmt);
ll(llogger::warning) << "Message 1 "
// [1] WARNING: Message 1
ll(llogger::warning) << "Message 2 "
// [2] WARNING: Message 2
```


## License
No license.

Rather than a mature logging library, this project is more of a demonstration of the ideal interface of a logging library for C++ in my conception. It is heavily inspired by [glog](https://github.com/google/glog) but incorporates no macro to implement fancy features like conditional logging. Huge feature gap is yet to be filled to make it a complete library, but if you want to embedd it to your project, please feel free to do it :)