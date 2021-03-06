.class public Lcom/android/mms/model/TextModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "TextModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextModel"


# instance fields
.field private final mCharset:I

.field private mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/lge/lgdrm/DrmContentSession;[BLcom/android/mms/model/RegionModel;)V
    .registers 16
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "charset"
    .parameter "session"
    .parameter "data"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v2, "text"

    if-eqz p6, :cond_1a

    move-object v5, p6

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p7

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;Landroid/lge/lgdrm/DrmContentSession;)V

    .line 99
    if-nez p4, :cond_11

    .line 102
    const/4 p4, 0x4

    .line 104
    :cond_11
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 105
    invoke-direct {p0, p6}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 106
    return-void

    .line 96
    :cond_1a
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v5, v0

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V
    .registers 14
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "charset"
    .parameter "data"
    .parameter "region"

    .prologue
    .line 50
    const-string v2, "text"

    if-eqz p5, :cond_19

    move-object v5, p5

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V

    .line 53
    if-nez p4, :cond_10

    .line 56
    const/4 p4, 0x4

    .line 58
    :cond_10
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 59
    invoke-direct {p0, p5}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 60
    return-void

    .line 50
    :cond_19
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v5, v0

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V
    .registers 12
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "region"

    .prologue
    .line 45
    const/16 v4, 0x6a

    const/4 v0, 0x0

    new-array v5, v0, [B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 46
    return-void
.end method

.method private extractTextFromData([B)Ljava/lang/CharSequence;
    .registers 7
    .parameter "data"

    .prologue
    .line 63
    if-eqz p1, :cond_3a

    .line 65
    :try_start_2
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    if-nez v2, :cond_c

    .line 66
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 76
    :goto_b
    return-object v2

    .line 68
    :cond_c
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_b

    .line 71
    .end local v1           #name:Ljava/lang/String;
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 72
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "TextModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_b

    .line 76
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3a
    const-string v2, ""

    goto :goto_b
.end method


# virtual methods
.method public cloneText()V
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 136
    return-void
.end method

.method public getCharset()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_e

    .line 111
    :try_start_4
    invoke-virtual {p0}, Lcom/android/mms/model/TextModel;->getData()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;
    :try_end_e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_4 .. :try_end_e} :catch_23

    .line 122
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 123
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 126
    :cond_1c
    iget-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 112
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Landroid/lge/lgdrm/DrmException;
    const-string v1, "TextModel"

    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .registers 6
    .parameter "evt"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 145
    iput-boolean v3, p0, Lcom/android/mms/model/TextModel;->mVisible:Z

    .line 150
    :cond_10
    :goto_10
    invoke-virtual {p0, v2}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 151
    return-void

    .line 146
    :cond_14
    iget-short v0, p0, Lcom/android/mms/model/TextModel;->mFill:S

    if-eq v0, v3, :cond_10

    .line 147
    iput-boolean v2, p0, Lcom/android/mms/model/TextModel;->mVisible:Z

    goto :goto_10
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 132
    return-void
.end method
