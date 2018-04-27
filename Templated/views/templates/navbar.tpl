<!-- Navigation -->
<div class="fixed-top border-bottom bg-white" id="navigation">

    <div class="padded-100 alert alert-warning alert-dismissible fade show display-none" role="alert" id="offline-alert">
        <strong>Offline!</strong> You should check your connection.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span></button>
    </div>

    <nav class="container navbar navbar-expand-lg navbar-inverted">
        <a href="/" class="navbar-brand">{{page}}</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                <li class="nav-item"><a class="nav-link" href="/music">Music</a></li>
                <li class="nav-item"><a class="nav-link" href="/db">Database</a></li>
                <li class="nav-item"><a class="nav-link" href="mailto:mail@example.com">Support</a></li>
            </ul>

            <ul class="navbar-nav text-uppercase">
                <li class="nav-item">
                    <a class="nav-link" href="/login">
                        <button class="btn btn-sm bg-white">Log In</button>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/register">
                      <button class="btn btn-sm btn-outline-primary">Register</button>
                    </a>
                </li>
            </ul>

        </div>
    </nav>
</div>
<!-- end Navigation -->
