
    <!-- IF '${elementsCount}' > 0 -->
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <!-- <th>#</th> -->
            <th>HWID</th>
            <th>Имя</th>
            <th>Тип подписки</th>
            <th>Осталось</th>
            <th>Вход</th>
            <th>Статус</th>
            <th>Опции</th>
        </tr>
        </thead>
        <tbody>
        <!-- BEGIN row -->
        <tr class="${userId}">
            <!-- BEGIN column -->
            <!--  <td>${userId}</td> -->
            <td>${userHWID}</td>
            <td>${userName}</td>
            <td>${subscriptionType}</td>
            <td>${subscriptionTimeout}</td>
            <td>${userLastLogin}</td>
            <td>${subscriptionStatus}</td>
            <td>
                <div class="btn-group btn-group-xs">
                    <a class="btn btn-info" id="editSub" subId="${userId}">Изменить</a>
                    <a class="btn btn-danger" id="deleteSub" subId="${userId}">X</a>
                    <a class="btn btn-default" id="infoSub" subId="${userId}">Инфо</a>
                </div>
            </td>
            <!-- END column -->
        </tr>
        <!-- END row -->
        </tbody>
    </table>
    <!-- ELSE -->
    <h4 class="text-center">Список пуст</h4>
    <!-- END IF -->
