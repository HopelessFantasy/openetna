.class Landroid/tts/TtsService$SoundResource;
.super Ljava/lang/Object;
.source "TtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tts/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResource"
.end annotation


# instance fields
.field public mFilename:Ljava/lang/String;

.field public mResId:I

.field public mSourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "file"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 97
    iput v1, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 98
    iput-object v0, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 108
    iput v1, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 109
    iput-object p1, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v1, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 98
    iput-object v1, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Landroid/tts/TtsService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 102
    iput p2, p0, Landroid/tts/TtsService$SoundResource;->mResId:I

    .line 103
    iput-object v1, p0, Landroid/tts/TtsService$SoundResource;->mFilename:Ljava/lang/String;

    .line 104
    return-void
.end method
