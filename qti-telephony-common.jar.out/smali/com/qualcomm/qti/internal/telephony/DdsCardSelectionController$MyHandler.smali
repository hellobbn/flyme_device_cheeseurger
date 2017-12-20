.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;
.super Landroid/os/Handler;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 440
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 439
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 447
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "not support this handle msg.what = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 450
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V

    goto :goto_0

    .line 453
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSimAbsentforSelectMultiMode(I)V

    goto :goto_0

    .line 456
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_RADIO_NOT_AVAILABLE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 458
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v9, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 459
    .local v9, "phoneId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    goto :goto_0

    .line 462
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "phoneId":Ljava/lang/Integer;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_GET_ICC_STATUS_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 464
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 465
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 468
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "index":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 471
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_SET_GW_PERF_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v17, 0x12

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    .line 473
    .local v14, "response":Landroid/os/Message;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 474
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 475
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 478
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "response":Landroid/os/Message;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 479
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 480
    .restart local v9    # "phoneId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v16, v16, v17

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x11

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 483
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "phoneId":Ljava/lang/Integer;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 484
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/RadioCapability;

    .line 485
    .local v12, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "get phone radio capability fail,no need to change RadioCapability"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;

    move-result-object v16

    invoke-virtual {v12}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v17

    aput-object v12, v16, v17

    goto/16 :goto_0

    .line 494
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PRI_PERF_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    .line 496
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 497
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 501
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_TEST_CARD_DETECT recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get1()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 522
    :cond_2
    const/16 v16, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 523
    const-wide/16 v16, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 504
    :cond_3
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set1(Z)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 506
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    const/16 v19, 0x2

    .line 505
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 507
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    .line 508
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "switch Antenna failed, retry it"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 511
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 512
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 516
    :cond_4
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 517
    const-wide/16 v16, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 528
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_ANTENNA_SWITCH_RETRY recv  retry_times "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 530
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    const/16 v19, 0x2

    .line 529
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 531
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "retry switch Antenna failed, again retry"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 534
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 535
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 542
    :cond_5
    :goto_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    goto/16 :goto_0

    .line 537
    :cond_6
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 539
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 540
    const-wide/16 v16, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 545
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_GET_ANTENNA_POS recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 547
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    const/16 v19, 0x2

    .line 546
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    .line 548
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "retry switch Antenna failed, again retry"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 551
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 552
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 554
    :cond_7
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 556
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 557
    .local v5, "buf":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "current antenna pos status is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-byte v18, v5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 558
    const/16 v16, 0x0

    aget-byte v16, v5, v16

    if-eqz v16, :cond_0

    .line 560
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 561
    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 567
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "buf":[B
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V

    goto/16 :goto_0

    .line 571
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 575
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_SIM_LOADED_DONE"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v6

    .line 578
    .local v6, "dataSubId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v10

    .line 579
    .local v10, "primaryPhoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v11

    .line 580
    .local v11, "primarySubId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_LOADED_DONE dataSubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " primaryPhoneId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " primarySubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 581
    const/16 v16, 0x0

    aget v16, v11, v16

    move/from16 v0, v16

    if-eq v0, v6, :cond_8

    .line 582
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v8

    .line 583
    .local v8, "isSubActive":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_LOADED_DONE setDefaultDataSubId isSubActive = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "primarySubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 584
    if-eqz v8, :cond_8

    .line 585
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 589
    .end local v8    # "isSubActive":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 594
    .end local v6    # "dataSubId":I
    .end local v10    # "primaryPhoneId":I
    .end local v11    # "primarySubId":[I
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    .line 595
    .local v15, "stateChange":Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->active:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "OEM_EVENT_TETHER_STATE_CHANGE receive isWifiHotOpen = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 602
    .end local v15    # "stateChange":Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PSENSOR_CHANGE receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 603
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 609
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PHONE_OBJECT_SWITCH receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 612
    :cond_a
    const/16 v16, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 613
    const-wide/16 v16, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 618
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 622
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 623
    return-void

    .line 625
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 628
    :pswitch_14
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 631
    :pswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v13, 0x0

    .line 632
    .local v13, "reject_efs_sync":B
    :goto_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get0()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UPDATE_EFS_SYNC_FLAG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 635
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-byte v13, v18, v19

    const/16 v19, 0x1

    .line 634
    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    .line 637
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 631
    .end local v13    # "reject_efs_sync":B
    :cond_d
    const/4 v13, 0x1

    .restart local v13    # "reject_efs_sync":B
    goto :goto_3

    .line 640
    .end local v13    # "reject_efs_sync":B
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_WAKE_LOCK_TIMEOUT receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_10
        :pswitch_16
    .end packed-switch

    .line 506
    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 530
    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 547
    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
