.class public Lcom/broadcom/bt/service/bpp/BppAttributes;
.super Ljava/lang/Object;
.source "BppAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BppStatus:I

.field public BtpHeight:I

.field public BtpWidth:I

.field public CharRepresentations:[B

.field public ColorSupported:Z

.field public Id1284Info:[B

.field public MaxCopies:I

.field public MaxPages:I

.field public Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

.field public MediaTypesMask:[I

.field public NumMediaLoaded:I

.field public OrientationMask:I

.field public PrinterLocation:Ljava/lang/String;

.field public PrinterName:Ljava/lang/String;

.field public PrinterStatus:I

.field public QualityMask:I

.field public QueuedJobs:I

.field public Reason:I

.field public SidesMask:I

.field public State:I

.field public SupportedDocumentFormats:[Ljava/lang/String;

.field public SupportedImageFormats:[Ljava/lang/String;

.field public SupportedMediaSizes:[Ljava/lang/String;

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppAttributes$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppAttributes$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 124
    return-void
.end method

.method public constructor <init>(IIIIIIII[I[B[BLjava/lang/String;Ljava/lang/String;[Lcom/broadcom/bt/service/bpp/LoadedMedia;IIIIIZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 27
    .parameter "printerStatus"
    .parameter "bppStatus"
    .parameter "maxCopies"
    .parameter "maxPages"
    .parameter "queuedJobs"
    .parameter "btpWidth"
    .parameter "btpHeight"
    .parameter "numMediaLoaded"
    .parameter "mediaTypesMask"
    .parameter "charRepresentations"
    .parameter "id1284Info"
    .parameter "printerName"
    .parameter "printerLocation"
    .parameter "media"
    .parameter "state"
    .parameter "reason"
    .parameter "sidesMask"
    .parameter "qualityMask"
    .parameter "orientationMask"
    .parameter "colorSupported"
    .parameter "supportedDocumentFormats"
    .parameter "supportedMediaSizes"
    .parameter "supportedImageFormats"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v2, 0x1

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 176
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 177
    iput p2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 178
    iput p3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 179
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 180
    iput p5, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 181
    iput p6, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 182
    iput p7, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 183
    iput p8, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 184
    iput-object p9, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 185
    iput-object p10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CharRepresentations:[B

    .line 186
    iput-object p11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Id1284Info:[B

    .line 187
    iput-object p12, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 189
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 190
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 191
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 192
    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 193
    move/from16 v0, p18

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 194
    move/from16 v0, p19

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 195
    move/from16 v0, p20

    move-object v1, p0

    iput-boolean v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 196
    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 197
    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 198
    move-object/from16 v0, p23

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 199
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 207
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;->readFromParcel(Landroid/os/Parcel;)V

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppAttributes$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .parameter "in"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 274
    .local v0, i:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, tempSize:I
    if-lez v2, :cond_40

    .line 285
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 286
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 292
    :cond_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 294
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 295
    .local v1, tempParcelArray:[Landroid/os/Parcelable;
    if-eqz v1, :cond_6a

    array-length v3, v1

    if-lez v3, :cond_6a

    .line 296
    array-length v3, v1

    new-array v3, v3, [Lcom/broadcom/bt/service/bpp/LoadedMedia;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 297
    const/4 v0, 0x0

    :goto_5c
    array-length v3, v1

    if-ge v0, v3, :cond_6a

    .line 298
    iget-object v4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v3, v1, v0

    check-cast v3, Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aput-object v3, v4, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 301
    :cond_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 306
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 307
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 309
    if-lez v2, :cond_a3

    .line 310
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 311
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 313
    :cond_a3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    if-lez v2, :cond_b2

    .line 315
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 316
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 318
    :cond_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    if-lez v2, :cond_c1

    .line 320
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 321
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 323
    :cond_c1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 215
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    if-lez v0, :cond_ad

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 233
    :goto_3d
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 236
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    iget-boolean v1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    aput-boolean v1, v0, v2

    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 243
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b1

    .line 244
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 249
    :goto_84
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b5

    .line 250
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 255
    :goto_98
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b9

    .line 256
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 261
    :goto_ac
    return-void

    .line 228
    :cond_ad
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 247
    :cond_b1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_84

    .line 253
    :cond_b5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_98

    .line 259
    :cond_b9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ac
.end method
