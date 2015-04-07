var timeout1 = 60000; // subscriptions list update
var already_length;

// инициализация
window.onload = function () {
    if(!window.console)
        window.console={log:function(){}}; //safe console

    update();
}

function update() {
    listSubscriptions(0);
}

$(function hideEditBlock(){
    $(document).on("click", "#hideEditBlock", function() {
        $( "#subscriptionEdit" ).hide("fast");
        //console.log('SHOW EDIT: closed');
    });
});

$(function hideDiv(){
    $(document).on("click", "#hideDiv", function() {
        $(this).parent("div").parent("div").hide("fast");
        $( "#subscriptionAddMenu" ).show("fast");
        //console.log('ADD: closed');
    });
});

$(function hideDiv(){
    $(document).on("click", "#ggwp", function() {
        $( "#subscriptionAdd" ).show("fast");
        $(this).parent("div").hide("fast");
    });
});

// delete subscription
$(function deleteSubscription(){
    $(document).on("click", "#deleteSub", function(){
        var subId = $(this).attr('subId');
        $(this).parents("tr").hide("slow");
        $.get("http://qteb.ru/begg/?do=subs&action=deleteSubscription&userId="+subId, function(data) {
            if (data.length > 0) {
                var message = jQuery.parseJSON(data);
                showMessage(message.type, message.text);
                listSubscriptions(1);
            } else {
                showMessage("error", "Ошибка!");
            }
        });
        //console.log('DELETE: ID = ' + subId);
    });
});

// edit subscription
$(function editSubscription(){
    $(document).on("click", "#editSub", function(){
        var subId = $(this).attr('subId');
        $.get("http://qteb.ru/begg/?do=subs&action=editSubscription&userId="+subId, function(data) {
            if (data.length > 0) {
                jQuery("#subscriptionEdit").html(data);
                $("#subscriptionEdit").show("fast");
            } else {
                jQuery("#subscriptionEdit").html('');
            }
        });
        //console.log('SHOW EDIT: ID = ' + subId);
    });
});

// list subscriptions
function listSubscriptions(withForce) {
    if (withForce == 1)
        already_length = 0;

    window.clearInterval(window.timer1);
    $.get("http://qteb.ru/begg/?do=subs&action=listSubscription", function(data) {
        if (already_length != data.length) {
            if (data.length > 0) {
                jQuery("#subscriptionList").html(data);
            } else {
                jQuery("#subscriptionList").html('');
            }

            showMessage("success", "Таблица обновлена!");
            already_length = data.length;
        }
    });
    window.timer1 = window.setInterval("listSubscriptions();", timeout1);
}

// submit edited subscription
$(function editSubmitSubscription(){
    $(document).on("click", "#editSubSubmit", function(){
        var haveError = false;

        var userHWID = $("#userHWIDEdit").val();
        var userName = $("#userNameEdit").val();
        var subscriptionType = $("#subscriptionTypeEdit").val();
     //   var subscriptionStatus = $("#subscriptionStatusEdit").val();

        if (userHWID == "" || userName == "" || subscriptionType == "") {
            showMessage("error", "Заполните все поля!");
            haveError = true;
        }
        //if(userHWID.length < 8){
         //   showMessage("error", "Длинна HWID менее 8 цифр!");
         //   haveError = true;
        //}
        if(userName.length < 4) {
            showMessage("error", "Длинна имени пользователя<br>короче 4 символов!");
            haveError = true;
        }

        if (haveError == false) {
            $.post('http://qteb.ru/begg/?do=subs&action=editSubscription', {
                userHWID: userHWID,
                userName: userName,
                subscriptionType: subscriptionType
       //         subscriptionStatus: subscriptionStatus
            })
                .done(function (data) {
                    if (data != '') {
                        var message = jQuery.parseJSON(data);
                        showMessage(message.type, message.text);
                        listSubscriptions();

                        $( "#subscriptionEdit" ).hide("slow");
                        //console.log('SHOW EDIT: closed');
                    }
                });
            //console.log('EDIT: userName = ' + userName + ', HWID = ' + userHWID + ', sub type = ' + subscriptionType);
        }
    });
});

// add subscription
$("#addSub").click(function() {
    var haveError = false;

    var userHWID = $("#userHWIDAdd").val();
    var userName = $("#userNameAdd").val();
    //var subscriptionType = $("#subscriptionTypeAdd").val();
    var subscriptionType = $("#subscriptionTypeAdd option:selected").val();

    if (userHWID == "" || userName == "" || subscriptionType == "") {
        showMessage("error", "Заполните все поля!");
        haveError = true;
    }
    //if(userHWID.length < 8){
    //    showMessage("error", "Длинна HWID менее 8 цифр!");
    //    haveError = true;
    //}
    if(userName.length < 4) {
        showMessage("error", "Длинна имени пользователя<br>короче 4 символов!");
        haveError = true;
    }

    if (haveError == false) {
        $.post('http://qteb.ru/begg/?do=subs&action=addSubscription', {
            userHWID: userHWID,
            userName: userName,
            subscriptionType: subscriptionType
        })
            .done(function (data) {
                if (data != '') {
                    var message = jQuery.parseJSON(data);
                    showMessage(message.type, message.text);
                    listSubscriptions();

                    var userHWID = $("#userHWIDAdd").val("");
                    var userName = $("#userNameAdd").val("");
                }
            });
        //console.log('ADD: userName = ' + userName + ', HWID = ' + userHWID + ', subscription type = ' + subscriptionType);
    }
});

// Всплывающее сообщение
function showMessage(messageType, messageText) {
/*    $().toastmessage('showSuccessToast', "SUCCESS");
    $().toastmessage('showNoticeToast', "NOTICE");
    $().toastmessage('showWarningToast', "WARNING");
    $().toastmessage('showErrorToast', "ERROR");*/

    var messageStayTime = 2000;
    if (messageType == 'success') messageStayTime = 3000;
    $().toastmessage({
        inEffect: 			{opacity: 'show'},
        nEffectDuration: 	600,
        text		:	messageText,
        stayTime	:	messageStayTime,
        sticky		:	false,
        position	:	'top-right',
        type		:	messageType
    });
    $().toastmessage('showToast');
}