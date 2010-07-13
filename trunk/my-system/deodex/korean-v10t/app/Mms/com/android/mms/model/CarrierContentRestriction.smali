.class public Lcom/android/mms/model/CarrierContentRestriction;
.super Ljava/lang/Object;
.source "CarrierContentRestriction.java"

# interfaces
.implements Lcom/android/mms/model/ContentRestriction;


# static fields
.field public static final IMAGE_HEIGHT_LIMIT:I = 0x1e0

.field public static final IMAGE_WIDTH_LIMIT:I = 0x280

.field public static final MESSAGE_SIZE_LIMIT:I = 0x4b000

.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentSize:I

.field private mMsgMaxSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 48
    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 49
    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/mms/model/CarrierContentRestriction;->mCurrentSize:I

    .line 44
    iput v0, p0, Lcom/android/mms/model/CarrierContentRestriction;->mMsgMaxSize:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 7
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    const-string v4, "[FLEX]"

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mCurrentSize:I

    .line 44
    iput v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mMsgMaxSize:I

    .line 57
    const-string v2, "[FLEX]"

    const-string v2, "CarrierContentRestriction() !!!!!"

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "MMSSETTINGDB_MESSAGESIZE_I"

    invoke-static {p1, v2}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, msgMaxSize_flexValues:Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 62
    const-string v2, "[FLEX]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgMaxSize_flexValues :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, msgMaxSize_Val:I
    mul-int/lit16 v2, v0, 0x400

    iput v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mMsgMaxSize:I

    .line 68
    .end local v0           #msgMaxSize_Val:I
    :goto_39
    return-void

    .line 67
    :cond_3a
    const v2, 0x4b000

    iput v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mMsgMaxSize:I

    goto :goto_39
.end method


# virtual methods
.method public checkAudioContentType(Ljava/lang/String;)V
    .registers 5
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 136
    if-nez p1, :cond_a

    .line 137
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_a
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 141
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2b
    return-void
.end method

.method public checkImageContentType(Ljava/lang/String;)V
    .registers 5
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_a

    .line 125
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_a
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 129
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported image content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2b
    return-void
.end method

.method public checkMessageSize(IILandroid/content/ContentResolver;)V
    .registers 11
    .parameter "messageSize"
    .parameter "increaseSize"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const-string v6, "[FLEX]"

    const-string v5, "Exceed message size limitation"

    .line 87
    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {p3, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 90
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 92
    add-int v3, p1, p2

    const v4, 0x4b000

    if-le v3, v4, :cond_23

    .line 93
    new-instance v3, Lcom/android/mms/ExceedMessageSizeException;

    const-string v4, "Exceed message size limitation"

    invoke-direct {v3, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_23
    iget v3, p0, Lcom/android/mms/model/CarrierContentRestriction;->mMsgMaxSize:I

    if-eqz v3, :cond_4d

    .line 99
    iget v1, p0, Lcom/android/mms/model/CarrierContentRestriction;->mMsgMaxSize:I

    .line 100
    .local v1, messageSizeLimit:I
    const-string v3, "[FLEX]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgMaxSize_from Flex :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_41
    add-int v2, p1, p2

    .line 110
    .local v2, newSize:I
    if-le v2, v1, :cond_69

    .line 111
    new-instance v3, Lcom/android/mms/ExceedMessageSizeException;

    const-string v4, "Exceed message size limitation"

    invoke-direct {v3, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    .end local v1           #messageSizeLimit:I
    .end local v2           #newSize:I
    :cond_4d
    const v1, 0x4b000

    .line 105
    .restart local v1       #messageSizeLimit:I
    const-string v3, "[FLEX]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgMaxSize_from DEFAULT :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 113
    .restart local v2       #newSize:I
    :cond_69
    iput v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mCurrentSize:I

    .line 114
    return-void
.end method

.method public checkResolution(II)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 117
    const/16 v0, 0x280

    if-gt p1, v0, :cond_8

    const/16 v0, 0x1e0

    if-le p2, v0, :cond_10

    .line 118
    :cond_8
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "content resolution exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_10
    return-void
.end method

.method public checkVideoContentType(Ljava/lang/String;)V
    .registers 5
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_a

    .line 149
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_a
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 153
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2b
    return-void
.end method

.method public getMessageCurrentSize()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/mms/model/CarrierContentRestriction;->mCurrentSize:I

    return v0
.end method

.method public getMessageMaxSize()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/mms/model/CarrierContentRestriction;->mMsgMaxSize:I

    return v0
.end method
