$(document).ready(function () {
    function deleteUser() {
        
            var uname = $('#uname').val();
            var mail = $('#mail').val();
            var text = "";
            if (uname.length == 0)
                text += "Please Enter user name/n";
            if (mail.length == 0)
                text += "Please Enter Email Address/n";
            $('#errors').text(text);
            if (text.length > 1)
                return false;
            $.ajax({
                type: 'POST', 
                url: '/home/Delete', data: $('#deleteForm').serialize(),
                success: function (x) {
                    $('#errors').text(x);
                },
                error: function()
                {
                    alert('some error has been occured');
                }
            })
            return false;
            
    }
})