
    <h4>Редактирование:</h4>
    <div class="well">
        <div class="form-group">
            <label class="control-label">Имя пользователя:</label>
            <input type="text" class="form-control" id="userNameEdit" value="${userName}" readonly>

            <label class="control-label">HWID пользователя:</label>
            <input type="text" maxlength="32" class="form-control" id="userHWIDEdit" value="${userHWID}">

            <label class="form-label">Тип подписки:</label>
            ${subscriptionTypeEdit}
            <!-- <select class="form-control" id="subscriptionTypeEdit">
                <option value="subMonth1">1 месяц</option>
                <option value="subMonth3">3 месяца</option>
                <option value="lifetime">Lifetime</option>
            </select> -->

            <!--  <label class="form-label">Статус подписки:</label> -->
            ${subscriptionStatusEdit}
            <!-- <select class="form-control" id="subscriptionStatusEdit">
               <option value="ACTIVE" selected>Активна</option>
               <option value="EXPIRED">Истекла</option>
               <option value="NOT_ACTIVATED">Не активна</option>
           </select> -->
       </div>
       <a class="btn btn-primary" id="editSubSubmit" href="javascript:void(0)">Сохранить</a>
       <button class="btn pull-right btn-default" id="hideEditBlock">Закрыть</button>
   </div>
