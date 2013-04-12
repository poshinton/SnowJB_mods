.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 911
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 912
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 913
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 915
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 919
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 920
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    const-string v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 927
    .local v1, zone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 928
    .local v0, gmtOffset:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    const v4, 0xea60

    div-int v4, v0, v4

    neg-int v4, v4

    #calls: Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I
    invoke-static {v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;II)I

    .line 929
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 953
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 954
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 955
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 956
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 957
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 958
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 959
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 961
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 962
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 10

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    .line 934
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 935
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 936
    .local v1, currentTime:J
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 937
    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 941
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 942
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 946
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 948
    .local v3, tickEventDelay:J
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v6, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 950
    return-void
.end method