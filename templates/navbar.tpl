<!-- Navbar -->
        <div class="navbar navbar-fixed-top navbar-default" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/begg/">SWG Admin Panel</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <!-- IF '${is_logged}' == TRUE -->
                        <li class="active">
                            <a href="#">Подписки</a>
                        </li>
                        <li>
                            <a href="/begg/?do=settings">Настройки</a>
                        </li>
                        <li>
                            <a href="/begg/?do=stat">Статистика</a>
                        </li>
                        <!-- END IF -->
                    </ul>
                    <!-- IF '${is_logged}' == TRUE -->
                    <ul class="nav navbar-nav pull-right">
                        <li>
                            <a href="#">Привет, ${adminLogin}</a>
                        </li>
                        <li>
                            <a href="/begg/?do=login&action=logout">[Выйти]</a>
                        </li>
                    </ul>
                    <!-- END IF -->
                </div>
            </div>
        </div>
<!-- END Navbar -->
