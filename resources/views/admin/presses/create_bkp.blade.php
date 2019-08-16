@extends("la.layouts.app")

@section("contentheader_title")
    <a href="{{ url(config('laraadmin.adminRoute') . '/presses') }}">@lang('messages.Presses')</a> :
@endsection
@section("section", trans("messages.Presses"))
@section("section_url", url(config('laraadmin.adminRoute') . '/presses'))
@section("sub_section", trans("messages.Add"))

@section("htmlheader_title", trans("messages.Add Presses"))
<?php
$start_date = old('published_date');
$categories_options = '';
foreach ($categories as $category) {
    $categories_options .= '<option value="'.$category->id.'">'.$category->name.'</option>';
}



?>
@section("main-content")
    <style type="text/css">
        #save_div {
            display: none;
        }
        .suggestion_text{
        color:green;
        font-size: 12px;
    }
    </style>
    @if (count($errors) > 0)
        <div class="alert alert-danger alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="box box-success">
        {!! Form::open(['action' => 'Admin\PressController@store','files'=>true, 'id' => 'press-add-form']) !!}
            <div class="box-body">
                <div style="border: 1px solid #eeeeee; padding: 20px; margin: 10px 0;box-shadow: 0 0px 0 2px rgba(0,0,0,.2)" class="press_wrapper">
                    <div class="row">
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="published_date">@lang('messages.Published Date')<span
                                            class="la-required">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <div class='input-group date' id='datetimepicker1'>
                                    <input type='text' class="form-control" name="published_date[]"
                                           id="published_date"
                                           placeholder="@lang('messages.Enter Date')"
                                           value="@if(isset($start_date)) {{$start_date}} @else {{ App\Helpers\CommonHelper::showDateFormat(date('Y-m-d')) }} @endif" required/>
                                    <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="parent">@lang('messages.Category')<span
                                            class="la-required">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <select class="form-control press-category" name="press_category_id[]" required>
                                    <?php echo $categories_options;?>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="press_link">@lang('messages.Link')<span
                                            class="la-required">*</span><span
                                            class="la-required"></span></label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="url" class="form-control press_link" name="press_link[]"
                                       placeholder="@lang('messages.Enter Valid Url')"
                                       value="{{old('press_link')}}" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="is_video">@lang('messages.Is Video')<span
                                            class="la-required">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <select class="form-control" name="is_video[]" id="is_video" required>
                                    <option value="1">Yes</option>
                                    <option selected value="0">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="image">@lang('messages.Press Image')<span
                                            class="la-required">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="file" class="form-control image" name="image[]" required>
                                <span  class="suggestion_text"><i class="fa fa-hand-o-right" aria-hidden="true"></i> Type: jpeg,jpg,png,gif. Size:431X554px
                                </span>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="description">@lang('messages.Description')<span
                                            class="la-required">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-11">
                            <div class="form-group">
                            <textarea name="description[]" class="form-control description" placeholder="Enter description" required>{{old('description')}}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="press-submit-wrapper">
                    <div class="col-md-12">
                        <div class="form-group">
                            {!! Form::submit( Lang::get('messages.Save'), ['class'=>'btn btn-success']) !!}
                            <a class="btn btn-default"
                               href="{{ url(config('laraadmin.adminRoute') .'/presses') }}">@lang('messages.Cancel')</a>
                            <button class="btn btn-info pull-right" id="add-row">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                Add row
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        {{ Form::close() }}
    </div>


@endsection

@push('scripts')
<script type="text/javascript">
    $(function () {
        /*Add new row*/
        $('#add-row').on('click', function (e) {
            var press = $('.press_wrapper:first').clone().insertBefore('#press-submit-wrapper');
            $("<a style='margin-top: 8px' class='btn btn-danger btn-sm pull-right remove' onclick='removeRow(this)'>Remove</a>").insertAfter(".description:last");
            $('.press_link:last').val('');
            $('.description:last').val('');
            $('.image:last').val('');


            $(".date").datetimepicker({
                format: 'DD/MM/YYYY'
            });
            e.preventDefault();
        });



        $("#press-add-form").validate({});
    });

    function removeRow(current) {
        current.parentElement.parentElement.parentElement.parentElement.remove();
    }


</script>
@endpush
