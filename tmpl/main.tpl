<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
    <meta name="description" content="%meta_desc%"/>

    <link href="%address%css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="%address%css/main.css"/>
    <script src="%address%js/bootstrap.js"></script>
    <script src="%address%js/bootstrap.js"></script>
    <title>%title%</title>
</head>

<body>
<div id="content">
    <header class="container-fluid">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"><img src="images/bmw.png" alt=""></div>
                    <div class="col-lg-9"></div>
                </div>
            </div>

        </div>
    </header>
    <hr/>
    <div id="main" class="container">
        <div class="row">
            <div id="left" class="col-lg-3">
                <img src="images/123.png" alt="">
                <h3>Меню</h3>
                <ul>
                    %menu%
                </ul>
                %auth_user%

            </div>
            <div id="central" class="col-lg-6">
                %top%
                <hr/>
                %middle%
                <hr/>
                %bottom%





            </div>

            <div id="right" class="col-lg-3">
                <form action="%address%" method="get" name="search">
                    <p>Поиск <input type="text" name="search"/></p>

                    <p>
                        <input type="hidden" name="view" value="search">
                        <input type="submit" name="start_search" value="Поиск">
                    </p>

                </form>

                <h2>Реклама</h2>
                %banners%

                <div class="banner">Тут код баннера</div>

            </div>


        </div>
    </div>

    <div class="clear"></div>
    <hr/>
    <footer class="container-fluid">

        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"><img src="images/bmw.png" alt=""></div>
                    <div class="col-lg-9 menu"> Все прова защищены &copy 2019</div>
                </div>
            </div>

        </div>


    </footer>


</div>
</body>
</html>