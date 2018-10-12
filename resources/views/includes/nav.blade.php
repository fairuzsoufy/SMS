    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="navbar-brand brand-logo" href="#">
        <img src="{{ asset('storage/settings/October2018/9h56vEVtlkLclG5lKc9U.png') }}" alt="logo" />
        </a>
        <a class="navbar-brand brand-logo-mini" href="#">
          <img src="{{ asset('storage/settings/October2018/9h56vEVtlkLclG5lKc9U.png') }}" alt="logo">
        </a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <ul class="navbar-nav navbar-nav-left header-links d-none d-md-flex">
          <li class="nav-item {{ Route::currentRouteNamed('schedule') ? 'active' : '' }}">
            <a href="{{ route('schedule') }}" class="nav-link">
              <i class="mdi mdi-calendar"></i>Schedule</a>
            </a>
          </li>
          <li class="nav-item {{ Route::currentRouteNamed('viewApplicants') ? 'active' : '' }}">
            <a href="{{ route('viewApplicants') }}" class="nav-link">
              <i class="mdi mdi-elevation-rise"></i>Applicants</a>
            </li>
            <li class="nav-item {{ Route::currentRouteNamed('filtration') ? 'active' : '' }}">
              <a href="{{ route('filtration') }}" class="nav-link">
                <i class="mdi mdi-clipboard-check"></i>Filtration</a>
              </li>
            </ul>
            <ul class="navbar-nav navbar-nav-right">
              <li class="nav-item dropdown">
                <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                  <i class="mdi mdi-file-document-box"></i>
                  <span class="count">0</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                  <div class="dropdown-item">
                    <p class="mb-0 font-weight-normal float-left">You have 0 unread emails
                    </p>
                    <span class="badge badge-info badge-pill float-right">View all</span>
                  </div>
                  <div class="dropdown-divider"></div>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                  <i class="mdi mdi-bell"></i>
                  <span class="count">0</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                  <a class="dropdown-item">
                    <p class="mb-0 font-weight-normal float-left">You have 0 new notifications
                    </p>
                    <span class="badge badge-pill badge-warning float-right">View all</span>
                  </a>
                  <div class="dropdown-divider"></div>
                </div>
              </li>
              <li class="nav-item dropdown d-none d-xl-inline-block">
                <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                  <span class="profile-text">Hello, {{ Auth::user()->name }}</span>
                  <img class="img-xs rounded-circle" src="{{ asset('storage/') }}{{ '/'.Auth::user()->avatar }}" alt="Profile image">
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                  <a class="dropdown-item p-0">
                    <div class="d-flex border-bottom">
                      <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                        <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>
                      </div>
                      <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
                        <i class="mdi mdi-account-outline mr-0 text-gray"></i>
                      </div>
                      <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                        <i class="mdi mdi-alarm-check mr-0 text-gray"></i>
                      </div>
                    </div>
                  </a>
                  <a class="dropdown-item" href="{{ route('logout') }}"
                  onclick="event.preventDefault();
                  document.getElementById('logout-form').submit();">Sign out</a>
                </div>
              </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-menu"></span>
            </button>
          </div>
        </nav>