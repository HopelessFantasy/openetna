.class public Lcom/android/internal/app/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "NetInitiatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;
    }
.end annotation


# static fields
.field public static final BUTTON_TEXT_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final BUTTON_TEXT_DENY:Ljava/lang/String; = "Deny"

.field private static final DEBUG:Z = true

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetInitiatedActivity"

.field private static final VERBOSE:Z


# instance fields
.field private mDefaultResponse:I

.field private mHandler:Landroid/os/Handler;

.field private mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationId:I

.field private mStartTime:J

.field private mTimeout:I

.field private mUpdateTimeTask:Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNotificationId:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mTimeout:I

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mStartTime:J

    .line 86
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$1;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$2;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mUpdateTimeTask:Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->handleNIVerify(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/NetInitiatedActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/NetInitiatedActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mTimeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/NetInitiatedActivity;)Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mUpdateTimeTask:Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/NetInitiatedActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/NetInitiatedActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/NetInitiatedActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/app/NetInitiatedActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/NetInitiatedActivity;->finishDialog()V

    return-void
.end method

.method private declared-synchronized finishDialog()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 230
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->mUpdateTimeTask:Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNotificationId:I

    if-eq v0, v2, :cond_13

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNotificationId:I

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 236
    :cond_13
    monitor-exit p0

    return-void

    .line 230
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNIVerify(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 248
    const-string v1, "notif_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, notifId:I
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNotificationId:I

    .line 251
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNIVerify action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private sendUserResponse(I)V
    .registers 6
    .parameter "response"

    .prologue
    .line 240
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUserResponse, response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 244
    .local v0, locationManager:Landroid/location/LocationManager;
    iget v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNotificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    .line 245
    return-void
.end method

.method private showNIError()V
    .registers 3

    .prologue
    .line 256
    const-string v0, "NI error"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 216
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 219
    :cond_7
    const/4 v0, -0x2

    if-ne p2, v0, :cond_e

    .line 220
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 224
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/app/NetInitiatedActivity;->finishDialog()V

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 171
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 172
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x1080027

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 173
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 174
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 175
    const-string v2, "Accept"

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 176
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    const-string v2, "Deny"

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 178
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 180
    const-string v2, "notif_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNotificationId:I

    .line 181
    const-string v2, "timeout"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mTimeout:I

    .line 182
    const-string v2, "default_resp"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    .line 185
    const-string v2, "NetInitiatedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate, notifId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNotificationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->mTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mStartTime:J

    .line 189
    iget-object v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->mUpdateTimeTask:Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->mUpdateTimeTask:Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->setupAlert()V

    .line 194
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 207
    const-string v0, "NetInitiatedActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 200
    const-string v0, "NetInitiatedActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_INITIATED_VERIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void
.end method
