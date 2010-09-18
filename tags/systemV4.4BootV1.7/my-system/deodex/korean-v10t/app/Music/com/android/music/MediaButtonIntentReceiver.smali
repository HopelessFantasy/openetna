.class public Lcom/android/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static final MSG_LONGPRESS_TIMEOUT:I = 0x1

.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 40
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    .line 41
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 43
    new-instance v0, Lcom/android/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/android/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    sput-boolean p0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, intentAction:Ljava/lang/String;
    const-string v8, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 66
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v5, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v5, i:Landroid/content/Intent;
    const-string v8, "com.android.music.musicservicecommand"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v8, "command"

    const-string v9, "pause"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    .end local v5           #i:Landroid/content/Intent;
    :cond_22
    :goto_22
    return-void

    .line 70
    :cond_23
    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 71
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 74
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_22

    .line 78
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 79
    .local v7, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 80
    .local v0, action:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 86
    .local v3, eventtime:J
    const/4 v1, 0x0

    .line 87
    .local v1, command:Ljava/lang/String;
    packed-switch v7, :pswitch_data_c8

    .line 103
    :goto_45
    :pswitch_45
    if-eqz v1, :cond_22

    .line 104
    if-nez v0, :cond_bd

    .line 105
    sget-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v8, :cond_83

    .line 106
    const-string v8, "togglepause"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    sget-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_73

    sget-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_73

    .line 109
    sget-object v8, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/android/music/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_22

    .line 89
    :pswitch_77
    const-string v1, "stop"

    .line 90
    goto :goto_45

    .line 93
    :pswitch_7a
    const-string v1, "togglepause"

    .line 94
    goto :goto_45

    .line 96
    :pswitch_7d
    const-string v1, "next"

    .line 97
    goto :goto_45

    .line 99
    :pswitch_80
    const-string v1, "previous"

    goto :goto_45

    .line 117
    :cond_83
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v5, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v5       #i:Landroid/content/Intent;
    const-string v8, "com.android.music.musicservicecommand"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/16 v8, 0x4f

    if-ne v7, v8, :cond_b2

    sget-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x12c

    cmp-long v8, v8, v10

    if-gez v8, :cond_b2

    .line 121
    const-string v8, "command"

    const-string v9, "next"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    const-wide/16 v8, 0x0

    sput-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 130
    :goto_ab
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 131
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_73

    .line 125
    :cond_b2
    const-string v8, "command"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    sput-wide v3, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_ab

    .line 134
    .end local v5           #i:Landroid/content/Intent;
    :cond_bd
    sget-object v8, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_73

    .line 87
    nop

    :pswitch_data_c8
    .packed-switch 0x4f
        :pswitch_7a
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_7a
        :pswitch_77
        :pswitch_7d
        :pswitch_80
    .end packed-switch
.end method
