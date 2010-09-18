.class Lcom/android/server/PowerOnSound;
.super Ljava/lang/Object;
.source "PowerOnSound.java"


# static fields
.field private static final CLARO_DEFAULT_VOLUME:I = 0xd

.field private static final DEFAULT_VOLUME:I = 0x9

.field private static final TAG:Ljava/lang/String; = "Power on sound"

.field private static final mOpCode:Ljava/lang/String;


# instance fields
.field private final POWER_ON_SOUND_PATH:Ljava/lang/String;

.field private final VDF_POWER_ON_SOUND_PATH:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private restoreVolume:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PowerOnSound;->mOpCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "/system/sounds/lgeAT/PowerOn.mp3"

    iput-object v0, p0, Lcom/android/server/PowerOnSound;->POWER_ON_SOUND_PATH:Ljava/lang/String;

    .line 42
    const-string v0, "/system/sounds/lgeAT/Startup.wav"

    iput-object v0, p0, Lcom/android/server/PowerOnSound;->VDF_POWER_ON_SOUND_PATH:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PowerOnSound;->restoreVolume:I

    .line 51
    iput-object p1, p0, Lcom/android/server/PowerOnSound;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    iget-object v0, p0, Lcom/android/server/PowerOnSound;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/PowerOnSound;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PowerOnSound;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/PowerOnSound;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/PowerOnSound;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/PowerOnSound;->restoreVolume:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PowerOnSound;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/PowerOnSound;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public play()V
    .registers 7

    .prologue
    const-string v5, "Power on sound"

    .line 58
    :try_start_2
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_12

    .line 59
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/PowerOnSound;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    :cond_12
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_63

    sget-object v1, Lcom/android/server/PowerOnSound;->mOpCode:Ljava/lang/String;

    const-string v2, "CLARO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 66
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_30

    .line 67
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 69
    :cond_30
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerOnSound;->restoreVolume:I

    .line 70
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 72
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "/system/sounds/lgeAT/PowerOn.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 75
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/server/PowerOnSound$1;

    invoke-direct {v2, p0}, Lcom/android/server/PowerOnSound$1;-><init>(Lcom/android/server/PowerOnSound;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 84
    iget-object v1, p0, Lcom/android/server/PowerOnSound;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_63
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_63} :catch_64
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_63} :catch_6e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_63} :catch_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_63} :catch_93
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_63} :catch_ae

    .line 97
    :cond_63
    :goto_63
    return-void

    .line 86
    :catch_64
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Power on sound"

    const-string v1, "First booting!!!"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 88
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_6e
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "Power on sound"

    const-string v1, "FileNotFoundException"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 90
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_78
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Power on sound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 92
    .end local v0           #e:Ljava/io/IOException;
    :catch_93
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Power on sound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 94
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_ae
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Power on sound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method
