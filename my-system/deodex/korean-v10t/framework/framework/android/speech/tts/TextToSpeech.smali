.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field public static final QUEUE_FLUSH:I

.field public static final SUCCESS:I


# instance fields
.field private mCachedParams:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITts:Landroid/speech/tts/ITts;

.field private mITtscallback:Landroid/speech/tts/ITtsCallback;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStartLock:Ljava/lang/Object;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 9
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, ""

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    .line 342
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    .line 343
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 344
    const-string v1, ""

    iput-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 345
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 346
    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 347
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 365
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 366
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 367
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 369
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    .line 370
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v2, "rate"

    aput-object v2, v1, v3

    .line 371
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "language"

    aput-object v3, v1, v2

    .line 372
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "country"

    aput-object v3, v1, v2

    .line 373
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "variant"

    aput-object v3, v1, v2

    .line 374
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "streamType"

    aput-object v3, v1, v2

    .line 375
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "utteranceId"

    aput-object v3, v1, v2

    .line 377
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 380
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 381
    .local v0, defaultLoc:Ljava/util/Locale;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 382
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 383
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 385
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 387
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v2, 0xb

    const-string v3, ""

    aput-object v5, v1, v2

    .line 389
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 390
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    return-object p1
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object p1
.end method

.method private initTts()V
    .registers 5

    .prologue
    .line 394
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 397
    new-instance v1, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_TTS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.TTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 424
    return-void
.end method

.method private resetCachedParams()V
    .registers 4

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1206
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1207
    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "earcon"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 621
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 623
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 647
    :goto_d
    return v1

    .line 626
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 627
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 628
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 632
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 633
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 647
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 634
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 636
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 638
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 639
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 648
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 640
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 642
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 644
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 645
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 574
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 576
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 600
    :goto_d
    return v1

    .line 579
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 580
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 581
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 583
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 585
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 586
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 600
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 587
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 589
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 591
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 592
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 601
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 593
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 595
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 597
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 598
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 517
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 519
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 543
    :goto_d
    return v1

    .line 522
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 523
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 524
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 528
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 529
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 543
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 530
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 532
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 534
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 535
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 544
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 536
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 538
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 540
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 541
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 470
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_e

    .line 472
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_40

    move v1, v5

    .line 496
    :goto_d
    return v1

    .line 475
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_43

    .line 476
    :try_start_15
    monitor-exit v1

    move v1, v4

    goto :goto_d

    .line 477
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 479
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 481
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 482
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 496
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v1

    move v1, v5

    goto :goto_d

    .line 483
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 485
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 487
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 488
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_2a

    .line 497
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    throw v2

    .line 489
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 491
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 493
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 494
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_40

    goto :goto_2a
.end method

.method public getLanguage()Ljava/util/Locale;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const-string v2, "TextToSpeech.java - getLanguage"

    .line 1062
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1063
    :try_start_6
    iget-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v3, :cond_d

    .line 1064
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_55

    move-object v2, v7

    .line 1092
    :goto_c
    return-object v2

    .line 1067
    :cond_d
    :try_start_d
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v3}, Landroid/speech/tts/ITts;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, locStrings:[Ljava/lang/String;
    if-eqz v1, :cond_2a

    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2a

    .line 1069
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_55
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_27} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_27} :catch_42
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_27} :catch_58

    :try_start_27
    monitor-exit v2

    move-object v2, v3

    goto :goto_c

    .line 1071
    :cond_2a
    monitor-exit v2

    move-object v2, v7

    goto :goto_c

    .line 1073
    .end local v1           #locStrings:[Ljava/lang/String;
    :catch_2d
    move-exception v3

    move-object v0, v3

    .line 1075
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1077
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1078
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 1092
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_3f
    monitor-exit v2

    move-object v2, v7

    goto :goto_c

    .line 1079
    :catch_42
    move-exception v3

    move-object v0, v3

    .line 1081
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1083
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1084
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_3f

    .line 1093
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_55
    move-exception v3

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_55

    throw v3

    .line 1085
    :catch_58
    move-exception v3

    move-object v0, v3

    .line 1087
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_5a
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1089
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1090
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_55

    goto :goto_3f
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .registers 10
    .parameter "loc"

    .prologue
    const-string v3, "TextToSpeech.java - isLanguageAvailable"

    .line 1107
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1108
    const/4 v1, -0x2

    .line 1109
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1110
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_36

    move v2, v1

    .line 1134
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 1113
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_61
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1e} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1e} :catch_4d

    move-result v1

    .line 1134
    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_36

    :goto_20
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 1115
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_22
    move-exception v4

    move-object v0, v4

    .line 1117
    .local v0, e:Landroid/os/RemoteException;
    :try_start_24
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1119
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1120
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_61

    .line 1134
    :try_start_34
    monitor-exit v3

    goto :goto_20

    .line 1136
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_36
    move-exception v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v4

    .line 1121
    :catch_39
    move-exception v4

    move-object v0, v4

    .line 1123
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3b
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1125
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1126
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_61

    .line 1134
    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_36

    goto :goto_20

    .line 1127
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v4

    move-object v0, v4

    .line 1129
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4f
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1131
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1132
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_61

    .line 1134
    :try_start_5f
    monitor-exit v3

    goto :goto_20

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_61
    move-exception v4

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_36

    goto :goto_20
.end method

.method public isSpeaking()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - isSpeaking"

    .line 834
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_6
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_d

    .line 836
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3e

    move v1, v4

    .line 859
    :goto_c
    return v1

    .line 839
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v2}, Landroid/speech/tts/ITts;->isSpeaking()Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_12} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_41

    move-result v2

    :try_start_13
    monitor-exit v1

    move v1, v2

    goto :goto_c

    .line 840
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 844
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 845
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 859
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_28
    monitor-exit v1

    move v1, v4

    goto :goto_c

    .line 846
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 848
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 850
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 851
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_28

    .line 860
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v2

    .line 852
    :catch_41
    move-exception v2

    move-object v0, v2

    .line 854
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_43
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 856
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 857
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3e

    goto :goto_28
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 12
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - playEarcon"

    .line 732
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 733
    const/4 v2, -0x1

    .line 734
    .local v2, result:I
    :try_start_6
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_d

    .line 735
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_5b

    move v3, v2

    .line 769
    .end local v2           #result:I
    .local v3, result:I
    :goto_c
    return v3

    .line 738
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_d
    if-eqz p3, :cond_35

    :try_start_f
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35

    .line 739
    const-string v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 740
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 741
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 743
    :cond_25
    const-string v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 744
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 745
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 748
    .end local v1           #extra:Ljava/lang/String;
    :cond_35
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_8c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3d} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_3d} :catch_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_3d} :catch_75

    move-result v2

    .line 768
    :try_start_3e
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 769
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_5b

    :goto_42
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_c

    .line 749
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_44
    move-exception v5

    move-object v0, v5

    .line 751
    .local v0, e:Landroid/os/RemoteException;
    :try_start_46
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 753
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 754
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_8c

    .line 768
    :try_start_56
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 769
    monitor-exit v4

    goto :goto_42

    .line 771
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_5b
    move-exception v5

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5b

    throw v5

    .line 755
    :catch_5e
    move-exception v5

    move-object v0, v5

    .line 757
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_60
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 759
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 760
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_8c

    .line 768
    :try_start_70
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 769
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_5b

    goto :goto_42

    .line 761
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_75
    move-exception v5

    move-object v0, v5

    .line 763
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_77
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 765
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 766
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_8c

    .line 768
    :try_start_87
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 769
    monitor-exit v4

    goto :goto_42

    .line 768
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_8c
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 769
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_5b

    goto :goto_42
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .registers 16
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TextToSpeech.java - playSilence"

    .line 790
    iget-object v10, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v10

    .line 791
    const/4 v8, -0x1

    .line 792
    .local v8, result:I
    :try_start_6
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v0, :cond_d

    .line 793
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_48

    move v9, v8

    .line 822
    .end local v8           #result:I
    .local v9, result:I
    :goto_c
    return v9

    .line 796
    .end local v9           #result:I
    .restart local v8       #result:I
    :cond_d
    if-eqz p4, :cond_25

    :try_start_f
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 797
    const-string v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 798
    .local v7, extra:Ljava/lang/String;
    if-eqz v7, :cond_25

    .line 799
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v7, v0, v1

    .line 802
    .end local v7           #extra:Ljava/lang/String;
    :cond_25
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITts;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_73
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_30} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_30} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_30} :catch_5f

    move-result v8

    .line 822
    :try_start_31
    monitor-exit v10
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_48

    :goto_32
    move v9, v8

    .end local v8           #result:I
    .restart local v9       #result:I
    goto :goto_c

    .line 803
    .end local v9           #result:I
    .restart local v8       #result:I
    :catch_34
    move-exception v0

    move-object v6, v0

    .line 805
    .local v6, e:Landroid/os/RemoteException;
    :try_start_36
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 808
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_73

    .line 822
    :try_start_46
    monitor-exit v10

    goto :goto_32

    .line 824
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_48
    move-exception v0

    monitor-exit v10
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    throw v0

    .line 809
    :catch_4b
    move-exception v0

    move-object v6, v0

    .line 811
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_4d
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 814
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_73

    .line 822
    :try_start_5d
    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_48

    goto :goto_32

    .line 815
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_5f
    move-exception v0

    move-object v6, v0

    .line 817
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_61
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 820
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_73

    .line 822
    :try_start_71
    monitor-exit v10

    goto :goto_32

    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catchall_73
    move-exception v0

    monitor-exit v10
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_48

    goto :goto_32
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .registers 11
    .parameter "loc"

    .prologue
    const-string v3, "TextToSpeech.java - setLanguage"

    .line 1014
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1015
    const/4 v1, -0x2

    .line 1016
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1017
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_54

    move v2, v1

    .line 1049
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 1020
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1021
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1022
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1026
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-interface {v4, v5, v6, v7}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_7f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_3c} :catch_40
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_3c} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_3c} :catch_6b

    move-result v1

    .line 1049
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_54

    :goto_3e
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 1030
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_40
    move-exception v4

    move-object v0, v4

    .line 1032
    .local v0, e:Landroid/os/RemoteException;
    :try_start_42
    const-string v4, "TextToSpeech.java - setLanguage"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1034
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1035
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_7f

    .line 1049
    :try_start_52
    monitor-exit v3

    goto :goto_3e

    .line 1051
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_54
    move-exception v4

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_54

    throw v4

    .line 1036
    :catch_57
    move-exception v4

    move-object v0, v4

    .line 1038
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_59
    const-string v4, "TextToSpeech.java - setLanguage"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1040
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1041
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_7f

    .line 1049
    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_54

    goto :goto_3e

    .line 1042
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_6b
    move-exception v4

    move-object v0, v4

    .line 1044
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_6d
    const-string v4, "TextToSpeech.java - setLanguage"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1046
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1047
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_7f

    .line 1049
    :try_start_7d
    monitor-exit v3

    goto :goto_3e

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_7f
    move-exception v4

    monitor-exit v3
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_54

    goto :goto_3e
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .registers 9
    .parameter "listener"

    .prologue
    const-string v3, "TextToSpeech.java - registerCallback"

    .line 1219
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1220
    const/4 v1, -0x1

    .line 1221
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 1222
    monitor-exit v3

    move v2, v1

    .line 1252
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 1224
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    new-instance v4, Landroid/speech/tts/TextToSpeech$2;

    invoke-direct {v4, p0, p1}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_35

    .line 1232
    :try_start_14
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    invoke-interface {v4, v5, v6}, Landroid/speech/tts/ITts;->registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1d} :catch_38
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_1d} :catch_4c

    move-result v1

    .line 1252
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_35

    :goto_1f
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 1233
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_21
    move-exception v4

    move-object v0, v4

    .line 1235
    .local v0, e:Landroid/os/RemoteException;
    :try_start_23
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1237
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1238
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_60

    .line 1252
    :try_start_33
    monitor-exit v3

    goto :goto_1f

    .line 1254
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_35
    move-exception v4

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v4

    .line 1239
    :catch_38
    move-exception v4

    move-object v0, v4

    .line 1241
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3a
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1243
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1244
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_60

    .line 1252
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_35

    goto :goto_1f

    .line 1245
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4c
    move-exception v4

    move-object v0, v4

    .line 1247
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4e
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1249
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1250
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_60

    .line 1252
    :try_start_5e
    monitor-exit v3

    goto :goto_1f

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_60
    move-exception v4

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_35

    goto :goto_1f
.end method

.method public setPitch(F)I
    .registers 9
    .parameter "pitch"

    .prologue
    const-string v3, "TextToSpeech.java - setPitch"

    .line 965
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 966
    const/4 v1, -0x1

    .line 967
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 968
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_35

    move v2, v1

    .line 993
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 971
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1e

    .line 972
    :try_start_12
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    const/high16 v6, 0x42c8

    mul-float/2addr v6, p1

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/speech/tts/ITts;->setPitch(Ljava/lang/String;I)I
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1d} :catch_38
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1d} :catch_4c

    move-result v1

    .line 993
    :cond_1e
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_35

    :goto_1f
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 974
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_21
    move-exception v4

    move-object v0, v4

    .line 976
    .local v0, e:Landroid/os/RemoteException;
    :try_start_23
    const-string v4, "TextToSpeech.java - setPitch"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 978
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 979
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_60

    .line 993
    :try_start_33
    monitor-exit v3

    goto :goto_1f

    .line 995
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_35
    move-exception v4

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v4

    .line 980
    :catch_38
    move-exception v4

    move-object v0, v4

    .line 982
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3a
    const-string v4, "TextToSpeech.java - setPitch"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 984
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 985
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_60

    .line 993
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_35

    goto :goto_1f

    .line 986
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_4c
    move-exception v4

    move-object v0, v4

    .line 988
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4e
    const-string v4, "TextToSpeech.java - setPitch"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 990
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 991
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_60

    .line 993
    :try_start_5e
    monitor-exit v3

    goto :goto_1f

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_60
    move-exception v4

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_35

    goto :goto_1f
.end method

.method public setSpeechRate(F)I
    .registers 11
    .parameter "speechRate"

    .prologue
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - setSpeechRate"

    .line 916
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 917
    const/4 v2, -0x1

    .line 918
    .local v2, result:I
    :try_start_7
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_e

    .line 919
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3d

    move v3, v2

    .line 946
    .end local v2           #result:I
    .local v3, result:I
    :goto_d
    return v3

    .line 922
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_e
    cmpl-float v5, p1, v8

    if-lez v5, :cond_24

    .line 923
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 924
    .local v1, rate:I
    :try_start_16
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_54
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1f} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1f} :catch_40

    .line 927
    cmpl-float v5, p1, v8

    if-lez v5, :cond_27

    .line 928
    const/4 v2, 0x0

    .line 946
    .end local v1           #rate:I
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_3d

    :goto_25
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_d

    .line 930
    .end local v3           #result:I
    .restart local v1       #rate:I
    .restart local v2       #result:I
    :cond_27
    const/4 v2, -0x1

    goto :goto_24

    .line 933
    :catch_29
    move-exception v5

    move-object v0, v5

    .line 935
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2b
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 937
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 938
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_54

    .line 946
    :try_start_3b
    monitor-exit v4

    goto :goto_25

    .line 948
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #rate:I
    :catchall_3d
    move-exception v5

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v5

    .line 939
    .restart local v1       #rate:I
    :catch_40
    move-exception v5

    move-object v0, v5

    .line 941
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_42
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 943
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 944
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_54

    .line 946
    :try_start_52
    monitor-exit v4

    goto :goto_25

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_54
    move-exception v5

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_3d

    goto :goto_25
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 434
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 439
    :goto_7
    return-void

    .line 435
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 12
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - speak"

    .line 671
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 672
    const/4 v2, -0x1

    .line 673
    .local v2, result:I
    :try_start_6
    const-string v5, "TTS received: "

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_12

    .line 675
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_61

    move v3, v2

    .line 709
    .end local v2           #result:I
    .local v3, result:I
    :goto_11
    return v3

    .line 678
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_12
    if-eqz p3, :cond_3a

    :try_start_14
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 679
    const-string v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 680
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 681
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 683
    :cond_2a
    const-string v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 684
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 685
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 688
    .end local v1           #extra:Ljava/lang/String;
    :cond_3a
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_92
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_43} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_43} :catch_64
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_43} :catch_7b

    move-result v2

    .line 708
    :try_start_44
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 709
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_61

    :goto_48
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_11

    .line 689
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 691
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4c
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 693
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 694
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_92

    .line 708
    :try_start_5c
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 709
    monitor-exit v4

    goto :goto_48

    .line 711
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_61
    move-exception v5

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_61

    throw v5

    .line 695
    :catch_64
    move-exception v5

    move-object v0, v5

    .line 697
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_66
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 699
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 700
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_92

    .line 708
    :try_start_76
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 709
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_61

    goto :goto_48

    .line 701
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_7b
    move-exception v5

    move-object v0, v5

    .line 703
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7d
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 705
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 706
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_92

    .line 708
    :try_start_8d
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 709
    monitor-exit v4

    goto :goto_48

    .line 708
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_92
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 709
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_61

    goto :goto_48
.end method

.method public stop()I
    .registers 7

    .prologue
    const-string v3, "TextToSpeech.java - stop"

    .line 871
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 872
    const/4 v1, -0x1

    .line 873
    .local v1, result:I
    :try_start_6
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_d

    .line 874
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2c

    move v2, v1

    .line 897
    .end local v1           #result:I
    .local v2, result:I
    :goto_c
    return v2

    .line 877
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/speech/tts/ITts;->stop(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_14} :catch_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_43

    move-result v1

    .line 897
    :try_start_15
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2c

    :goto_16
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_c

    .line 878
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 882
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 883
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_57

    .line 897
    :try_start_2a
    monitor-exit v3

    goto :goto_16

    .line 899
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2c
    move-exception v4

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v4

    .line 884
    :catch_2f
    move-exception v4

    move-object v0, v4

    .line 886
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_31
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 888
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 889
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_57

    .line 897
    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_2c

    goto :goto_16

    .line 890
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_43
    move-exception v4

    move-object v0, v4

    .line 892
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_45
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 894
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 895
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_57

    .line 897
    :try_start_55
    monitor-exit v3

    goto :goto_16

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_57
    move-exception v4

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_2c

    goto :goto_16
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 12
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - synthesizeToFile"

    .line 1157
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1158
    const/4 v2, -0x1

    .line 1159
    .local v2, result:I
    :try_start_6
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_d

    .line 1160
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_4f

    move v3, v2

    .line 1193
    .end local v2           #result:I
    .local v3, result:I
    :goto_c
    return v3

    .line 1163
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_d
    if-eqz p2, :cond_25

    :try_start_f
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    .line 1165
    const-string v5, "utteranceId"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1166
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 1167
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 1170
    .end local v1           #extra:Ljava/lang/String;
    :cond_25
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, p3}, Landroid/speech/tts/ITts;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_80
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2e} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_2e} :catch_52
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_2e} :catch_69

    move-result v5

    if-eqz v5, :cond_32

    .line 1171
    const/4 v2, 0x0

    .line 1192
    :cond_32
    :try_start_32
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1193
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_4f

    :goto_36
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_c

    .line 1173
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_38
    move-exception v5

    move-object v0, v5

    .line 1175
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3a
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1177
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1178
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_80

    .line 1192
    :try_start_4a
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1193
    monitor-exit v4

    goto :goto_36

    .line 1195
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_4f
    move-exception v5

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_4f

    throw v5

    .line 1179
    :catch_52
    move-exception v5

    move-object v0, v5

    .line 1181
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_54
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1183
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1184
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_80

    .line 1192
    :try_start_64
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1193
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_4f

    goto :goto_36

    .line 1185
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_69
    move-exception v5

    move-object v0, v5

    .line 1187
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_6b
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1189
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1190
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7b
    .catchall {:try_start_6b .. :try_end_7b} :catchall_80

    .line 1192
    :try_start_7b
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1193
    monitor-exit v4

    goto :goto_36

    .line 1192
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_80
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1193
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_4f

    goto :goto_36
.end method
