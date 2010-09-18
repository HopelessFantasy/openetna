.class public Lcom/lge/large/poweroff/PowerOff;
.super Landroid/app/Activity;
.source "PowerOff.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerOff"

.field private static final sPhone:Lcom/android/internal/telephony/ITelephony;


# instance fields
.field private finish_next:I

.field private mDrawableArray:Landroid/content/res/TypedArray;

.field private mHandler:Landroid/os/Handler;

.field public mImageView:Landroid/widget/ImageView;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNumsOfImages:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/lge/large/poweroff/PowerOff;->sPhone:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/lge/large/poweroff/PowerOff;->mImageView:Landroid/widget/ImageView;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/large/poweroff/PowerOff;->finish_next:I

    .line 60
    iput-object v1, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 61
    iput-object v1, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/large/poweroff/PowerOff;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/large/poweroff/PowerOff;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lge/large/poweroff/PowerOff;->initPowerOffAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/large/poweroff/PowerOff;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/large/poweroff/PowerOff;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized disableKeyguard()V
    .registers 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_14

    .line 275
    iget-object v0, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "PowerOff"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 276
    iget-object v0, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 278
    :cond_14
    monitor-exit p0

    return-void

    .line 274
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final initPowerOffAnimation()V
    .registers 6

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    .local v0, id:I
    iget v2, p0, Lcom/lge/large/poweroff/PowerOff;->finish_next:I

    iget v3, p0, Lcom/lge/large/poweroff/PowerOff;->mNumsOfImages:I

    if-lt v2, v3, :cond_46

    .line 118
    iget-object v2, p0, Lcom/lge/large/poweroff/PowerOff;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lge/large/poweroff/PowerOff$1;

    invoke-direct {v3, p0}, Lcom/lge/large/poweroff/PowerOff$1;-><init>(Lcom/lge/large/poweroff/PowerOff;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :goto_11
    iget-object v2, p0, Lcom/lge/large/poweroff/PowerOff;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v2, p0, Lcom/lge/large/poweroff/PowerOff;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    new-instance v1, Lcom/lge/large/poweroff/PowerOff$2;

    invoke-direct {v1, p0}, Lcom/lge/large/poweroff/PowerOff$2;-><init>(Lcom/lge/large/poweroff/PowerOff;)V

    .line 141
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 142
    const-string v2, "PowerOff"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish_next"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/large/poweroff/PowerOff;->finish_next:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v2, p0, Lcom/lge/large/poweroff/PowerOff;->finish_next:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/large/poweroff/PowerOff;->finish_next:I

    .line 145
    return-void

    .line 123
    .end local v1           #t:Ljava/lang/Thread;
    :cond_46
    iget-object v2, p0, Lcom/lge/large/poweroff/PowerOff;->mDrawableArray:Landroid/content/res/TypedArray;

    iget v3, p0, Lcom/lge/large/poweroff/PowerOff;->finish_next:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_11
.end method


# virtual methods
.method public finishActivity()V
    .registers 10

    .prologue
    const-string v8, "shutdown"

    const-string v7, "power"

    const-string v6, "PowerOff"

    .line 166
    :try_start_6
    sget-object v3, Lcom/lge/large/poweroff/PowerOff;->sPhone:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_12

    sget-object v3, Lcom/lge/large/poweroff/PowerOff;->sPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-nez v3, :cond_60

    :cond_12
    const/4 v3, 0x1

    move v2, v3

    .line 167
    .local v2, radioOff:Z
    :goto_14
    const-string v3, "PowerOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishActivity-radioOff"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-nez v2, :cond_63

    .line 169
    const-string v3, "PowerOff"

    const-string v4, "Call setRadioPowerOff"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v3, Lcom/lge/large/poweroff/PowerOff;->sPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->setRadioPowerOff()Z

    .line 171
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/lge/large/poweroff/PowerOff;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 172
    .local v1, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 173
    const-string v3, "PowerOff"

    const-string v4, "finish-shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_50} :catch_7d

    .line 175
    const-wide/16 v3, 0x2710

    :try_start_52
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_a1
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_7d

    .line 178
    :goto_55
    :try_start_55
    const-string v3, "PowerOff"

    const-string v4, "finish-shutdown-after sleep"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_7d

    .line 206
    :goto_5c
    invoke-virtual {p0}, Lcom/lge/large/poweroff/PowerOff;->finish()V

    .line 207
    return-void

    .line 166
    .end local v1           #pm:Landroid/os/PowerManager;
    .end local v2           #radioOff:Z
    :cond_60
    const/4 v3, 0x0

    move v2, v3

    goto :goto_14

    .line 184
    .restart local v2       #radioOff:Z
    :cond_63
    :try_start_63
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/lge/large/poweroff/PowerOff;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 185
    .restart local v1       #pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 186
    const-string v3, "PowerOff"

    const-string v4, "shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Landroid/os/PowerManager;->shutdown()V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_7c} :catch_7d

    goto :goto_5c

    .line 189
    .end local v1           #pm:Landroid/os/PowerManager;
    .end local v2           #radioOff:Z
    :catch_7d
    move-exception v3

    move-object v0, v3

    .line 190
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "PowerOff"

    const-string v3, "RemoteException during radio shutdown - PowerOff"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v2, 0x1

    .line 192
    .restart local v2       #radioOff:Z
    const-string v3, "power"

    invoke-virtual {p0, v7}, Lcom/lge/large/poweroff/PowerOff;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 193
    .restart local v1       #pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 194
    const-string v3, "PowerOff"

    const-string v3, "shutdown"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v1}, Landroid/os/PowerManager;->shutdown()V

    goto :goto_5c

    .line 176
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_a1
    move-exception v3

    goto :goto_55
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/16 v2, 0x400

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/large/poweroff/PowerOff;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 94
    .local v0, wp:Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 97
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/lge/large/poweroff/PowerOff;->setContentView(I)V

    .line 98
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/lge/large/poweroff/PowerOff;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/large/poweroff/PowerOff;->mImageView:Landroid/widget/ImageView;

    .line 106
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/lge/large/poweroff/PowerOff;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 109
    invoke-virtual {p0}, Lcom/lge/large/poweroff/PowerOff;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/large/poweroff/PowerOff;->mDrawableArray:Landroid/content/res/TypedArray;

    .line 110
    iget-object v1, p0, Lcom/lge/large/poweroff/PowerOff;->mDrawableArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    iput v1, p0, Lcom/lge/large/poweroff/PowerOff;->mNumsOfImages:I

    .line 111
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 254
    const-string v0, "PowerOff"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    const-string v0, "PowerOff"

    const-string v1, "turning keyguard off, set to long timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/lge/large/poweroff/PowerOff;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/lge/large/poweroff/PowerOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 232
    invoke-direct {p0}, Lcom/lge/large/poweroff/PowerOff;->disableKeyguard()V

    .line 233
    invoke-direct {p0}, Lcom/lge/large/poweroff/PowerOff;->initPowerOffAnimation()V

    .line 234
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 240
    return-void
.end method
