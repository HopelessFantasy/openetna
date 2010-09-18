.class Lcom/android/server/MountService;
.super Landroid/os/IMountService$Stub;
.source "MountService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MountService"


# instance fields
.field private mAutoStartUms:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/server/MountListener;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mMounted:Z

.field private mNotificationId:I

.field private mPlaySounds:Z

.field private mShowSafeUnmountNotificationWhenUnmounted:Z

.field private mUsbStorageNotification:Landroid/app/Notification;

.field private mountPointList:Ljava/lang/String;

.field private final notificationInitId:I

.field private final notificationMaxId:I

.field private final usbMountPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/16 v2, 0x1000

    const-string v3, "1"

    .line 102
    invoke-direct {p0}, Landroid/os/IMountService$Stub;-><init>()V

    .line 50
    const-string v1, "/data/"

    iput-object v1, p0, Lcom/android/server/MountService;->usbMountPath:Ljava/lang/String;

    .line 52
    const/16 v1, 0x2000

    iput v1, p0, Lcom/android/server/MountService;->notificationMaxId:I

    .line 54
    iput v2, p0, Lcom/android/server/MountService;->notificationInitId:I

    .line 126
    new-instance v1, Lcom/android/server/MountService$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 104
    iput v2, p0, Lcom/android/server/MountService;->mNotificationId:I

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance v1, Lcom/android/server/MountListener;

    invoke-direct {v1, p0}, Lcom/android/server/MountListener;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    .line 121
    const-string v1, "persist.service.mount.playsnd"

    const-string v2, "1"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/MountService;->mPlaySounds:Z

    .line 123
    const-string v1, "persist.service.mount.umsauto"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/MountService;->mAutoStartUms:Z

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    return-object v0
.end method

.method private declared-synchronized getMediaStorageNotificationDismissable()Z
    .registers 3

    .prologue
    .line 627
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_12

    .line 630
    const/4 v0, 0x1

    .line 632
    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 627
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private modifyMountPointList(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 10
    .parameter "path"
    .parameter "remove"

    .prologue
    const-string v6, ":"

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, mount_point_value:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 153
    iget-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 154
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    .line 178
    :cond_2a
    :goto_2a
    return-void

    .line 156
    :cond_2b
    iget-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    goto :goto_2a

    .line 157
    :cond_36
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 159
    iget-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    if-nez v4, :cond_43

    .line 160
    iput-object v2, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    goto :goto_2a

    .line 165
    :cond_43
    const/4 v1, 0x0

    .line 166
    .local v1, mountPointExist:Z
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    const-string v5, ":"

    invoke-direct {v3, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v3, st:Ljava/util/StringTokenizer;
    :cond_4d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 168
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, mountPoint:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 170
    const/4 v1, 0x1

    .line 174
    .end local v0           #mountPoint:Ljava/lang/String;
    :cond_5e
    if-nez v1, :cond_2a

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    goto :goto_2a
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .registers 16
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"

    .prologue
    .line 679
    monitor-enter p0

    if-nez p4, :cond_9

    :try_start_3
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7f

    if-nez v6, :cond_9

    .line 737
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 683
    :cond_9
    :try_start_9
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 686
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz v3, :cond_7

    .line 690
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v6, :cond_22

    if-eqz p4, :cond_22

    .line 695
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 696
    .local v2, notificationId:I
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 699
    .end local v2           #notificationId:I
    :cond_22
    if-eqz p4, :cond_73

    .line 700
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 701
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 702
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 704
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v6, :cond_41

    .line 705
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    .line 706
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 709
    :cond_41
    iget-boolean v6, p0, Lcom/android/server/MountService;->mPlaySounds:Z

    if-eqz v6, :cond_82

    .line 710
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 715
    :goto_4d
    if-eqz p5, :cond_8b

    .line 716
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 721
    :goto_55
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 722
    if-nez p6, :cond_68

    .line 723
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 724
    .local v0, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 727
    .end local v0           #intent:Landroid/content/Intent;
    :cond_68
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v6, Landroid/app/Notification;->icon:I

    .line 728
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 731
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_73
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 732
    .restart local v2       #notificationId:I
    if-eqz p4, :cond_91

    .line 733
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_7f

    goto :goto_7

    .line 679
    .end local v2           #notificationId:I
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :catchall_7f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 712
    .restart local v1       #message:Ljava/lang/CharSequence;
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #r:Landroid/content/res/Resources;
    .restart local v5       #title:Ljava/lang/CharSequence;
    :cond_82
    :try_start_82
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    goto :goto_4d

    .line 718
    :cond_8b
    iget-object v6, p0, Lcom/android/server/MountService;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    goto :goto_55

    .line 735
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    .restart local v2       #notificationId:I
    :cond_91
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_94
    .catchall {:try_start_82 .. :try_end_94} :catchall_7f

    goto/16 :goto_7
.end method

.method private declared-synchronized setSpeedMismatchNotification(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 16
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "path"
    .parameter "pi"

    .prologue
    .line 643
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_65

    .line 646
    .local v4, notificationManager:Landroid/app/NotificationManager;
    if-nez v4, :cond_f

    .line 671
    :goto_d
    monitor-exit p0

    return-void

    .line 649
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 650
    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 652
    .local v6, title:Ljava/lang/CharSequence;
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, msgstr:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 655
    .local v2, message:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 656
    .local v1, mSpeedMismatchNotification:Landroid/app/Notification;
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Landroid/app/Notification;->when:J

    .line 658
    const/16 v7, 0x10

    iput v7, v1, Landroid/app/Notification;->flags:I

    .line 659
    iput-object v6, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 660
    if-nez p5, :cond_4a

    .line 661
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 662
    .local v0, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    .line 665
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4a
    iput p3, v1, Landroid/app/Notification;->icon:I

    .line 666
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v6, v2, p5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 668
    iget v7, p0, Lcom/android/server/MountService;->mNotificationId:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/server/MountService;->mNotificationId:I

    const/16 v8, 0x2000

    if-le v7, v8, :cond_5f

    .line 669
    const/16 v7, 0x1000

    iput v7, p0, Lcom/android/server/MountService;->mNotificationId:I

    .line 670
    :cond_5f
    iget v7, p0, Lcom/android/server/MountService;->mNotificationId:I

    invoke-virtual {v4, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_64
    .catchall {:try_start_f .. :try_end_64} :catchall_65

    goto :goto_d

    .line 643
    .end local v1           #mSpeedMismatchNotification:Landroid/app/Notification;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #msgstr:Ljava/lang/String;
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    :catchall_65
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .registers 16
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 579
    monitor-enter p0

    if-nez p5, :cond_9

    :try_start_3
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_71

    if-nez v6, :cond_9

    .line 624
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 583
    :cond_9
    :try_start_9
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 586
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz v3, :cond_7

    .line 590
    if-eqz p5, :cond_65

    .line 591
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 592
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 593
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 595
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v6, :cond_38

    .line 596
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    .line 597
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    iput p3, v6, Landroid/app/Notification;->icon:I

    .line 598
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 601
    :cond_38
    if-eqz p4, :cond_74

    iget-boolean v6, p0, Lcom/android/server/MountService;->mPlaySounds:Z

    if-eqz v6, :cond_74

    .line 602
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 607
    :goto_46
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 609
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 610
    if-nez p6, :cond_5e

    .line 611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 612
    .local v0, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 615
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5e
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 618
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_65
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 619
    .local v2, notificationId:I
    if-eqz p5, :cond_7d

    .line 620
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_70
    .catchall {:try_start_9 .. :try_end_70} :catchall_71

    goto :goto_7

    .line 579
    .end local v2           #notificationId:I
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :catchall_71
    move-exception v6

    monitor-exit p0

    throw v6

    .line 604
    .restart local v1       #message:Ljava/lang/CharSequence;
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #r:Landroid/content/res/Resources;
    .restart local v5       #title:Ljava/lang/CharSequence;
    :cond_74
    :try_start_74
    iget-object v6, p0, Lcom/android/server/MountService;->mUsbStorageNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    goto :goto_46

    .line 622
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    .restart local v2       #notificationId:I
    :cond_7d
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_71

    goto :goto_7
.end method


# virtual methods
.method public formatMedia(Ljava/lang/String;)V
    .registers 4
    .parameter "formatPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 239
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MOUNT_FORMAT_FILESYSTEMS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_12
    iget-object v0, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    invoke-virtual {v0, p1}, Lcom/android/server/MountListener;->formatMedia(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public getAutoStartUms()Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/server/MountService;->mAutoStartUms:Z

    return v0
.end method

.method public getMassStorageConnected()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    invoke-virtual {v0}, Lcom/android/server/MountListener;->getMassStorageConnected()Z

    move-result v0

    return v0
.end method

.method public getMassStorageEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    invoke-virtual {v0}, Lcom/android/server/MountListener;->getMassStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public getMountPointList()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/MountService;->mountPointList:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayNotificationSounds()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/server/MountService;->mPlaySounds:Z

    return v0
.end method

.method handlePossibleExplicitUnmountBroadcast(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 310
    iget-boolean v1, p0, Lcom/android/server/MountService;->mMounted:Z

    if-eqz v1, :cond_2a

    .line 311
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/MountService;->mMounted:Z

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2a
    return-void
.end method

.method public mountMedia(Ljava/lang/String;)V
    .registers 4
    .parameter "mountPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 210
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MOUNT_UNMOUNT_FILESYSTEMS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_12
    iget-object v0, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    invoke-virtual {v0, p1}, Lcom/android/server/MountListener;->mountMedia(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method notifyMediaBadRemoval(Ljava/lang/String;)V
    .registers 22
    .parameter "path"

    .prologue
    .line 495
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->modifyMountPointList(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 497
    const/4 v5, 0x0

    const-string v6, "/data/"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 498
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-class v6, Lcom/android/internal/app/UsbStorageStopActivity;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 501
    .local v11, pi:Landroid/app/PendingIntent;
    const v6, 0x10402d3

    const v7, 0x10402d4

    const v8, 0x108008a

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 512
    .end local v11           #pi:Landroid/app/PendingIntent;
    .end local v19           #intent:Landroid/content/Intent;
    :goto_51
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MountService;->handlePossibleExplicitUnmountBroadcast(Ljava/lang/String;)V

    .line 514
    new-instance v19, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 520
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 521
    return-void

    .line 506
    .end local v19           #intent:Landroid/content/Intent;
    :cond_b5
    const v13, 0x10402ed

    const v14, 0x10402ee

    const v15, 0x108008a

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_51
.end method

.method notifyMediaChecking(Ljava/lang/String;)V
    .registers 22
    .parameter "path"

    .prologue
    .line 420
    const/4 v5, 0x0

    const-string v6, "/data/"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 421
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-class v6, Lcom/android/internal/app/UsbStorageStopActivity;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 424
    .local v11, pi:Landroid/app/PendingIntent;
    const v6, 0x10402cd

    const v7, 0x10402ce

    const v8, 0x108008a

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 436
    .end local v11           #pi:Landroid/app/PendingIntent;
    .end local v19           #intent:Landroid/content/Intent;
    :goto_44
    new-instance v19, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_CHECKING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 438
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void

    .line 429
    .end local v19           #intent:Landroid/content/Intent;
    :cond_75
    const v13, 0x10402e7

    const v14, 0x10402e8

    const v15, 0x1080222

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_44
.end method

.method notifyMediaEject(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method notifyMediaMounted(Ljava/lang/String;Z)V
    .registers 11
    .parameter "path"
    .parameter "readOnly"

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/MountService;->modifyMountPointList(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 465
    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 466
    invoke-virtual {p0, v1, v1}, Lcom/android/server/MountService;->updateUsbMassStorageNotification(ZZ)V

    .line 467
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 469
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "read-only"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mMounted:Z

    .line 471
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 472
    return-void
.end method

.method notifyMediaNoFs(Ljava/lang/String;)V
    .registers 10
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 446
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 448
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 450
    .local v6, pi:Landroid/app/PendingIntent;
    const v1, 0x10402e9

    const v2, 0x10402ea

    const v3, 0x1080257

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 454
    invoke-virtual {p0, v5, v5}, Lcom/android/server/MountService;->updateUsbMassStorageNotification(ZZ)V

    .line 455
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.MEDIA_NOFS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 457
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method notifyMediaRemoved(Ljava/lang/String;)V
    .registers 22
    .parameter "path"

    .prologue
    .line 361
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService;->updateUsbMassStorageNotification(ZZ)V

    .line 362
    const/4 v5, 0x0

    const-string v6, "/data/"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 363
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-class v6, Lcom/android/internal/app/UsbStorageStopActivity;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 366
    .local v11, pi:Landroid/app/PendingIntent;
    const v6, 0x10402cf

    const v7, 0x10402d0

    const v8, 0x108008a

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 377
    .end local v11           #pi:Landroid/app/PendingIntent;
    .end local v19           #intent:Landroid/content/Intent;
    :goto_4d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MountService;->handlePossibleExplicitUnmountBroadcast(Ljava/lang/String;)V

    .line 379
    new-instance v19, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_REMOVED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 381
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    return-void

    .line 371
    .end local v19           #intent:Landroid/content/Intent;
    :cond_81
    const v13, 0x10402f1

    const v14, 0x10402f2

    const v15, 0x1080257

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_4d
.end method

.method notifyMediaShared(Ljava/lang/String;)V
    .registers 10
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 478
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 479
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/internal/app/UsbStorageStopActivity;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 480
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v7, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 481
    .local v6, pi:Landroid/app/PendingIntent;
    const v1, 0x10402cb

    const v2, 0x10402cc

    const v3, 0x108008a

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->handlePossibleExplicitUnmountBroadcast(Ljava/lang/String;)V

    .line 486
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.MEDIA_SHARED"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 488
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    return-void
.end method

.method notifyMediaUnmountable(Ljava/lang/String;)V
    .registers 10
    .parameter "path"

    .prologue
    .line 527
    const/4 v0, 0x0

    const-string v1, "/data/"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 528
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 529
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/internal/app/UsbStorageStopActivity;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 530
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 531
    .local v6, pi:Landroid/app/PendingIntent;
    const v1, 0x10402d5

    const v2, 0x10402d5

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 544
    :goto_2e
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MountService;->updateUsbMassStorageNotification(ZZ)V

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->handlePossibleExplicitUnmountBroadcast(Ljava/lang/String;)V

    .line 548
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 550
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    return-void

    .line 536
    .end local v6           #pi:Landroid/app/PendingIntent;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_5a
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 537
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 538
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 539
    .restart local v6       #pi:Landroid/app/PendingIntent;
    const v1, 0x10402eb

    const v2, 0x10402ec

    const v3, 0x1080257

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_2e
.end method

.method notifyMediaUnmounted(Ljava/lang/String;)V
    .registers 22
    .parameter "path"

    .prologue
    .line 388
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->modifyMountPointList(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    move v5, v0

    if-eqz v5, :cond_a4

    .line 390
    const/4 v5, 0x0

    const-string v6, "/data/"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 391
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-class v6, Lcom/android/internal/app/UsbStorageStopActivity;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 394
    .local v11, pi:Landroid/app/PendingIntent;
    const v6, 0x10402d1

    const v7, 0x10402d2

    const v8, 0x108008a

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 405
    .end local v11           #pi:Landroid/app/PendingIntent;
    .end local v19           #intent:Landroid/content/Intent;
    :goto_58
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    .line 410
    :goto_5e
    new-instance v19, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 412
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    return-void

    .line 399
    .end local v19           #intent:Landroid/content/Intent;
    :cond_8f
    const v13, 0x10402ef

    const v14, 0x10402f0

    const v15, 0x1080222

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_58

    .line 407
    :cond_a4
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/server/MountService;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_5e
.end method

.method notifySpeedMismatch(Ljava/lang/String;)V
    .registers 8
    .parameter "path"

    .prologue
    .line 567
    const v1, 0x10402db

    const v2, 0x10402dc

    const v3, 0x108024d

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService;->setSpeedMismatchNotification(IIILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 571
    return-void
.end method

.method notifyUmsConnected()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, storageState:Ljava/lang/String;
    const-string v0, "removed"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "bad_removal"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "checking"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 327
    iget-boolean v0, p0, Lcom/android/server/MountService;->mAutoStartUms:Z

    if-eqz v0, :cond_56

    .line 329
    :try_start_22
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/internal/app/UsbStorageStopActivity;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 332
    .local v6, pi:Landroid/app/PendingIntent;
    const v1, 0x10402cd

    const v2, 0x10402ce

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->setMassStorageEnabled(Z)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_49} :catch_5a

    .line 344
    .end local v6           #pi:Landroid/app/PendingIntent;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_49
    :goto_49
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.UMS_CONNECTED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    return-void

    .line 340
    .end local v7           #intent:Landroid/content/Intent;
    :cond_56
    invoke-virtual {p0, v1, v2}, Lcom/android/server/MountService;->updateUsbMassStorageNotification(ZZ)V

    goto :goto_49

    .line 337
    :catch_5a
    move-exception v0

    goto :goto_49
.end method

.method notifyUmsDisconnected()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0, v1, v1}, Lcom/android/server/MountService;->updateUsbMassStorageNotification(ZZ)V

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UMS_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public setAutoStartUms(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 279
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_12
    iput-boolean p1, p0, Lcom/android/server/MountService;->mAutoStartUms:Z

    .line 282
    const-string v0, "persist.service.mount.umsauto"

    if-eqz p1, :cond_1e

    const-string v1, "1"

    :goto_1a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 282
    :cond_1e
    const-string v1, "0"

    goto :goto_1a
.end method

.method public setMassStorageEnabled(Z)V
    .registers 3
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    invoke-virtual {v0, p1}, Lcom/android/server/MountListener;->setMassStorageEnabled(Z)V

    .line 194
    return-void
.end method

.method public setPlayNotificationSounds(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 259
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_12
    iput-boolean p1, p0, Lcom/android/server/MountService;->mPlaySounds:Z

    .line 262
    const-string v0, "persist.service.mount.playsnd"

    if-eqz p1, :cond_1e

    const-string v1, "1"

    :goto_1a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 262
    :cond_1e
    const-string v1, "0"

    goto :goto_1a
.end method

.method public unmountMedia(Ljava/lang/String;)V
    .registers 4
    .parameter "mountPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 222
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MOUNT_UNMOUNT_FILESYSTEMS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/MountService;->mListener:Lcom/android/server/MountListener;

    invoke-virtual {v0, p1}, Lcom/android/server/MountListener;->ejectMedia(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method updateUsbMassStorageNotification(ZZ)V
    .registers 18
    .parameter "suppressIfConnected"
    .parameter "sound"

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/MountService;->getMassStorageConnected()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez p1, :cond_2d

    .line 293
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v14, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/internal/app/UsbStorageActivity;

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 296
    .local v6, pi:Landroid/app/PendingIntent;
    const v1, 0x10402c9

    const v2, 0x10402ca

    const v3, 0x108024d

    const/4 v5, 0x1

    move-object v0, p0

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 307
    .end local v6           #pi:Landroid/app/PendingIntent;
    .end local v14           #intent:Landroid/content/Intent;
    :goto_2c
    return-void

    .line 302
    :cond_2d
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/MountService;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_2c

    .line 304
    :catch_38
    move-exception v0

    goto :goto_2c
.end method
