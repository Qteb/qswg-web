<!-- Main Panel -->
        <div class="container" id="main-container">
            <div class="row row-offcanvas row-offcanvas-right">

                <div class="col-md-3">
                    <br>
                    <br>

                    <div id="subscriptionAddMenu">
                        <br><br>
                        <li id="ggwp" class="list-group-item"><a href="#">Добавить пользователя</a></li>
                    </div>

                    <div id="subscriptionAdd" style="display:none">
                        <h4>Добавить пользователя:</h4>
                        <div class="well">
                            <div class="form-group">
                                <label class="control-label">Имя пользователя:</label>
                                <input type="text" class="form-control" id="userNameAdd">

                                <label class="control-label">HWID пользователя:</label>
                                <input type="text" maxlength="32" class="form-control" id="userHWIDAdd" >

                                <label class="form-label">Тип подписки:</label>
                                ${subscriptionTypeAdd}
                                <!-- <select class="form-control" id="subscriptionTypeAdd">
                                    <option value="subMonth1">1 месяц</option>
                                    <option value="subMonth3">3 месяца</option>
                                    <option value="lifetime">Lifetime</option>
                                </select> -->
                            </div>
                            <a class="btn btn-primary" id="addSub" href="javascript:void(0)">Отправить</a>
                            <button class="btn pull-right btn-default" id="hideDiv">Закрыть</button>
                        </div>
                    </div>

                    <div id="subscriptionEdit" style="display:none"></div>
                </div>

                <div class="col-md-9">
                    <br>
                    <br>

                    <h4>Список пользователей:</h4>
                    <div class="well" id="subscriptionList">
                        <center><img src="http://qteb.ru/qswg/templates/images/loading.gif" border="0" align="middle"></center>
                    </div>
                </div>

            </div>
            <!-- </div> -->
<!-- END Main Panel -->
