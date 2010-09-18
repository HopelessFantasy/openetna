.class public Landroid/syncml/pim/vcard/VCardParser_V21;
.super Ljava/lang/Object;
.source "VCardParser_V21.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "VCardParser_V21"

.field private static final STATE_GROUP_OR_PROPNAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2

.field private static final sAvailableEncodingV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailablePropertyNameV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownValueSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBuilder:Landroid/syncml/pim/VBuilder;

.field private mCanceled:Z

.field protected mEncoding:Ljava/lang/String;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Ljava/io/BufferedReader;

.field private mTimeEndProperty:J

.field private mTimeEndRecord:J

.field private mTimeHandlePropertyValue1:J

.field private mTimeHandlePropertyValue2:J

.field private mTimeHandlePropertyValue3:J

.field private mTimeParseItem1:J

.field private mTimeParseItem2:J

.field private mTimeParseItem3:J

.field private mTimeParseItems:J

.field private mTimeStartProperty:J

.field private mTimeStartRecord:J

.field private mTimeTotal:J

.field protected mWarningValueMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final sDefaultEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    sget-object v0, Landroid/syncml/pim/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    sput-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->DEFAULT_CHARSET:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOM"

    aput-object v2, v1, v4

    const-string v2, "INTL"

    aput-object v2, v1, v5

    const-string v2, "POSTAL"

    aput-object v2, v1, v6

    const-string v2, "PARCEL"

    aput-object v2, v1, v7

    const-string v2, "HOME"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "WORK"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PREF"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "FAX"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MSG"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "AOL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "APPLELINK"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ATTMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CIS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "EWORLD"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "X400"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "GIF"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "CGM"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "WMF"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "MET"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "PMB"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DIB"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "PICT"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "TIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "PDF"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "PS"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "JPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "QTIME"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "MPEG2"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "AVI"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "WAVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "AIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "PCM"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "X509"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "PGP"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "INLINE"

    aput-object v2, v1, v4

    const-string v2, "URL"

    aput-object v2, v1, v5

    const-string v2, "CONTENT-ID"

    aput-object v2, v1, v6

    const-string v2, "CID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "LOGO"

    aput-object v2, v1, v5

    const-string v2, "PHOTO"

    aput-object v2, v1, v6

    const-string v2, "LABEL"

    aput-object v2, v1, v7

    const-string v2, "FN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "7BIT"

    aput-object v2, v1, v4

    const-string v2, "8BIT"

    aput-object v2, v1, v5

    const-string v2, "QUOTED-PRINTABLE"

    aput-object v2, v1, v6

    const-string v2, "BASE64"

    aput-object v2, v1, v7

    const-string v2, "B"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    .line 75
    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 77
    const-string v0, "8BIT"

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/syncml/pim/vcard/VCardSourceDetector;)V
    .registers 4
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    .line 75
    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 77
    const-string v0, "8BIT"

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    .line 115
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/syncml/pim/vcard/VCardSourceDetector;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    .line 118
    :cond_1f
    return-void
.end method

.method private isLetter(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 949
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    .line 950
    :cond_10
    const/4 v0, 0x1

    .line 952
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private parseOneVCard(Z)Z
    .registers 12
    .parameter "firstReading"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_1a

    .line 202
    iget v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v4, :cond_1a

    .line 203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v4, :cond_1a

    .line 204
    invoke-virtual {p0, v0}, Landroid/syncml/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v4

    if-nez v4, :cond_16

    move v4, v8

    .line 230
    .end local v1           #i:I
    :goto_15
    return v4

    .line 207
    .restart local v1       #i:I
    :cond_16
    const/4 v0, 0x1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 212
    .end local v1           #i:I
    :cond_1a
    invoke-virtual {p0, v0}, Landroid/syncml/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v4

    if-nez v4, :cond_22

    move v4, v8

    .line 213
    goto :goto_15

    .line 216
    :cond_22
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_3b

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 218
    .local v2, start:J
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v5, "VCARD"

    invoke-interface {v4, v5}, Landroid/syncml/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 219
    iget-wide v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    .line 221
    .end local v2           #start:J
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 222
    .restart local v2       #start:J
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->parseItems()V

    .line 223
    iget-wide v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItems:J

    .line 224
    invoke-virtual {p0, v9, v8}, Landroid/syncml/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 225
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_66

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 227
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v4}, Landroid/syncml/pim/VBuilder;->endRecord()V

    .line 228
    iget-wide v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    :cond_66
    move v4, v9

    .line 230
    goto :goto_15
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mCanceled:Z

    .line 919
    return-void
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :goto_8
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_16

    .line 744
    new-instance v2, Landroid/syncml/pim/vcard/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_21

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 750
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method protected getLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 187
    new-instance v1, Landroid/syncml/pim/vcard/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    return-object v0
.end method

.method protected getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "="

    const-string v8, "\r\n"

    .line 704
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 706
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 707
    .local v2, pos:I
    :cond_1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1a

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :goto_33
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_41

    .line 716
    new-instance v3, Landroid/syncml/pim/vcard/VCardException;

    const-string v4, "File ended during parsing quoted-printable String"

    invoke-direct {v3, v4}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 721
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 722
    :cond_53
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_53

    .line 724
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 727
    :cond_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 733
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    :goto_6f
    return-object v3

    :cond_70
    move-object v3, p1

    goto :goto_6f
.end method

.method protected getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .registers 4
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 822
    new-instance v0, Landroid/syncml/pim/vcard/VCardException;

    const-string v1, "AGENT Property is not supported."

    invoke-direct {v0, v1}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 637
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v0, :cond_e

    .line 638
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v0, p2}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 641
    :cond_e
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .registers 4
    .parameter "charsetval"

    .prologue
    .line 599
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v0, :cond_10

    .line 600
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 603
    :cond_10
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .registers 5
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcard/VCardParser_V21;->isValidEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 584
    :cond_e
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v0, :cond_1e

    .line 585
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 588
    :cond_1e
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 592
    return-void

    .line 590
    :cond_21
    new-instance v0, Landroid/syncml/pim/vcard/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .registers 11
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const-string v8, "Invalid Language: \""

    const-string v7, "\""

    .line 609
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2d

    .line 611
    new-instance v4, Landroid/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 613
    :cond_2d
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 614
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 615
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    if-ge v0, v1, :cond_63

    .line 616
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/syncml/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_60

    .line 617
    new-instance v4, Landroid/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 615
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 620
    :cond_63
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 621
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 622
    const/4 v0, 0x0

    :goto_6b
    if-ge v0, v1, :cond_99

    .line 623
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/syncml/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_96

    .line 624
    new-instance v4, Landroid/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 622
    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 627
    :cond_99
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_a9

    .line 628
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 629
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v4, p1}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 631
    :cond_a9
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 779
    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v8, "QUOTED-PRINTABLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 780
    invoke-virtual {p0, p2}, Landroid/syncml/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 783
    :cond_e
    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v7, :cond_69

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 788
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-ge v2, v3, :cond_5d

    .line 789
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 790
    .local v1, ch:C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_48

    const/4 v7, 0x1

    sub-int v7, v3, v7

    if-ge v2, v7, :cond_48

    .line 791
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 792
    .local v5, nextCh:C
    invoke-virtual {p0, v5}, Landroid/syncml/pim/vcard/VCardParser_V21;->maybeUnescape(C)Ljava/lang/String;

    move-result-object v6

    .line 793
    .local v6, unescapedString:Ljava/lang/String;
    if-eqz v6, :cond_44

    .line 794
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    add-int/lit8 v2, v2, 0x1

    .line 788
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 797
    .restart local v5       #nextCh:C
    .restart local v6       #unescapedString:Ljava/lang/String;
    :cond_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 799
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :cond_48
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_59

    .line 800
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_41

    .line 803
    :cond_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 806
    .end local v1           #ch:C
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v7, v4}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 809
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_69
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .registers 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 523
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_7f

    .line 525
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 528
    invoke-virtual {p0, v1}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    .line 545
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_23
    return-void

    .line 529
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_24
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 530
    invoke-virtual {p0, v1}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_23

    .line 531
    :cond_30
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 532
    invoke-virtual {p0, v1}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_23

    .line 533
    :cond_3c
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 534
    invoke-virtual {p0, v1}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_23

    .line 535
    :cond_48
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 536
    invoke-virtual {p0, v1}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_23

    .line 537
    :cond_54
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 538
    invoke-virtual {p0, v0, v1}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 540
    :cond_60
    new-instance v3, Landroid/syncml/pim/vcard/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 543
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_7f
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const-string v7, "VCardParser_V21"

    .line 646
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 648
    .local v2, start:J
    invoke-virtual {p0, p2}, Landroid/syncml/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, result:Ljava/lang/String;
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v5, :cond_25

    .line 650
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 654
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_25
    iget-wide v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    .line 689
    .end local v1           #result:Ljava/lang/String;
    :goto_2f
    return-void

    .line 655
    .end local v2           #start:J
    :cond_30
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "BASE64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_44

    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 657
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 661
    .restart local v2       #start:J
    :try_start_48
    invoke-virtual {p0, p2}, Landroid/syncml/pim/vcard/VCardParser_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .restart local v1       #result:Ljava/lang/String;
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v5, :cond_5d

    .line 663
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V
    :try_end_5d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_48 .. :try_end_5d} :catch_68

    .line 673
    .end local v1           #result:Ljava/lang/String;
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5d
    :goto_5d
    iget-wide v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    goto :goto_2f

    .line 667
    :catch_68
    move-exception v5

    move-object v0, v5

    .line 668
    .local v0, error:Ljava/lang/OutOfMemoryError;
    const-string v5, "VCardParser_V21"

    const-string v5, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v5, :cond_5d

    .line 670
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    goto :goto_5d

    .line 675
    .end local v0           #error:Ljava/lang/OutOfMemoryError;
    .end local v2           #start:J
    :cond_7c
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    if-eqz v5, :cond_c2

    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "7BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c2

    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "8BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c2

    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 678
    const-string v5, "VCardParser_V21"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The encoding unsupported by vCard spec: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_c2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 682
    .restart local v2       #start:J
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v5, :cond_db

    .line 683
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Landroid/syncml/pim/vcard/VCardParser_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 687
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_db
    iget-wide v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    goto/16 :goto_2f
.end method

.method protected handleType(Ljava/lang/String;)V
    .registers 6
    .parameter "ptypeval"

    .prologue
    .line 551
    move-object v0, p1

    .line 552
    .local v0, upperTypeValue:Ljava/lang/String;
    sget-object v1, Landroid/syncml/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 554
    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    const-string v1, "VCardParser_V21"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type unsupported by vCard 2.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_36
    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v1, :cond_46

    .line 558
    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v2, "TYPE"

    invoke-interface {v1, v2}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v1, v0}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 561
    :cond_46
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .registers 5
    .parameter "pvalueval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 567
    sget-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 569
    :cond_14
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v0, :cond_24

    .line 570
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 576
    :cond_24
    return-void

    .line 574
    :cond_25
    new-instance v0, Landroid/syncml/pim/vcard/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isValidEncoding(Ljava/lang/String;)Z
    .registers 4
    .parameter "encoding"

    .prologue
    .line 166
    sget-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .registers 5
    .parameter "propertyName"

    .prologue
    .line 153
    sget-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 156
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescape(C)Ljava/lang/String;
    .registers 3
    .parameter "ch"

    .prologue
    .line 853
    const/16 v0, 0x5c

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_10

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_15

    .line 854
    :cond_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 856
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "text"

    .prologue
    .line 842
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;Z)V
    .registers 5
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .parameter "canceled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 928
    iput-boolean p4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mCanceled:Z

    .line 929
    invoke-virtual {p0, p1, p2, p3}, Landroid/syncml/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z

    .line 930
    return-void
.end method

.method public parse(Ljava/io/InputStream;Landroid/syncml/pim/VBuilder;)Z
    .registers 4
    .parameter "is"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 910
    sget-object v0, Landroid/syncml/pim/vcard/VCardParser_V21;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Landroid/syncml/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z
    .registers 10
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 892
    new-instance v2, Landroid/syncml/pim/vcard/CustomBufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/syncml/pim/vcard/CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    .line 894
    iput-object p3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 897
    .local v0, start:J
    iget-object v2, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_1b

    .line 898
    iget-object v2, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->start()V

    .line 900
    :cond_1b
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->parseVCardFile()V

    .line 901
    iget-object v2, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_27

    .line 902
    iget-object v2, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->end()V

    .line 904
    :cond_27
    iget-wide v2, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    .line 906
    const/4 v2, 0x1

    return v2
.end method

.method protected parseItem()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v11, "\""

    .line 380
    const-string v6, "8BIT"

    iput-object v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 385
    .local v4, start:J
    invoke-virtual {p0, v0}, Landroid/syncml/pim/vcard/VCardParser_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_18

    move v6, v8

    .line 422
    :goto_17
    return v6

    .line 389
    :cond_18
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3b

    .line 390
    new-instance v6, Landroid/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 392
    :cond_3b
    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v8

    .line 395
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    .line 397
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 400
    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 401
    invoke-virtual {p0, v1, v3}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-wide v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    move v6, v10

    .line 403
    goto :goto_17

    .line 404
    :cond_78
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 405
    invoke-virtual {p0, v3}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v10

    .line 406
    goto :goto_17

    .line 407
    :cond_85
    invoke-virtual {p0, v1}, Landroid/syncml/pim/vcard/VCardParser_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 408
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 409
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 410
    new-instance v6, Landroid/syncml/pim/vcard/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Landroid/syncml/pim/vcard/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 412
    :cond_a3
    new-instance v6, Landroid/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown BEGIN type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 414
    :cond_bc
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    .line 416
    new-instance v6, Landroid/syncml/pim/vcard/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/syncml/pim/vcard/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 419
    :cond_f5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 420
    invoke-virtual {p0, v1, v3}, Landroid/syncml/pim/vcard/VCardParser_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-wide v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    move v6, v10

    .line 422
    goto/16 :goto_17

    .line 425
    :cond_109
    new-instance v6, Landroid/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown property name: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, ended:Z
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_18

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 346
    .local v1, start:J
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v3}, Landroid/syncml/pim/VBuilder;->startProperty()V

    .line 347
    iget-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 349
    .end local v1           #start:J
    :cond_18
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 350
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 352
    .restart local v1       #start:J
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v3}, Landroid/syncml/pim/VBuilder;->endProperty()V

    .line 353
    iget-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    .line 356
    .end local v1           #start:J
    :cond_35
    :goto_35
    if-nez v0, :cond_6c

    .line 358
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_4e

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 360
    .restart local v1       #start:J
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v3}, Landroid/syncml/pim/VBuilder;->startProperty()V

    .line 361
    iget-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 363
    .end local v1           #start:J
    :cond_4e
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 364
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 366
    .restart local v1       #start:J
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v3}, Landroid/syncml/pim/VBuilder;->endProperty()V

    .line 367
    iget-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    goto :goto_35

    .line 370
    .end local v1           #start:J
    :cond_6c
    return-void
.end method

.method protected parseVCardFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x1

    .line 127
    .local v0, firstReading:Z
    :goto_1
    iget-boolean v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mCanceled:Z

    if-eqz v3, :cond_17

    .line 136
    :cond_5
    iget v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v3, :cond_1f

    .line 137
    const/4 v2, 0x1

    .line 138
    .local v2, useCache:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v3, :cond_1f

    .line 139
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/syncml/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 140
    const/4 v2, 0x0

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 130
    .end local v1           #i:I
    .end local v2           #useCache:Z
    :cond_17
    invoke-direct {p0, v0}, Landroid/syncml/pim/vcard/VCardParser_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    :cond_1f
    return-void
.end method

.method protected readBeginVCard(Z)Z
    .registers 10
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    :cond_3
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_b

    move v3, v5

    .line 283
    :goto_a
    return v3

    .line 246
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 250
    const-string v3, ":"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 276
    .local v0, length:I
    if-ne v0, v7, :cond_3c

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v6

    .line 279
    goto :goto_a

    .line 280
    :cond_3c
    if-nez p1, :cond_65

    .line 281
    iget v3, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v3, :cond_46

    .line 282
    iput-object v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    move v3, v5

    .line 283
    goto :goto_a

    .line 285
    :cond_46
    new-instance v3, Landroid/syncml/pim/vcard/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_65
    if-nez p1, :cond_3

    .line 292
    new-instance v3, Landroid/syncml/pim/vcard/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .registers 8
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 309
    :cond_1
    if-eqz p1, :cond_2d

    .line 312
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 324
    .local v0, line:Ljava/lang/String;
    :goto_5
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_46

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 334
    :goto_2c
    return-void

    .line 315
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_2d
    invoke-virtual {p0}, Landroid/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 316
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_3b

    .line 317
    new-instance v2, Landroid/syncml/pim/vcard/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    goto :goto_5

    .line 329
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_46
    if-nez p2, :cond_69

    .line 330
    new-instance v2, Landroid/syncml/pim/vcard/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_69
    const/4 p1, 0x0

    .line 333
    if-nez p2, :cond_1

    goto :goto_2c
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3b

    const/16 v12, 0x3a

    const/16 v11, 0x22

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 437
    .local v3, length:I
    const/4 v7, 0x0

    .line 438
    .local v7, state:I
    const/4 v4, 0x0

    .line 440
    .local v4, nameIndex:I
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 442
    .local v6, propertyNameAndValue:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v3, :cond_b4

    .line 443
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 444
    .local v0, ch:C
    packed-switch v7, :pswitch_data_d4

    .line 442
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 446
    :pswitch_1e
    if-ne v0, v12, :cond_4e

    .line 447
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 449
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 450
    const/4 v8, 0x0

    .line 495
    .end local v5           #propertyName:Ljava/lang/String;
    :goto_2f
    return-object v8

    .line 452
    .restart local v5       #propertyName:Ljava/lang/String;
    :cond_30
    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v8, :cond_39

    .line 453
    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v8, v5}, Landroid/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 455
    :cond_39
    aput-object v5, v6, v10

    .line 456
    sub-int v8, v3, v9

    if-ge v2, v8, :cond_49

    .line 457
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    :goto_47
    move-object v8, v6

    .line 461
    goto :goto_2f

    .line 459
    :cond_49
    const-string v8, ""

    aput-object v8, v6, v9

    goto :goto_47

    .line 462
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_4e
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_62

    .line 463
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, groupName:Ljava/lang/String;
    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v8, :cond_5f

    .line 465
    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v8, v1}, Landroid/syncml/pim/VBuilder;->propertyGroup(Ljava/lang/String;)V

    .line 467
    :cond_5f
    add-int/lit8 v4, v2, 0x1

    .line 468
    goto :goto_1b

    .end local v1           #groupName:Ljava/lang/String;
    :cond_62
    if-ne v0, v13, :cond_1b

    .line 469
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 470
    .restart local v5       #propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 471
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 472
    const/4 v8, 0x0

    goto :goto_2f

    .line 474
    :cond_74
    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v8, :cond_7d

    .line 475
    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v8, v5}, Landroid/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 477
    :cond_7d
    aput-object v5, v6, v10

    .line 478
    add-int/lit8 v4, v2, 0x1

    .line 479
    const/4 v7, 0x1

    .line 480
    goto :goto_1b

    .line 483
    .end local v5           #propertyName:Ljava/lang/String;
    :pswitch_83
    if-ne v0, v11, :cond_87

    .line 484
    const/4 v7, 0x2

    goto :goto_1b

    .line 485
    :cond_87
    if-ne v0, v13, :cond_93

    .line 486
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 487
    add-int/lit8 v4, v2, 0x1

    goto :goto_1b

    .line 488
    :cond_93
    if-ne v0, v12, :cond_1b

    .line 489
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/syncml/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 490
    sub-int v8, v3, v9

    if-ge v2, v8, :cond_aa

    .line 491
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    :goto_a8
    move-object v8, v6

    .line 495
    goto :goto_2f

    .line 493
    :cond_aa
    const-string v8, ""

    aput-object v8, v6, v9

    goto :goto_a8

    .line 499
    :pswitch_af
    if-ne v0, v11, :cond_1b

    .line 500
    const/4 v7, 0x1

    goto/16 :goto_1b

    .line 506
    .end local v0           #ch:C
    :cond_b4
    new-instance v8, Landroid/syncml/pim/vcard/VCardException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 444
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_83
        :pswitch_af
    .end packed-switch
.end method

.method public showDebugInfo()V
    .registers 7

    .prologue
    const-string v5, "VCardParser_V21"

    const-string v4, " ms"

    .line 933
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total parsing time:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    instance-of v0, v0, Landroid/syncml/pim/vcard/CustomBufferedReader;

    if-eqz v0, :cond_50

    .line 935
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total readLine time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    check-cast v0, Landroid/syncml/pim/vcard/CustomBufferedReader;

    invoke-virtual {v0}, Landroid/syncml/pim/vcard/CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_50
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeStartRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeEndRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeParseItem1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeParseItem2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeParseItem3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeHandlePropertyValue1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeHandlePropertyValue2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeHandlePropertyValue3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void
.end method
