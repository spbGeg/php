<h1>Регистрация</h1>
%message%
<div id="reg">
    <form action="function.php" method="post" name="reg">
        <table>
            <tr>
                <td>Логин</td>
                <td><input type="text" name="login"></td>
            </tr>
            <tr>
                <td>Пароль</td>
                <td><input type="password" name="password"/></td>
            </tr>
            <tr >
                <td><img src="capcha.php" alt="capcha"></td>
                <td><input type="text" name="capcha"></td></tr>
            <tr>
                <td></td>
                <td></td></tr>
            <tr class="right">
                <td colspan="2"><input type="submit" name="reg" value="Зарегистрироваться"/></td>
            </tr>


        </table>


    </form>
</div>