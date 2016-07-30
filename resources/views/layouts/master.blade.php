<html>
    <head>
        <title>Overwatch API</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300|Roboto+Slab" rel="stylesheet">
        <link rel="stylesheet" href="/css/normalize.css">
        <link rel="stylesheet" href="/css/skeleton.css">
        <link rel="stylesheet" href="/css/app.css">
    </head>
    <body>
        <div class="container">
            <div id="header" class="row">
                <div class="twelve columns">
                    <a class="logo" href="{{ route('web.index') }}">Overwatch API</a>
                </div>
            </div>
            <div class="row">
                <div class="twelve columns">
                    <ul id="navigation">
                        <li><a href="{{ route('web.index') }}">Home</a></li>
                        <li><a href="{{ route('web.docs', ['version' => 'v1']) }}">Documentation</a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="twelve columns">
                    @yield('content')
                </div>
            </div>
            <div id="footer" class="row">
                <div class="twelve columns">
                    Built by <a href="http://jamesmcfadden.co.uk">James</a>
                </div>
            </div>
        </div>
        @if (config('app.env') === 'production')
            @include('partials/analytics')
        @endif
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script src="/js/app.js"></script>
    </body>
</html>
