      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper">
                <div class="profile-image">
                  <img src="{{ asset('storage/') }}{{ '/'.Auth::user()->avatar }}" alt="profile image">
                </div>
                <div class="text-wrapper">
                  <p class="profile-name">{{ Auth::user()->name }}</p>
                  <div>
                    <small class="designation text-muted">{{ Auth::user()->role->display_name }}</small>
                    <span class="status-indicator online"></span>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="nav-item {{ Route::currentRouteNamed('home') ? 'active' : '' }}">
            <a class="nav-link" href="{{ route('home') }}">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          @if(Voyager::can('add_interview_times'))
          <li class="nav-item {{ Route::currentRouteNamed('schedule') ? 'active' : '' }}">
            <a class="nav-link" href="{{ route('schedule') }}">
              <i class="menu-icon mdi mdi-calendar-clock"></i>
              <span class="menu-title">Schedule</span>
            </a>
          </li>
          @endif
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#control-menu" aria-expanded="false" aria-controls="control-menu">
              <i class="menu-icon mdi mdi-account-multiple-outline"></i>
              <span class="menu-title">Recruitment</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="control-menu">
              <ul class="nav flex-column sub-menu">
                @if(Voyager::can('add_applicants'))
                <li class="nav-item {{ Route::currentRouteNamed('addApplicant') ? 'active' : '' }}">
                  <a class="nav-link" href="{{ route('addApplicant') }}"><i class="menu-icon mdi mdi-account-plus"></i>Add applicant</a>
                </li>
                @endif
                @if(Voyager::can('browse_applicants'))
                <li class="nav-item">
                  <a class="nav-link" href="{{ route('viewApplicants') }}"><i class="menu-icon mdi mdi-eye"></i>View applicants</a>
                </li>
                @endif
              </ul>
            </div>
          </li>
          @if(Voyager::can('edit_applicant_statuses'))
          <li class="nav-item {{ Route::currentRouteNamed('filtration') ? 'active' : '' }}">
            <a class="nav-link" href="{{ route('filtration') }}">
              <i class="menu-icon mdi mdi-clipboard-check"></i>
              <span class="menu-title">Filtration</span>
            </a>
          </li>
          @endif
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#account-menu" aria-expanded="false" aria-controls="account-menu">
              <i class="menu-icon mdi mdi-account"></i>
              <span class="menu-title">Account</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="account-menu">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="{{ route('logout') }}"
                  onclick="event.preventDefault();
                  document.getElementById('logout-form').submit();"><i class="menu-icon mdi mdi-logout"></i>Sign out</a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>