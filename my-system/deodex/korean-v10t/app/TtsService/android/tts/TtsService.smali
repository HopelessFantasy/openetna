.class public Landroid/tts/TtsService;
.super Landroid/app/Service;
.source "TtsService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tts/TtsService$SoundResource;,
        Landroid/tts/TtsService$SpeechItem;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "android.intent.action.START_TTS_SERVICE"

.field private static final CATEGORY:Ljava/lang/String; = "android.intent.category.TTS"

.field private static final DEFAULT_STREAM_TYPE:I = 0x3

.field private static final MAX_FILENAME_LENGTH:I = 0xfa

.field private static final MAX_SPEECH_ITEM_CHAR_LENGTH:I = 0xfa0

.field private static final PKGNAME:Ljava/lang/String; = "android.tts"

.field private static final SPEECHQUEUELOCK_TIMEOUT:I = 0x1388

.field private static sNativeSynth:Landroid/tts/SynthProxy;


# instance fields
.field private final mBinder:Landroid/speech/tts/ITts$Stub;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/speech/tts/ITtsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/speech/tts/ITtsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

.field private mEarcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/tts/TtsService$SoundResource;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSpeaking:Ljava/lang/Boolean;

.field private mKillList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/tts/TtsService$SpeechItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelf:Landroid/tts/TtsService;

.field private mSpeechQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/tts/TtsService$SpeechItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUtterances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/tts/TtsService$SoundResource;",
            ">;"
        }
    .end annotation
.end field

.field private final speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 141
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 142
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/tts/TtsService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 968
    new-instance v0, Landroid/tts/TtsService$1;

    invoke-direct {v0, p0}, Landroid/tts/TtsService$1;-><init>(Landroid/tts/TtsService;)V

    iput-object v0, p0, Landroid/tts/TtsService;->mBinder:Landroid/speech/tts/ITts$Stub;

    return-void
.end method

.method static synthetic access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/tts/TtsService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/tts/TtsService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    return-void
.end method

.method static synthetic access$1000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/tts/TtsService;Ljava/lang/String;JILjava/util/ArrayList;)I
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Landroid/tts/TtsService;->playSilence(Ljava/lang/String;JILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/tts/TtsService;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/tts/TtsService;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/tts/TtsService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/tts/TtsService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/tts/TtsService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/tts/TtsService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/tts/TtsService;Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/tts/TtsService;->setPitch(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/tts/TtsService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/tts/TtsService;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/tts/TtsService;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/tts/TtsService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tts/TtsService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/tts/TtsService;Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/tts/TtsService;->setSpeechRate(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Landroid/tts/SynthProxy;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    return-object v0
.end method

.method static synthetic access$700(Landroid/tts/TtsService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/tts/TtsService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/tts/TtsService;->mCallbacksMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/tts/TtsService;->mSelf:Landroid/tts/TtsService;

    return-object v0
.end method

.method private addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method private addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 359
    iget-object v0, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3, p4}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method private addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "callingApp"
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method

.method private addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "callingApp"
    .parameter "text"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 332
    iget-object v0, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    new-instance v1, Landroid/tts/TtsService$SoundResource;

    invoke-direct {v1, p3, p4}, Landroid/tts/TtsService$SoundResource;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method private broadcastTtsQueueProcessingCompleted()V
    .registers 3

    .prologue
    .line 762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/tts/TtsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 764
    return-void
.end method

.method private cleanUpPlayer()V
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 920
    iget-object v0, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    .line 923
    :cond_c
    return-void
.end method

.method private dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "utteranceId"
    .parameter "packageName"

    .prologue
    const-string v4, "TtsService"

    .line 768
    iget-object v2, p0, Landroid/tts/TtsService;->mCallbacksMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/ITtsCallback;

    .line 769
    .local v1, cb:Landroid/speech/tts/ITtsCallback;
    if-nez v1, :cond_d

    .line 783
    :goto_c
    return-void

    .line 772
    :cond_d
    const-string v2, "TtsService"

    const-string v2, "TTS callback: dispatch started"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v2, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 776
    .local v0, N:I
    :try_start_1a
    invoke-interface {v1, p1}, Landroid/speech/tts/ITtsCallback;->utteranceCompleted(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_3b

    .line 781
    :goto_1d
    iget-object v2, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 782
    const-string v2, "TtsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS callback: dispatch completed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 777
    :catch_3b
    move-exception v2

    goto :goto_1d
.end method

.method private getDefaultCountry()Ljava/lang/String;
    .registers 4

    .prologue
    .line 230
    iget-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "tts_default_country"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, defaultCountry:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_12
    return-object v1

    :cond_13
    move-object v1, v0

    goto :goto_12
.end method

.method private getDefaultLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 218
    iget-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "tts_default_lang"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, defaultLang:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 224
    :goto_12
    return-object v1

    :cond_13
    move-object v1, v0

    goto :goto_12
.end method

.method private getDefaultLocVariant()Ljava/lang/String;
    .registers 4

    .prologue
    .line 242
    iget-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "tts_default_variant"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, defaultVar:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 246
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_12
    return-object v1

    :cond_13
    move-object v1, v0

    goto :goto_12
.end method

.method private getDefaultRate()I
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "tts_default_rate"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getLanguage()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 296
    :try_start_0
    sget-object v1, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v1}, Landroid/tts/SynthProxy;->getLanguage()[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 298
    :goto_6
    return-object v1

    .line 297
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 298
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private getSoundResource(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SoundResource;
    .registers 6
    .parameter "speechItem"

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, sr:Landroid/tts/TtsService$SoundResource;
    iget-object v1, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 751
    .local v1, text:Ljava/lang/String;
    iget v2, p1, Landroid/tts/TtsService$SpeechItem;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 758
    :goto_8
    return-object v0

    .line 753
    :cond_9
    iget v2, p1, Landroid/tts/TtsService$SpeechItem;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 754
    iget-object v2, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sr:Landroid/tts/TtsService$SoundResource;
    check-cast v0, Landroid/tts/TtsService$SoundResource;

    .restart local v0       #sr:Landroid/tts/TtsService$SoundResource;
    goto :goto_8

    .line 756
    :cond_17
    iget-object v2, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sr:Landroid/tts/TtsService$SoundResource;
    check-cast v0, Landroid/tts/TtsService$SoundResource;

    .restart local v0       #sr:Landroid/tts/TtsService$SoundResource;
    goto :goto_8
.end method

.method private getStreamTypeFromParams(Ljava/util/ArrayList;)I
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 901
    .local p1, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x3

    .line 902
    .local v3, streamType:I
    if-nez p1, :cond_5

    move v4, v3

    .line 915
    .end local v3           #streamType:I
    .end local p0
    .local v4, streamType:I
    :goto_4
    return v4

    .line 905
    .end local v4           #streamType:I
    .restart local v3       #streamType:I
    .restart local p0
    :cond_5
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_31

    .line 906
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 907
    .local v2, param:Ljava/lang/String;
    if-eqz v2, :cond_2a

    const-string v5, "streamType"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 909
    add-int/lit8 v5, v1, 0x1

    :try_start_20
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_29} :catch_2d

    move-result v3

    .line 905
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 910
    :catch_2d
    move-exception v5

    move-object v0, v5

    .line 911
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x3

    goto :goto_2a

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #param:Ljava/lang/String;
    :cond_31
    move v4, v3

    .line 915
    .end local v3           #streamType:I
    .restart local v4       #streamType:I
    goto :goto_4
.end method

.method private isDefaultEnforced()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "tts_use_defaults"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_e

    move v0, v3

    :goto_d
    return v0

    :cond_e
    move v0, v2

    goto :goto_d
.end method

.method private isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 283
    const/4 v1, -0x2

    .line 285
    .local v1, res:I
    :try_start_1
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p1, p2, p3}, Landroid/tts/SynthProxy;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 290
    :goto_7
    return v1

    .line 286
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 288
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_7
.end method

.method private playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 8
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 415
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1d

    .line 416
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    .line 420
    :cond_5
    :goto_5
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Landroid/tts/TtsService$SpeechItem;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p4, v2}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 422
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 424
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_1d
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 418
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stopAll(Ljava/lang/String;)I

    goto :goto_5
.end method

.method private playSilence(Ljava/lang/String;JILjava/util/ArrayList;)I
    .registers 8
    .parameter "callingApp"
    .parameter "duration"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 554
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p4, :cond_5

    .line 555
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    .line 557
    :cond_5
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v1, p1, p2, p3, p5}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 559
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 561
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private processSpeechQueue()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const-string v4, "TtsService"

    .line 814
    const/4 v2, 0x0

    .line 816
    .local v2, speechQueueAvailable:Z
    :try_start_4
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 818
    if-nez v2, :cond_1f

    .line 819
    const-string v4, "TtsService"

    const-string v5, "processSpeechQueue - Speech queue is unavailable."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_17} :catch_a5

    .line 894
    if-eqz v2, :cond_1e

    .line 895
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 898
    :cond_1e
    :goto_1e
    return-void

    .line 822
    :cond_1f
    :try_start_1f
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v8, :cond_39

    .line 823
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 824
    invoke-direct {p0}, Landroid/tts/TtsService;->broadcastTtsQueueProcessingCompleted()V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_31} :catch_a5

    .line 894
    if-eqz v2, :cond_1e

    .line 895
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1e

    .line 828
    :cond_39
    :try_start_39
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/tts/TtsService$SpeechItem;

    iput-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 829
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 830
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->getSoundResource(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SoundResource;

    move-result-object v3

    .line 833
    .local v3, sr:Landroid/tts/TtsService$SoundResource;
    const-string v4, "TtsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS processing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-nez v3, :cond_c9

    .line 835
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget v4, v4, Landroid/tts/TtsService$SpeechItem;->mType:I

    if-nez v4, :cond_98

    .line 836
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->splitCurrentTextIfNeeded(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SpeechItem;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 837
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->speakInternalOnly(Landroid/tts/TtsService$SpeechItem;)V

    .line 885
    :goto_82
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_90

    .line 886
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_39 .. :try_end_90} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_90} :catch_a5

    .line 894
    :cond_90
    if-eqz v2, :cond_1e

    .line 895
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1e

    .line 838
    :cond_98
    :try_start_98
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget v4, v4, Landroid/tts/TtsService$SpeechItem;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_ba

    .line 839
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->synthToFileInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
    :try_end_a4
    .catchall {:try_start_98 .. :try_end_a4} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_a4} :catch_a5

    goto :goto_82

    .line 888
    .end local v3           #sr:Landroid/tts/TtsService$SoundResource;
    :catch_a5
    move-exception v4

    move-object v1, v4

    .line 889
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_a7
    const-string v4, "TtsService"

    const-string v5, "TTS processSpeechQueue: tryLock interrupted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_c0

    .line 894
    if-eqz v2, :cond_1e

    .line 895
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1e

    .line 842
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v3       #sr:Landroid/tts/TtsService$SoundResource;
    :cond_ba
    :try_start_ba
    iget-object v4, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0, v4}, Landroid/tts/TtsService;->silence(Landroid/tts/TtsService$SpeechItem;)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_ba .. :try_end_bf} :catch_a5

    goto :goto_82

    .line 894
    .end local v3           #sr:Landroid/tts/TtsService$SoundResource;
    :catchall_c0
    move-exception v4

    if-eqz v2, :cond_c8

    .line 895
    iget-object v5, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_c8
    throw v4

    .line 845
    .restart local v3       #sr:Landroid/tts/TtsService$SoundResource;
    :cond_c9
    :try_start_c9
    invoke-direct {p0}, Landroid/tts/TtsService;->cleanUpPlayer()V

    .line 846
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    const-string v5, "android.tts"

    if-ne v4, v5, :cond_f3

    .line 848
    iget v4, v3, Landroid/tts/TtsService$SoundResource;->mResId:I

    invoke-static {p0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    .line 869
    :goto_da
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_12f

    .line 870
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 871
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;
    :try_end_ea
    .catchall {:try_start_c9 .. :try_end_ea} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_c9 .. :try_end_ea} :catch_a5

    .line 894
    if-eqz v2, :cond_1e

    .line 895
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1e

    .line 849
    :cond_f3
    :try_start_f3
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;
    :try_end_f5
    .catchall {:try_start_f3 .. :try_end_f5} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_f3 .. :try_end_f5} :catch_a5

    if-eqz v4, :cond_122

    .line 853
    :try_start_f7
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/tts/TtsService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_fd
    .catchall {:try_start_f7 .. :try_end_fd} :catchall_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f7 .. :try_end_fd} :catch_107
    .catch Ljava/lang/InterruptedException; {:try_start_f7 .. :try_end_fd} :catch_a5

    move-result-object v0

    .line 861
    .local v0, ctx:Landroid/content/Context;
    :try_start_fe
    iget v4, v3, Landroid/tts/TtsService$SoundResource;->mResId:I

    invoke-static {v0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_da

    .line 854
    .end local v0           #ctx:Landroid/content/Context;
    :catch_107
    move-exception v4

    move-object v1, v4

    .line 855
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 856
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 858
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;
    :try_end_119
    .catchall {:try_start_fe .. :try_end_119} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_fe .. :try_end_119} :catch_a5

    .line 894
    if-eqz v2, :cond_1e

    .line 895
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1e

    .line 864
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_122
    :try_start_122
    iget-object v4, v3, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_da

    .line 874
    :cond_12f
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_134
    .catchall {:try_start_122 .. :try_end_134} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_122 .. :try_end_134} :catch_a5

    .line 876
    :try_start_134
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v5, v5, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/tts/TtsService;->getStreamTypeFromParams(Ljava/util/ArrayList;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 877
    iget-object v4, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_146
    .catchall {:try_start_134 .. :try_end_146} :catchall_c0
    .catch Ljava/lang/IllegalStateException; {:try_start_134 .. :try_end_146} :catch_148
    .catch Ljava/lang/InterruptedException; {:try_start_134 .. :try_end_146} :catch_a5

    goto/16 :goto_82

    .line 878
    :catch_148
    move-exception v4

    move-object v1, v4

    .line 879
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_14a
    iget-object v4, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 880
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 881
    invoke-direct {p0}, Landroid/tts/TtsService;->cleanUpPlayer()V
    :try_end_159
    .catchall {:try_start_14a .. :try_end_159} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_14a .. :try_end_159} :catch_a5

    .line 894
    if-eqz v2, :cond_1e

    .line 895
    iget-object v4, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1e
.end method

.method private setDefaultSettings()V
    .registers 5

    .prologue
    const-string v3, ""

    .line 195
    const-string v0, ""

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/tts/TtsService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, ""

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultRate()I

    move-result v0

    invoke-direct {p0, v3, v0}, Landroid/tts/TtsService;->setSpeechRate(Ljava/lang/String;I)I

    .line 199
    return-void
.end method

.method private setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "callingApp"
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    const-string v5, ", "

    .line 304
    const-string v2, "TtsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TtsService.setLanguage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, -0x1

    .line 307
    .local v1, res:I
    :try_start_35
    invoke-direct {p0}, Landroid/tts/TtsService;->isDefaultEnforced()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 308
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultLocVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/tts/SynthProxy;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 317
    :goto_4d
    return v1

    .line 311
    :cond_4e
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p2, p3, p4}, Landroid/tts/SynthProxy;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_53} :catch_55

    move-result v1

    goto :goto_4d

    .line 313
    :catch_55
    move-exception v2

    move-object v0, v2

    .line 315
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_4d
.end method

.method private setPitch(Ljava/lang/String;I)I
    .registers 6
    .parameter "callingApp"
    .parameter "pitch"

    .prologue
    .line 270
    const/4 v1, -0x1

    .line 272
    .local v1, res:I
    :try_start_1
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p2}, Landroid/tts/SynthProxy;->setPitch(I)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 277
    :goto_7
    return v1

    .line 273
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 275
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_7
.end method

.method private setSpeechRate(Ljava/lang/String;I)I
    .registers 7
    .parameter "callingApp"
    .parameter "rate"

    .prologue
    .line 254
    const/4 v1, -0x1

    .line 256
    .local v1, res:I
    :try_start_1
    invoke-direct {p0}, Landroid/tts/TtsService;->isDefaultEnforced()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 257
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-direct {p0}, Landroid/tts/TtsService;->getDefaultRate()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/tts/SynthProxy;->setSpeechRate(I)I

    move-result v1

    .line 265
    :goto_11
    return v1

    .line 259
    :cond_12
    sget-object v2, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v2, p2}, Landroid/tts/SynthProxy;->setSpeechRate(I)I
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 261
    :catch_19
    move-exception v2

    move-object v0, v2

    .line 263
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    goto :goto_11
.end method

.method private silence(Landroid/tts/TtsService$SpeechItem;)V
    .registers 4
    .parameter "speechItem"

    .prologue
    .line 588
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/tts/TtsService$1SilenceThread;

    invoke-direct {v1, p0, p1}, Landroid/tts/TtsService$1SilenceThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 589
    .local v0, slnc:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 590
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 591
    return-void
.end method

.method private speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    .registers 9
    .parameter "callingApp"
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 388
    const-string v0, "TtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS service received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-nez p3, :cond_34

    .line 390
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stop(Ljava/lang/String;)I

    .line 394
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v1, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v1, p1, p2, p4, v3}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    .line 396
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 398
    :cond_33
    return v3

    .line 391
    :cond_34
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1e

    .line 392
    invoke-direct {p0, p1}, Landroid/tts/TtsService;->stopAll(Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private speakInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
    .registers 4
    .parameter "speechItem"

    .prologue
    .line 669
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/tts/TtsService$1SynthThread;

    invoke-direct {v1, p0, p1}, Landroid/tts/TtsService$1SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 671
    .local v0, synth:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 672
    return-void
.end method

.method private splitCurrentTextIfNeeded(Landroid/tts/TtsService$SpeechItem;)Landroid/tts/TtsService$SpeechItem;
    .registers 14
    .parameter "currentSpeechItem"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 786
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xfa0

    if-ge v7, v8, :cond_f

    move-object v7, p1

    .line 809
    .end local p0
    :goto_e
    return-object v7

    .line 789
    .restart local p0
    :cond_f
    iget-object v0, p1, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 790
    .local v0, callingApp:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v4, splitItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/tts/TtsService$SpeechItem;>;"
    const/4 v6, 0x0

    .line 792
    .local v6, start:I
    add-int/lit16 v7, v6, 0xfa0

    sub-int v1, v7, v10

    .line 795
    .local v1, end:I
    :goto_1b
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_37

    .line 796
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, splitText:Ljava/lang/String;
    new-instance v3, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v3, v0, v5, v11, v9}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 798
    .local v3, splitItem:Landroid/tts/TtsService$SpeechItem;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    move v6, v1

    .line 800
    add-int/lit16 v7, v6, 0xfa0

    sub-int v1, v7, v10

    goto :goto_1b

    .line 802
    .end local v3           #splitItem:Landroid/tts/TtsService$SpeechItem;
    .end local v5           #splitText:Ljava/lang/String;
    :cond_37
    iget-object v7, p1, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 803
    .restart local v5       #splitText:Ljava/lang/String;
    new-instance v3, Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v3, v0, v5, v11, v9}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 804
    .restart local v3       #splitItem:Landroid/tts/TtsService$SpeechItem;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v7, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 806
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v10

    .local v2, i:I
    :goto_50
    if-ltz v2, :cond_5e

    .line 807
    iget-object v7, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 806
    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    .line 809
    :cond_5e
    iget-object v7, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/tts/TtsService$SpeechItem;

    move-object v7, p0

    goto :goto_e
.end method

.method private stop(Ljava/lang/String;)I
    .registers 13
    .parameter "callingApp"

    .prologue
    const/4 v10, 0x1

    const-string v6, "TtsService"

    .line 431
    const/4 v3, -0x1

    .line 432
    .local v3, result:I
    const/4 v5, 0x0

    .line 434
    .local v5, speechQueueAvailable:Z
    :try_start_5
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v7, 0x1388

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    .line 436
    if-eqz v5, :cond_75

    .line 437
    const-string v6, "TtsService"

    const-string v7, "Stopping"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v10

    .local v2, i:I
    :goto_20
    const/4 v6, -0x1

    if-le v2, v6, :cond_3b

    .line 439
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 440
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 443
    :cond_3b
    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    if-eqz v6, :cond_82

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_99
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_46} :catch_84

    move-result v6

    if-eqz v6, :cond_82

    .line 446
    :try_start_49
    sget-object v6, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v6}, Landroid/tts/SynthProxy;->stop()I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_99
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_4e} :catch_7e
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_84

    move-result v3

    .line 451
    :goto_4f
    :try_start_4f
    iget-object v6, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_99
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_5d} :catch_84

    if-eqz v6, :cond_64

    .line 454
    :try_start_5f
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_99
    .catch Ljava/lang/IllegalStateException; {:try_start_5f .. :try_end_64} :catch_a3
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_64} :catch_84

    .line 459
    :cond_64
    :goto_64
    const/4 v6, 0x0

    :try_start_65
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 460
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 464
    :goto_6e
    const-string v6, "TtsService"

    const-string v7, "Stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_65 .. :try_end_75} :catchall_99
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_75} :catch_84

    .line 472
    .end local v2           #i:I
    :cond_75
    if-eqz v5, :cond_7c

    .line 473
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7c
    move v4, v3

    .line 475
    .end local v3           #result:I
    .local v4, result:I
    :goto_7d
    return v4

    .line 447
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_7e
    move-exception v6

    move-object v1, v6

    .line 449
    .local v1, e1:Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    goto :goto_4f

    .line 462
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_82
    const/4 v3, 0x0

    goto :goto_6e

    .line 466
    .end local v2           #i:I
    :catch_84
    move-exception v6

    move-object v0, v6

    .line 467
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_86
    const-string v6, "TtsService"

    const-string v7, "TTS stop: tryLock interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_99

    .line 472
    if-eqz v5, :cond_97

    .line 473
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_97
    move v4, v3

    .line 475
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_7d

    .line 472
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #result:I
    .restart local v3       #result:I
    :catchall_99
    move-exception v6

    if-eqz v5, :cond_a1

    .line 473
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_a1
    move v4, v3

    .line 475
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_7d

    .line 455
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_a3
    move-exception v6

    goto :goto_64
.end method

.method private stopAll(Ljava/lang/String;)I
    .registers 14
    .parameter "callingApp"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const-string v6, "TtsService"

    .line 486
    const/4 v3, -0x1

    .line 487
    .local v3, result:I
    const/4 v5, 0x0

    .line 489
    .local v5, speechQueueAvailable:Z
    :try_start_6
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v7, 0x1388

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    .line 491
    if-eqz v5, :cond_71

    .line 492
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v10

    .local v2, i:I
    :goto_1a
    const/4 v6, -0x1

    if-le v2, v6, :cond_31

    .line 493
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/tts/TtsService$SpeechItem;

    iget v6, v6, Landroid/tts/TtsService$SpeechItem;->mType:I

    if-eq v6, v11, :cond_2e

    .line 494
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 497
    :cond_31
    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    if-eqz v6, :cond_7e

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget v6, v6, Landroid/tts/TtsService$SpeechItem;->mType:I

    if-ne v6, v11, :cond_45

    iget-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_95
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_42} :catch_80

    move-result v6

    if-eqz v6, :cond_7e

    .line 501
    :cond_45
    :try_start_45
    sget-object v6, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v6}, Landroid/tts/SynthProxy;->stop()I
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_95
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_4a} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4a} :catch_80

    move-result v3

    .line 506
    :goto_4b
    :try_start_4b
    iget-object v6, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_95
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_59} :catch_80

    if-eqz v6, :cond_60

    .line 509
    :try_start_5b
    iget-object v6, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_95
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_60} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_60} :catch_80

    .line 514
    :cond_60
    :goto_60
    const/4 v6, 0x0

    :try_start_61
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 515
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 519
    :goto_6a
    const-string v6, "TtsService"

    const-string v7, "Stopped all"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_95
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_71} :catch_80

    .line 527
    .end local v2           #i:I
    :cond_71
    if-eqz v5, :cond_78

    .line 528
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_78
    move v4, v3

    .line 530
    .end local v3           #result:I
    .local v4, result:I
    :goto_79
    return v4

    .line 502
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_7a
    move-exception v6

    move-object v1, v6

    .line 504
    .local v1, e1:Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    goto :goto_4b

    .line 517
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_7e
    const/4 v3, 0x0

    goto :goto_6a

    .line 521
    .end local v2           #i:I
    :catch_80
    move-exception v6

    move-object v0, v6

    .line 522
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_82
    const-string v6, "TtsService"

    const-string v7, "TTS stopAll: tryLock interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_95

    .line 527
    if-eqz v5, :cond_93

    .line 528
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_93
    move v4, v3

    .line 530
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_79

    .line 527
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #result:I
    .restart local v3       #result:I
    :catchall_95
    move-exception v6

    if-eqz v5, :cond_9d

    .line 528
    iget-object v6, p0, Landroid/tts/TtsService;->speechQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_9d
    move v4, v3

    .line 530
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_79

    .line 510
    .end local v4           #result:I
    .restart local v2       #i:I
    .restart local v3       #result:I
    :catch_9f
    move-exception v6

    goto :goto_60
.end method

.method private synthToFileInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
    .registers 4
    .parameter "speechItem"

    .prologue
    .line 743
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/tts/TtsService$2SynthThread;

    invoke-direct {v1, p0, p1}, Landroid/tts/TtsService$2SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 745
    .local v0, synth:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 746
    return-void
.end method

.method private synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 12
    .parameter "callingApp"
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 941
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_b

    move v0, v2

    .line 953
    :goto_a
    return v0

    .line 946
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-lt v0, v1, :cond_15

    move v0, v2

    .line 947
    goto :goto_a

    .line 949
    :cond_15
    iget-object v6, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    new-instance v0, Landroid/tts/TtsService$SpeechItem;

    const/4 v4, 0x3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/tts/TtsService$SpeechItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    iget-object v0, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 951
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 953
    :cond_2f
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .parameter "intent"

    .prologue
    .line 958
    const-string v2, "android.intent.action.START_TTS_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 959
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 960
    .local v0, category:Ljava/lang/String;
    const-string v2, "android.intent.category.TTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 961
    iget-object v2, p0, Landroid/tts/TtsService;->mBinder:Landroid/speech/tts/ITts$Stub;

    .line 965
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_2a
    return-object v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 9
    .parameter "arg0"

    .prologue
    .line 535
    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v0, v5, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 536
    .local v0, callingApp:Ljava/lang/String;
    iget-object v5, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v3, v5, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 537
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, ""

    .line 538
    .local v4, utteranceId:Ljava/lang/String;
    if-eqz v3, :cond_2e

    .line 539
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_2e

    .line 540
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 541
    .local v2, param:Ljava/lang/String;
    const-string v5, "utteranceId"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 542
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #utteranceId:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 539
    .restart local v4       #utteranceId:Ljava/lang/String;
    :cond_2b
    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 546
    .end local v1           #i:I
    .end local v2           #param:Ljava/lang/String;
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_37

    .line 547
    invoke-direct {p0, v4, v0}, Landroid/tts/TtsService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_37
    invoke-direct {p0}, Landroid/tts/TtsService;->processSpeechQueue()V

    .line 550
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    const-string v1, "TtsService"

    const-string v2, "TtsService.onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Landroid/tts/TtsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/tts/TtsService;->mResolver:Landroid/content/ContentResolver;

    .line 152
    const-string v0, "/system/lib/libttspico.so"

    .line 153
    .local v0, soLibPath:Ljava/lang/String;
    sget-object v1, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    if-nez v1, :cond_1e

    .line 154
    new-instance v1, Landroid/tts/SynthProxy;

    invoke-direct {v1, v0}, Landroid/tts/SynthProxy;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    .line 157
    :cond_1e
    iput-object p0, p0, Landroid/tts/TtsService;->mSelf:Landroid/tts/TtsService;

    .line 158
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/tts/TtsService;->mIsSpeaking:Ljava/lang/Boolean;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/tts/TtsService;->mEarcons:Ljava/util/HashMap;

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/tts/TtsService;->mUtterances:Ljava/util/HashMap;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/tts/TtsService;->mCallbacksMap:Ljava/util/HashMap;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/tts/TtsService;->mSpeechQueue:Ljava/util/ArrayList;

    .line 165
    iput-object v3, p0, Landroid/tts/TtsService;->mPlayer:Landroid/media/MediaPlayer;

    .line 166
    iput-object v3, p0, Landroid/tts/TtsService;->mCurrentSpeechItem:Landroid/tts/TtsService$SpeechItem;

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/tts/TtsService;->mKillList:Ljava/util/HashMap;

    .line 169
    invoke-direct {p0}, Landroid/tts/TtsService;->setDefaultSettings()V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 179
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/tts/TtsService;->stopAll(Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Landroid/tts/TtsService;->cleanUpPlayer()V

    .line 184
    sget-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    if-eqz v0, :cond_14

    .line 185
    sget-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    invoke-virtual {v0}, Landroid/tts/SynthProxy;->shutdown()V

    .line 187
    :cond_14
    const/4 v0, 0x0

    sput-object v0, Landroid/tts/TtsService;->sNativeSynth:Landroid/tts/SynthProxy;

    .line 190
    iget-object v0, p0, Landroid/tts/TtsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 191
    return-void
.end method
