@extends('website.profile_layouts.app')


@section('profile-content')

<?php $user_name=Auth::user()->name;?>
   <div class="small-device-padding">
       <div class="col-md-9">
           <div id="post-wrapper">
               <div class="row">
                   <div class="col-md-12">
                       <div class="post-list">
                           <div class="post-create">
                               <a data-toggle="modal" data-target="#AddModal" class="btn theme-btn btn-block">
                                   <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                   New Donation
                               </a>
                           </div>

                           <div class="post-content">
                              @if(count($inboxes)<'1')
                                <div style="text-align: center">
                                  <h4>Your have no donations</h4>
                                </div>
                              @else
                                 @foreach($inboxes as $key=>$inbox)
                                 <div class="panel panel-default">
                                     <div class="panel-heading">
                                         <h3 class="panel-title">{{ $inbox->sector->name or null}} : {{ $inbox->created_at }}</h3>
                                         <div class="post-action">
                                             <!-- <a href="#">
                                                 <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                             </a> -->
                                             @if($inbox->status<'3')
                                             <a href="{{ url('donors/delete_post/0/'.$inbox->id)}}" class="confirm">
                                                 <i class="fa fa-trash" aria-hidden="true"></i>
                                             </a>
                                             @else
                                             <a href="{{ url('donors/receipt/'.$inbox->id)}}" class="">Receipt <i class="fa fa-download"></i></a>
                                             @endif

                                         </div>
                                     </div>
                                     <div class="panel-body">
                                         <div class="post-content-inner">
                                             <div class="post-content-inner-left">
                                                 <ul class="list-group">
                                                     <li class="list-group-item"><span class="post-field-title">Amount :</span> {{ $inbox->amount or null}} {{ $inbox->currency->currency_code or null}}</li>
                                                     <li class="list-group-item"><span class="post-field-title">Payment :</span> {{ $inbox->payment_method->name or null}}</li>
                                                     <li class="list-group-item"><span class="post-field-title">Status :</span>

                                                     @if($inbox->status==1)
                                                        <span class="draft-span">Draft</span> 
                                                     @elseif($inbox->status==2) 
                                                        <span class="clarification-span">Need Clarification</span>  
                                                     @else
                                                        <span class="approved-span"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> Approved</span> 
                                                     @endif
                                                     </li>
                                                     <li class="list-group-item">
                                                         <span class="post-field-title">Attachment :</span>
                                                         @if(!empty($inbox->attachment))
                                                             <a href="{{ url($inbox->attachment)}}"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                         @endif
                                                     </li>

                                                 </ul>

                                                 <div class="message-box">
                                                     @if(!empty($inbox->donor_message))
                                                         <pre>{{ $inbox->donor_message or null}}</pre>
                                                      @endif
                                                 </div>

                                             </div>
                                             <?php
                                                $inbox_chats=$inbox->inboxChat;
                                              ?>

                                             <div class="post-content-inner-right">
                                                 @if(count($inbox_chats)=='0' && $inbox->status>'2') 
                                                    <h2>Thanks for donation</h2>
                                                 @else 
                                                 <div class="panel panel-default">
                                                     <div class="panel-body">
                                                        
                                                         
                                                         <div class="scroll-chat-box-wrapper">
                                                             <div class="scroll-chat-box">
                                                                 
                                                                 @foreach($inbox_chats as $inbox_chat)
                                                                     @if($inbox_chat->is_admin==1)
                                                                         <div  style="background: #f6f8fa; padding: 10px; margin-bottom: 10px" class="media">
                                                                             <div class="media-body">
                                                                                 <h4 class="media-heading" style="color: #f69033">Bidyanondo <small><i>{{ $inbox_chat->created_at or null }}</i></small></h4>

                                                                                 @if($inbox_chat->is_file==1)
                                                                                     <a href="{{ url($inbox_chat->comments)}}"><i class="fa fa-download" aria-hidden="true"></i> Click here to see the attachment</a>
                                                                                 @else
                                                                                     <pre>{{ $inbox_chat->comments or null }}</pre>
                                                                                 @endif
                                                                             </div>
                                                                         </div>
                                                                     @else
                                                                         <div class="media">
                                                                             <div class="media-body">
                                                                                 <h4 class="media-heading">{{$user_name or null}} <small><i>{{ $inbox_chat->created_at or null }}</i></small></h4>
                                                                                 @if($inbox_chat->is_file==1)
                                                                                     <a href="{{ url($inbox_chat->comments)}}"><i class="fa fa-download" aria-hidden="true"></i> Click here to see the attachment</a>
                                                                                 @else
                                                                                     <pre>{{ $inbox_chat->comments or null }}</pre>
                                                                                 @endif
                                                                             </div>
                                                                         </div>
                                                                     @endif
                                                                 @endforeach
                                                             </div>
                                                         </div>
                                                            

                                                         
                                                         @if($inbox->status<'3')

                                                         <!-- <form class="form-inline"> -->
                                                             <form method="POST" class="form-inline"
                                                                   role="form" action="{{url('/save_inbox_chat')}}" enctype="multipart/form-data">
                                                                 {{ csrf_field() }}
                                                                 <input type="hidden" name="inbox_id" value="{{ $inbox->id }}">
                                                                 <textarea placeholder="Write your comment here!" class="pb-cmnt-textarea" name="comments"></textarea>
                                                                 <input type="file" name="comment_attachment" class="comment_attachment">
                                                                 <button style="margin-top: -23px;" type="submit" class="btn btn-primary btn-sm pull-right">Send</button>

                                                             </form>
                                                         @endif
                                                     </div>
                                                 </div>
                                                 
                                                    
                                                 @endif
                                             </div>



                                         </div>
                                     </div>
                                 </div>
                                 @endforeach
                              
                              @endif
                               
                           </div>
                       </div>
                   </div>
               </div>

           </div>

       </div>
   </div>


    <!-- modal start -->
    <div class="modal fade" id="AddModal" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">@lang("messages.Add Donation")</h4>
                </div>
                {!! Form::open(['action' => 'Website\DonorsController@store','files'=>true, 'id' => 'inbox-add-form','class'=>'form-horizontal']) !!}
                <input type="hidden" name="redirect_status" value="0">
                <div class="modal-body">
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">@lang("messages.Amount")<span class="la-required">*</span>:</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" id="amount" placeholder="@lang("messages.Enter Amount")" name="amount" required="1" min="1">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">@lang("messages.Currency"):</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="currency_id" id="currency_id" required="1">
                                    <option value="">Select Currency</option>
                                    @foreach($currency_lists as $currency)
                                        <option value="{{ $currency->id }}">{{ $currency->currency_name }} ({{ $currency->currency_code }})</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">@lang("messages.Payment"):</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="payment_method_id" id="payment_method_id">
                                    @foreach($payment_methods as $payment_method)
                                        <option value="{{ $payment_method->id }}">{{ $payment_method->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">@lang("messages.Sector"):</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="sector_id" id="sector_id">
                                    @foreach($sectors as $sector)
                                        <option value="{{ $sector->id }}">{{ $sector->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">@lang("messages.Message"):</label>
                            <div class="col-sm-10">
                                <textarea  class="form-control" name="donor_message" id="donor_message" placeholder="@lang("messages.Enter Your Message")"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">@lang("messages.Attachment"):</label>
                            <div class="col-sm-10">
                                <input type="file" id="attachment" name="attachment">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">@lang('messages.Close')</button>
                    {!! Form::submit( Lang::get('messages.Save'), ['class'=>'btn btn-success']) !!}
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
    <!-- modal end -->
@endsection


@push('scripts')
<script type="text/javascript">
    $( document ).ready(function() {
         var elements = document.querySelectorAll(".scroll-chat-box");
         elements.forEach(function (element) {
             element.scrollTop = element.scrollHeight;
         });

    });

    function filter_inboxes()
    {
      var sector=$('#sector').val();
      if(!sector)
      {
        sector=0;
      }
      //var duration=$('#duration').val();
      var status_inboxes=$('#status_inboxes').val();
      var latest_inboxes=$('#latest_inboxes').val();
      var base_url=$('#base_url').val();

      window.location.href = base_url+'/donors/post/list/'+sector+'/'+status_inboxes+'/'+latest_inboxes;
    }

    /*Payment filter end*/



     


    /*Chat end*/
  $('.pb-cmnt-textarea').keydown(function(event) {
    // enter has keyCode = 13, change it if you want to use another button
    if (event.keyCode == 13) {
      this.form.submit();
      return false;
    }
  });

  $('.comment_attachment').on('change', function () {
      this.form.submit();
      return false;
  });

  $('a.confirm').confirm({
    title: 'Confirm!',
      content: "Are you sure to delete this ?",
  });

</script>
@endpush