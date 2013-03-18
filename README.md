blackhole-mailer
====================
A mail utility so dense, no message can escape.


Installation Gemspec
------------
	gem 'blackhole-mailer'


Sample Use
------------------

Calling `abort_delivery` sends the message into a blackhole & the message is never sent.

    class UserMailer < BaseMailer
      def daily(user_id)
        @user = User.find(user_id)
        abort_delivery unless @user.wants_daily?
        mail(:to => @user.email, 
          :from => "MyApp <hello@myapp.com>",
          :subject => "Daily mailer from MyApp!")    
      end  
    end


Further, you can inherit from AsyncMailer to get all the benefits of blackhole-mailer & integration with resque_mailer.


Submitting an Issue
-------------------
We use the [GitHub issue tracker](http://github.com/kdmny/blackhole-mailer/issues) to track bugs and
features. Before submitting a bug report or feature request, check to make sure it hasn't already
been submitted. You can indicate support for an existing issuse by voting it up. When submitting a
bug report, please include a [Gist](http://gist.github.com/) that includes a stack trace and any
details that may be necessary to reproduce the bug, including your gem version, Ruby version, and
operating system. Ideally, a bug report should include a pull request with failing specs.


Submitting a Pull Request
-------------------------
1. Fork the project.
2. Create a topic branch.
3. Implement your feature or bug fix.
4. Add documentation for your feature or bug fix.
5. Run <tt>rake doc:yard</tt>. If your changes are not 100% documented, go back to step 4.
6. Add specs for your feature or bug fix.
7. Run <tt>rake spec</tt>. If your changes are not 100% covered, go back to step 6.
8. Commit and push your changes.
9. Submit a pull request. Please do not include changes to the gemspec, version, or history file. (If you want to create your own version for some reason, please do so in a separate commit.)


Copyright
---------
Copyright (c) 2013 K$.
See [LICENSE](https://github.com/kdmny/blackhole-mailer/blob/master/LICENSE.md) for details.
