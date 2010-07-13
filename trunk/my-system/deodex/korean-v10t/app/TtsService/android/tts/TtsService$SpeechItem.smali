.class Landroid/tts/TtsService$SpeechItem;
.super Ljava/lang/Object;
.source "TtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tts/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechItem"
.end annotation


# static fields
.field public static final EARCON:I = 0x1

.field public static final SILENCE:I = 0x2

.field public static final TEXT:I = 0x0

.field public static final TEXT_TO_FILE:I = 0x3


# instance fields
.field public mCallingApp:Ljava/lang/String;

.field public mDuration:J

.field public mFilename:Ljava/lang/String;

.field public mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mText:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/ArrayList;)V
    .registers 9
    .parameter "source"
    .parameter "silenceTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const-string v3, ""

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v3, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 62
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v3, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 73
    iput-wide p2, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 74
    iput-object p4, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 76
    iput-object p1, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .registers 9
    .parameter "source"
    .parameter "text"
    .parameter
    .parameter "itemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const-string v3, ""

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v3, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 62
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v3, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 68
    iput p4, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 69
    iput-object p1, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 10
    .parameter "source"
    .parameter "text"
    .parameter
    .parameter "itemType"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const-string v3, ""

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v3, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    .line 62
    iput-object v2, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v3, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 83
    iput p4, p0, Landroid/tts/TtsService$SpeechItem;->mType:I

    .line 84
    iput-object p5, p0, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 86
    return-void
.end method
