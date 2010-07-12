.class public Landroid/speech/RecognitionResult;
.super Ljava/lang/Object;
.source "RecognitionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUDIO_ERROR:I = 0x3

.field public static final CLIENT_ERROR:I = 0x5

.field public static final CONTACT_RESULT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/speech/RecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_ERROR:I = 0x2

.field public static final NETWORK_TIMEOUT:I = 0x1

.field public static final NO_MATCH:I = 0x7

.field public static final RAW_RECOGNITION_RESULT:I = 0x0

.field public static final SERVER_ERROR:I = 0x4

.field public static final SERVICE_BUSY:I = 0x8

.field public static final SPEECH_TIMEOUT:I = 0x6

.field public static final WEB_SEARCH_RESULT:I = 0x1


# instance fields
.field public final mCallAction:Z

.field public final mHtml:Ljava/lang/String;

.field public final mPhoneType:I

.field public final mResultType:I

.field public final mText:Ljava/lang/String;

.field public final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Landroid/speech/RecognitionResult$1;

    invoke-direct {v0}, Landroid/speech/RecognitionResult$1;-><init>()V

    sput-object v0, Landroid/speech/RecognitionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;IZ)V
    .registers 6
    .parameter "type"
    .parameter "query"
    .parameter "phoneType"
    .parameter "callAction"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Landroid/speech/RecognitionResult;->mResultType:I

    .line 139
    iput-object p2, p0, Landroid/speech/RecognitionResult;->mText:Ljava/lang/String;

    .line 140
    iput p3, p0, Landroid/speech/RecognitionResult;->mPhoneType:I

    .line 141
    iput-object v0, p0, Landroid/speech/RecognitionResult;->mHtml:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Landroid/speech/RecognitionResult;->mUrl:Ljava/lang/String;

    .line 143
    iput-boolean p4, p0, Landroid/speech/RecognitionResult;->mCallAction:Z

    .line 144
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "type"
    .parameter "query"
    .parameter "html"
    .parameter "url"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroid/speech/RecognitionResult;->mResultType:I

    .line 130
    iput-object p2, p0, Landroid/speech/RecognitionResult;->mText:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Landroid/speech/RecognitionResult;->mHtml:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Landroid/speech/RecognitionResult;->mUrl:Ljava/lang/String;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Landroid/speech/RecognitionResult;->mPhoneType:I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/RecognitionResult;->mCallAction:Z

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/RecognitionResult;->mResultType:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionResult;->mText:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionResult;->mHtml:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionResult;->mUrl:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/RecognitionResult;->mPhoneType:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2c

    move v0, v1

    :goto_29
    iput-boolean v0, p0, Landroid/speech/RecognitionResult;->mCallAction:Z

    .line 153
    return-void

    .line 152
    :cond_2c
    const/4 v0, 0x0

    goto :goto_29
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/speech/RecognitionResult$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/speech/RecognitionResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static newContactResult(Ljava/lang/String;IZ)Landroid/speech/RecognitionResult;
    .registers 5
    .parameter "contact"
    .parameter "phoneType"
    .parameter "callAction"

    .prologue
    .line 67
    new-instance v0, Landroid/speech/RecognitionResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/speech/RecognitionResult;-><init>(ILjava/lang/String;IZ)V

    return-object v0
.end method

.method public static newRawRecognitionResult(Ljava/lang/String;)Landroid/speech/RecognitionResult;
    .registers 4
    .parameter "sentence"

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Landroid/speech/RecognitionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Landroid/speech/RecognitionResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newWebResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/speech/RecognitionResult;
    .registers 5
    .parameter "query"
    .parameter "html"
    .parameter "url"

    .prologue
    .line 78
    new-instance v0, Landroid/speech/RecognitionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/speech/RecognitionResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 167
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RAW"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WEB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONTACT"

    aput-object v2, v0, v1

    .line 168
    .local v0, resultType:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/speech/RecognitionResult;->mResultType:I

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/RecognitionResult;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/RecognitionResult;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", html="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/RecognitionResult;->mHtml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 156
    iget v0, p0, Landroid/speech/RecognitionResult;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/speech/RecognitionResult;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/speech/RecognitionResult;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/speech/RecognitionResult;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Landroid/speech/RecognitionResult;->mPhoneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-boolean v0, p0, Landroid/speech/RecognitionResult;->mCallAction:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void

    .line 161
    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method
