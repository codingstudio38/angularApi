<form action="{{url('/myblog/access/updatemultiples')}}" enctype="multipart/form-data" method="POST">
    <table>
        <tr>
            <td>Customer Name</td>
            <td>
                <input type="text" value="vk" placeholder="Customer Name" name="cname" id="cname">
                <input type="hidden" value="3" placeholder="Customer Name" name="cid" id="cid">
            </td>
        </tr>
        <tr>
            <td>Customer Email</td>
            <td><input type="email" value="vidyut.star006@gmail.com" placeholder="Customer Email" name="cemail" id="cemail">

            </td>
        </tr>
        <tr>
            <td>Customer Phone</td>
            <td><input type="number" value="1234567890" placeholder="Customer Name" name="cphone" id="cphone">

            </td>
        </tr>

    </table>
    <table>
        <tr>
            <td>Product Name</td>
            <td>Quantity</td>
            <td>Price</td>
            <td>Product File</td>
            <td>Photo</td>
            <td>Remove</td>
        </tr>
        <tr>
            <td>
                <input type="text" name="name[]" value="1" id="new_name0">
                <input type="hidden" name="upid[]" id="up_id0" value="7">
                <input type="hidden" name="old_photo[]" value="multiple_18537_55132.jpg">

            </td>
            <td>
                <input type="text" name="qty[]" value="2" id="new_qty0">
            </td>
            <td>
                <input type="text" name="price[]" value="3" id="new_price0">
            </td>
            <td>
                <input type="file" name="photo[]" accept="image/png, image/gif, image/jpeg" id="new_file0"></td>
            <td class="imgstd" id="viewphoto0"><img style="width: 90px; height: 90px;" src="http://127.0.0.1:8000/newdemo/upload-Multiples/multiple_18537_55132.jpg"></td>

            <td><button type="button" class="btn btn-danger btn-sm" id="rmv_0">Remove</button></td>
        </tr>
        <tr ng-reflect-name="1">
            <td><input type="text" name="name[]" value="1" id="new_name1">
                <input type="hidden" name="upid[]" id="up_id1" value="8">
                <input type="hidden" name="old_photo[]" value="multiple_76940_6105330.jpg">
            </td>
            <td>
                <input type="text" name="qty[]" value="2" id="new_qty1">
            </td>
            <td>
                <input type="text" name="price[]" value="3" id="new_price1">
            </td>
            <td>
                <input type="file" name="photo[]" accept="image/png, image/gif, image/jpeg" id="new_file1"></td>
            <td class="imgstd" id="viewphoto1">
                <img style="width: 90px; height: 90px;" src="http://127.0.0.1:8000/newdemo/upload-Multiples/multiple_76940_6105330.jpg">
            </td>
            <td><button type="button" class="btn btn-danger btn-sm" id="rmv_1">Remove</button></td>
        </tr>
        <tr ng-reflect-name="2">
            <td>
                <input type="text" name="name[]" value="1" id="new_name2">
                <input type="hidden" name="upid[]" id="up_id2" value="9">
                <input type="hidden" name="old_photo[]" value="multiple_84100_1230664.jpg">
            </td>
            <td>
                <input type="text" name="qty[]" value="2" id="new_qty2">
            </td>
            <td>
                <input type="text" name="price[]" value="3" id="new_price2">
            </td>
            <td>
                <input type="file" name="photo[]" accept="image/png, image/gif, image/jpeg" id="new_file2"></td>
            <td class="imgstd" id="viewphoto2">
                <img style="width: 90px; height: 90px;" src="http://127.0.0.1:8000/newdemo/upload-Multiples/multiple_84100_1230664.jpg">
            </td>
            <td><button type="button" class="btn btn-danger btn-sm" id="rmv_2">Remove</button></td>
        </tr>
        <tr ng-reflect-name="3">
            <td>
                <input type="text" name="name[]" value="1" id="new_name3">
                <input type="hidden" name="upid[]" id="up_id3" value="14">
                <input type="hidden" name="old_photo[]" value="multiple_93420_1133693.jpg">

            </td>
            <td>
                <input type="text" name="qty[]" value="2" id="new_qty3">
            </td>
            <td>
                <input type="text" name="price[]" value="3" id="new_price3">
            </td>
            <td>
                <input type="file" name="photo[]" accept="image/png, image/gif, image/jpeg" id="new_file3">
            </td>
            <td class="imgstd" id="viewphoto3">
                <img style="width: 90px; height: 90px;" src="http://127.0.0.1:8000/newdemo/upload-Multiples/multiple_93420_1133693.jpg">


            </td>
            <td><button type="button" class="btn btn-danger btn-sm" id="rmv_3">Remove</button></td>
        </tr>

    </table>
    <button type="submit" class="btn btn-success">Submit</button>
</form>


{{-- php artisan config:cache --}}
{{-- php artisan config:clear --}}
{{-- php artisan optimize --}}
