.class Lcom/android/settings/RadioInfo$OemCommands;
.super Ljava/lang/Object;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_CIPHERING_FUNCTAG:I

.field final OEM_FEATURE_DISABLE:I

.field final OEM_FEATURE_ENABLE:I

.field final OEM_PS_AUTO_ATTACH_FUNCTAG:I

.field public final OEM_QXDM_SDLOG_DEFAULT_FILE_SIZE:I

.field public final OEM_QXDM_SDLOG_DEFAULT_MASK:I

.field public final OEM_QXDM_SDLOG_DEFAULT_MAX_INDEX:I

.field final OEM_QXDM_SDLOG_FUNCTAG:I

.field final OEM_QXDM_SDLOG_LEN:I

.field final OEM_SIMPE_FEAUTURE_LEN:I

.field final SIZE_OF_INT:I

.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method private constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    iput-object p1, p0, Lcom/android/settings/RadioInfo$OemCommands;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_QXDM_SDLOG_DEFAULT_FILE_SIZE:I

    .line 262
    iput v1, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_QXDM_SDLOG_DEFAULT_MASK:I

    .line 263
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_QXDM_SDLOG_DEFAULT_MAX_INDEX:I

    .line 265
    iput v3, p0, Lcom/android/settings/RadioInfo$OemCommands;->SIZE_OF_INT:I

    .line 266
    iput v2, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_FEATURE_ENABLE:I

    .line 267
    iput v1, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_FEATURE_DISABLE:I

    .line 268
    iput v2, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_SIMPE_FEAUTURE_LEN:I

    .line 270
    const/high16 v0, 0x1

    iput v0, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_QXDM_SDLOG_FUNCTAG:I

    .line 271
    iput v3, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_QXDM_SDLOG_LEN:I

    .line 272
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_PS_AUTO_ATTACH_FUNCTAG:I

    .line 273
    const v0, 0x20001

    iput v0, p0, Lcom/android/settings/RadioInfo$OemCommands;->OEM_CIPHERING_FUNCTAG:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/RadioInfo;Lcom/android/settings/RadioInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo$OemCommands;-><init>(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method private getSimpleFeatureData(IZ)[B
    .registers 7
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 347
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 350
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_a
    invoke-direct {p0, v1, p1}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    .line 351
    const/4 v3, 0x4

    invoke-direct {p0, v1, v3}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    .line 352
    if-eqz p2, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-direct {p0, v1, v3}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_1e

    .line 357
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_1b
    return-object v3

    .line 352
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 354
    :catch_1e
    move-exception v3

    move-object v2, v3

    .line 355
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private writeIntLittleEndian(Ljava/io/DataOutputStream;I)V
    .registers 4
    .parameter "dos"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 363
    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 364
    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 365
    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 366
    return-void
.end method


# virtual methods
.method getCipheringData(Z)[B
    .registers 3
    .parameter "enable"

    .prologue
    .line 343
    const v0, 0x20001

    invoke-direct {p0, v0, p1}, Lcom/android/settings/RadioInfo$OemCommands;->getSimpleFeatureData(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method getPsAutoAttachData(Z)[B
    .registers 3
    .parameter "enable"

    .prologue
    .line 339
    const/high16 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/settings/RadioInfo$OemCommands;->getSimpleFeatureData(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method getQxdmSdlogData(ZIII)[B
    .registers 9
    .parameter "enable"
    .parameter "fileSize"
    .parameter "mask"
    .parameter "maxIndex"

    .prologue
    .line 322
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 323
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 325
    .local v1, dos:Ljava/io/DataOutputStream;
    const/high16 v3, 0x1

    :try_start_c
    invoke-direct {p0, v1, v3}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    .line 326
    const/16 v3, 0x10

    invoke-direct {p0, v1, v3}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    .line 327
    if-eqz p1, :cond_28

    const/4 v3, 0x1

    :goto_17
    invoke-direct {p0, v1, v3}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    .line 329
    invoke-direct {p0, v1, p2}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    .line 330
    invoke-direct {p0, v1, p3}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    .line 331
    invoke-direct {p0, v1, p4}, Lcom/android/settings/RadioInfo$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_23} :catch_2a

    .line 335
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_27
    return-object v3

    .line 327
    :cond_28
    const/4 v3, 0x0

    goto :goto_17

    .line 332
    :catch_2a
    move-exception v3

    move-object v2, v3

    .line 333
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_27
.end method
