      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper">
              </div>
            </div>
          </li>
          <li class="nav-item {{ Route::currentRouteNamed('attendance') ? 'active' : '' }}">
            <a class="nav-link" href="{{ route('attendance') }}">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Attendance</span>
            </a>
          </li>
          <li class="nav-item {{ Route::currentRouteNamed('currentSession') ? 'active' : '' }}">
            <a class="nav-link" href="{{ route('currentSession') }}">
              <i class="menu-icon mdi mdi-speedometer"></i>
              <span class="menu-title">Current session</span>
            </a>
          </li>          
          <li class="nav-item {{ Route::currentRouteNamed('history') ? 'active' : '' }}">
            <a class="nav-link" href="{{ route('history') }}">
              <i class="menu-icon mdi mdi-history"></i>
              <span class="menu-title">History</span>
            </a>
          </li>          
        </ul>
      </nav>