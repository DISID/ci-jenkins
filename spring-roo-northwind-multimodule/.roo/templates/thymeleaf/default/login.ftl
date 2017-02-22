<!DOCTYPE html>
<html lang="en" data-layout-decorate="~{layouts/default-layout-no-menu}">
  <head>

    <title data-th-text="${r"#{"}label_login}">Login- Spring Roo application</title>

  </head>

  <#if userManagedComponents?has_content && userManagedComponents["body"]??>
    ${userManagedComponents["body"]}
  <#else>
  <body id="body">

    <header role="banner">
      <!-- Content replaced by layout of the page displayed -->
    </header>

    <!-- CONTAINER -->
    <div class="container bg-container">
      <!-- CONTENT -->
      <!--
        Only the inner content of the following tag "section" is included
        within the template, in the section "content"
      -->
      <section data-layout-fragment="content">
        <div class="container-fluid content">

          <div class="panel panel-default">
            <div class="panel-heading">
              <h1 class="panel-title" data-th-text="${r"#{"}label_login}">Login</h1>
            </div>
            <div class="panel-body">
              <form class="form-horizontal" data-th-action="@{/login}" method="post">
               <fieldset>
                <legend class="sr-only" data-th-text="${r"#{"}help_login}">Enter your login and password</legend>
                <!-- Alerts messages -->
                <div class="alert alert-info" role="alert"
                  data-th-if="${r"$"}{@environment.getProperty('springlets.security.auth.in-memory.enabled')}"
                  data-th-with="username=${r"$"}{@environment.getProperty('springlets.security.auth.in-memory.user.name')},
                  userpasw=${r"$"}{@environment.getProperty('springlets.security.auth.in-memory.user.password')},
                  adminname=${r"$"}{@environment.getProperty('springlets.security.auth.in-memory.admin.name')},
                  adminpasw=${r"$"}{@environment.getProperty('springlets.security.auth.in-memory.admin.password')}"
                  >
                  <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
                  <span data-th-text="${r"#{"}info_security_login}">You tried to access a
                    restricted area of our application. By default, you can log in with:</span>
                  <blockquote>
                    <span data-th-if="${r"$"}{username}" data-th-text="|${r"$"}{username} / ${r"$"}{userpasw}|">"user/password"</span>
                    <span data-th-if="${r"$"}{adminname}" data-th-text="|${r"$"}{adminname} / ${r"$"}{adminpasw}|">"admin/password"</span>
                  </blockquote>
                </div>

                <div data-th-if="${r"${"}param.error}" class="alert alert-danger" role="alert">
                 <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                 <span class="sr-only" data-th-text="|${r"#{"}label_error}:|">Error:</span>
                 <span data-th-text="${r"#{"}error_login}">Invalid user and password</span>
                </div>
                <div data-th-if="${r"${"}param.logout}" class="alert alert-success" role="alert">
                 <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                 <span data-th-text="${r"#{"}info_closed_session}">Log out correctly</span>
                </div>
                <div data-th-if="${r"${"}param.expired}" class="alert alert-danger" role="alert">
                 <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                 <span class="sr-only" data-th-text="|${r"#{"}label_error}:|">Error:</span>
                 <span data-th-text="${r"#{"}error_expired_session}">Your session has been expired</span>
                </div>
                <div class="form-group has-error has-feedback" data-z="z" id="username"
                    data-th-classappend="${r"${param.error}"}? 'has-error has-feedback'"
                    data-th-class="form-group">
                 <label for="username" class="col-md-3 control-label" data-th-text="${r"#{"}label_login_username}">Username</label>
                 <div class="col-md-6">
                  <input id="username" name="username" type="text"
                      class="form-control" placeholder="Username"
                      data-th-placeholder="${r"#{"}label_login_username}" data-toggle="tooltip"
                      aria-describedby="usernameStatus" />
                  <span data-th-classappend="${r"${param.error}"}? 'glyphicon glyphicon-remove form-control-feedback'"
                      class="glyphicon glyphicon-remove form-control-feedback"
                      data-th-if="${r"${"}param.error}" aria-hidden="true"></span>
                 </div>
                </div>
                <div class="form-group has-error has-feedback" data-z="z" id="password"
                    data-th-classappend="${r"${param.error}"}? 'has-error has-feedback'" data-th-class="form-group">
                 <label for="password" class="col-md-3 control-label" data-th-text="${r"#{"}label_login_password}">Password</label>
                 <div class="col-md-6">
                  <input id="password" name="password" type="password"
                      class="form-control" placeholder="Password" data-th-placeholder="${r"#{"}label_login_password}"
                      data-toggle="tooltip" aria-describedby="passwordStatus" />
                  <span data-th-classappend="${r"${param.error}"}? 'glyphicon glyphicon-remove form-control-feedback'"
                      class="glyphicon glyphicon-remove form-control-feedback" data-th-if="${r"${"}param.error}"
                      aria-hidden="true"></span>
                 </div>
                </div>
                <div class="form-group">
                 <div class="col-md-9 col-md-offset-3">
                  <button type="submit" class="btn btn-primary" data-th-text="${r"#{"}label_submit}">Accept</button>
                  <button type="reset" class="btn btn-default" data-th-text="${r"#{"}label_reset}">Cancel</button>
                 </div>
                </div>
               </fieldset>
              </form>
             </div>
          </div>
        </div>
      </section>
     <!-- /CONTENT -->
    </div>
    <!-- /CONTAINER -->

    <footer class="container">
      <!-- Content replaced by layout of the page displayed -->
    </footer>

    <!-- JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so that the pages load faster -->
    <!-- JavaScript loaded by layout of the page displayed -->
    <!--
         Only the inner content of the following tag "javascript" is included
         within the template, in the div "javascript"
        -->
    <div data-layout-fragment="javascript">
    </div>

  </body>
  </#if>

</html>
