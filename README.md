Resume
======

This is essentially a place I keep my Resume, which I am trying to learn how to write using LaTeX.

My resume is based off of Andrew McNabb's source located at `http://www.mcnabbs.org/andrew/linux/latexres/`


How I use this
--------------

When it comes time to add/edit/delete things from my resume, I just have to do a few quick things.

`vim resume.tex`

That's a given though right? After I'm done comes the fun part. I have a Make file to streamline most of
the editing and publishing process. For instance, as I modify the resume, I can type:

`make preview`

and my resume gets compiled and converted toe a PDF and opened up for viewing in evince.

```
make makeimage
#or
make makepdf
```

Would simply convert the tex into a PNG or a PDF respectively.

`make push`

Will push all changes to the current working directory to origin

`make publish`

Will compile, clean and push the changes to origin.


Preview
-------

![Doesn't that look great!?](./Erik_Sutherland_Resume.png)
