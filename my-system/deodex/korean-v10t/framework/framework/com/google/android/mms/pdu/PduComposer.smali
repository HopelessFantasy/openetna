.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 34
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    :goto_9
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 120
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 127
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 34
    .end local v0           #i:I
    :cond_2b
    const/4 v1, 0x0

    goto :goto_9

    .line 129
    .restart local v0       #i:I
    :cond_2d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .registers 6
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 95
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 100
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 105
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 115
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 138
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 140
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 141
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 142
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 143
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 144
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendHeader(I)I
    .registers 31
    .parameter "field"

    .prologue
    .line 461
    sparse-switch p1, :sswitch_data_2e6

    .line 659
    const/16 v27, 0x3

    .line 662
    :goto_5
    return v27

    .line 463
    :sswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 466
    .local v26, version:I
    if-nez v26, :cond_25

    .line 467
    const/16 v27, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 662
    .end local v26           #version:I
    :cond_22
    :goto_22
    const/16 v27, 0x0

    goto :goto_5

    .line 469
    .restart local v26       #version:I
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_22

    .line 480
    .end local v26           #version:I
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 481
    .local v25, textString:[B
    if-nez v25, :cond_40

    .line 482
    const/16 v27, 0x2

    goto :goto_5

    .line 485
    :cond_40
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_22

    .line 492
    .end local v25           #textString:[B
    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 494
    .local v3, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_5e

    .line 495
    const/16 v27, 0x2

    goto :goto_5

    .line 499
    :cond_5e
    const/16 v18, 0x0

    .local v18, i:I
    :goto_60
    move-object v0, v3

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_22

    .line 501
    :try_start_6a
    aget-object v27, v3, v18

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v4

    .line 502
    .local v4, addressType:I
    aget-object v27, v3, v18

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    .line 503
    .local v22, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v27, 0x1

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_9b

    .line 505
    const-string v27, "/TYPE=PLMN"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_8e
    .catch Ljava/lang/NullPointerException; {:try_start_6a .. :try_end_8e} :catch_b0

    .line 518
    :cond_8e
    :goto_8e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 519
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 499
    add-int/lit8 v18, v18, 0x1

    goto :goto_60

    .line 507
    :cond_9b
    const/16 v27, 0x3

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_b7

    .line 509
    :try_start_a2
    const-string v27, "/TYPE=IPV4"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_8e

    .line 514
    .end local v4           #addressType:I
    .end local v22           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_b0
    move-exception v27

    move-object/from16 v9, v27

    .line 515
    .local v9, e:Ljava/lang/NullPointerException;
    const/16 v27, 0x1

    goto/16 :goto_5

    .line 510
    .end local v9           #e:Ljava/lang/NullPointerException;
    .restart local v4       #addressType:I
    .restart local v22       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b7
    const/16 v27, 0x4

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_8e

    .line 512
    const-string v27, "/TYPE=IPV6"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_cb
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_cb} :catch_b0

    goto :goto_8e

    .line 525
    .end local v3           #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #addressType:I
    .end local v18           #i:I
    .end local v22           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :sswitch_cc
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v16

    .line 528
    .local v16, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v16, :cond_f0

    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    const-string v28, "insert-address-token"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_104

    .line 532
    :cond_f0
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 534
    const/16 v27, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_22

    .line 536
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v17

    .line 540
    .local v17, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v27, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 543
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 544
    .local v15, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 545
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 556
    .end local v15           #flen:I
    .end local v16           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v17           #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    :sswitch_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v20

    .line 557
    .local v20, octet:I
    if-nez v20, :cond_15e

    .line 558
    const/16 v27, 0x2

    goto/16 :goto_5

    .line 561
    :cond_15e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 562
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 566
    .end local v20           #octet:I
    :sswitch_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v5

    .line 567
    .local v5, date:J
    const-wide/16 v27, -0x1

    cmp-long v27, v27, v5

    if-nez v27, :cond_182

    .line 568
    const/16 v27, 0x2

    goto/16 :goto_5

    .line 571
    :cond_182
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 572
    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_22

    .line 577
    .end local v5           #date:J
    :sswitch_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 578
    .local v7, deliveryTime:J
    const-wide/16 v27, -0x1

    cmp-long v27, v27, v7

    if-nez v27, :cond_1a5

    .line 579
    const/16 v27, 0x2

    goto/16 :goto_5

    .line 581
    :cond_1a5
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 588
    const/16 v21, 0x0

    .line 591
    .local v21, size:I
    move-wide/from16 v23, v7

    .line 592
    .local v23, tempTime:J
    :goto_1ac
    const-wide/16 v27, 0x0

    cmp-long v27, v23, v27

    if-eqz v27, :cond_1c1

    const/16 v27, 0x8

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c1

    .line 593
    const/16 v27, 0x8

    ushr-long v23, v23, v27

    .line 592
    add-int/lit8 v21, v21, 0x1

    goto :goto_1ac

    .line 597
    :cond_1c1
    add-int/lit8 v21, v21, 0x1

    .line 598
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 599
    const/16 v27, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 600
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_22

    .line 604
    .end local v7           #deliveryTime:J
    .end local v21           #size:I
    .end local v23           #tempTime:J
    :sswitch_1db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 606
    .local v10, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v10, :cond_1ef

    .line 607
    const/16 v27, 0x2

    goto/16 :goto_5

    .line 610
    :cond_1ef
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 611
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_22

    .line 615
    .end local v10           #enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    :sswitch_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 616
    .local v19, messageClass:[B
    if-nez v19, :cond_20e

    .line 617
    const/16 v27, 0x2

    goto/16 :goto_5

    .line 620
    :cond_20e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 621
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-eqz v27, :cond_22c

    .line 623
    const/16 v27, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 624
    :cond_22c
    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-eqz v27, :cond_247

    .line 626
    const/16 v27, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 627
    :cond_247
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-eqz v27, :cond_262

    .line 629
    const/16 v27, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 630
    :cond_262
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-eqz v27, :cond_27d

    .line 632
    const/16 v27, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 634
    :cond_27d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_22

    .line 639
    .end local v19           #messageClass:[B
    :sswitch_286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 640
    .local v11, expiry:J
    const-wide/16 v27, -0x1

    cmp-long v27, v27, v11

    if-nez v27, :cond_29e

    .line 641
    const/16 v27, 0x2

    goto/16 :goto_5

    .line 644
    :cond_29e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v14

    .line 649
    .local v14, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v27, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 650
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 652
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 653
    .local v13, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 654
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 461
    :sswitch_data_2e6
    .sparse-switch
        0x81 -> :sswitch_4b
        0x82 -> :sswitch_4b
        0x85 -> :sswitch_16a
        0x86 -> :sswitch_14a
        0x87 -> :sswitch_18d
        0x88 -> :sswitch_286
        0x89 -> :sswitch_cc
        0x8a -> :sswitch_1fa
        0x8b -> :sswitch_2d
        0x8d -> :sswitch_6
        0x8f -> :sswitch_14a
        0x90 -> :sswitch_14a
        0x91 -> :sswitch_14a
        0x95 -> :sswitch_14a
        0x96 -> :sswitch_1db
        0x97 -> :sswitch_4b
        0x98 -> :sswitch_2d
        0x9b -> :sswitch_14a
        0xb7 -> :sswitch_2d
        0xb8 -> :sswitch_2d
    .end sparse-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    const/4 v1, 0x5

    .line 1196
    if-nez p0, :cond_5

    move v0, v1

    .line 1214
    :goto_4
    return v0

    .line 1200
    :cond_5
    const-string v0, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1202
    const/4 v0, 0x3

    goto :goto_4

    .line 1203
    :cond_f
    const-string v0, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1205
    const/4 v0, 0x1

    goto :goto_4

    .line 1206
    :cond_19
    const-string v0, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1208
    const/4 v0, 0x2

    goto :goto_4

    .line 1209
    :cond_23
    const-string v0, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1211
    const/4 v0, 0x4

    goto :goto_4

    :cond_2d
    move v0, v1

    .line 1214
    goto :goto_4
.end method

.method private makeAckInd()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 750
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 751
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 755
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 756
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 759
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    .line 771
    :goto_22
    return v0

    .line 764
    :cond_23
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    .line 765
    goto :goto_22

    .line 769
    :cond_2d
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 771
    goto :goto_22
.end method

.method private makeMessageBody()I
    .registers 35

    .prologue
    .line 864
    const-string v31, "PduComposer"

    const-string v32, "-----makeMessageBody -----"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v17

    .line 871
    .local v17, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v31, v0

    const/16 v32, 0x84

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v31

    move-object v0, v11

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 873
    .local v11, contentType:Ljava/lang/String;
    sget-object v31, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 874
    .local v13, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v13, :cond_3e

    .line 876
    const/16 v31, 0x1

    .line 1055
    :goto_3d
    return v31

    .line 879
    :cond_3e
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 883
    .local v6, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v6, :cond_74

    .line 885
    const-wide/16 v31, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 888
    const/16 v31, 0x0

    goto :goto_3d

    .line 893
    :cond_74
    const/16 v31, 0x0

    :try_start_76
    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 895
    .local v24, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v30

    .line 896
    .local v30, start:[B
    if-eqz v30, :cond_b2

    .line 897
    const/16 v31, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 898
    const/16 v31, 0x3c

    const/16 v32, 0x0

    aget-byte v32, v30, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1ed

    const/16 v31, 0x3e

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-byte v32, v30, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1ed

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 906
    :cond_b2
    :goto_b2
    const/16 v31, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 907
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getApplicId()[B

    move-result-object v31

    if-eqz v31, :cond_120

    .line 913
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v5, v0

    check-cast v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/SendReq;->getApplicId()[B

    move-result-object v31

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 914
    .local v4, appId:Ljava/lang/String;
    const-string v31, "PduComposer"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-----makeMessageBody ----- appId = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v31, "application-id"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    .end local v4           #appId:Ljava/lang/String;
    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getApplicId()[B

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 918
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getReplyApplicId()[B

    move-result-object v31

    if-eqz v31, :cond_17c

    .line 919
    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getReplyApplicId()[B

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 920
    .local v29, rlyId:Ljava/lang/String;
    const-string v31, "PduComposer"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-----makeMessageBody ----- rlyId = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v31, "reply-to-application-id"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getReplyApplicId()[B

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_17c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_76 .. :try_end_17c} :catch_218

    .line 930
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v29           #rlyId:Ljava/lang/String;
    .end local v30           #start:[B
    :cond_17c
    :goto_17c
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v16

    .line 931
    .local v16, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 932
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 936
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v28

    .line 937
    .local v28, partNum:I
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 938
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1b0
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_3d3

    .line 939
    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 940
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v5

    .line 943
    .local v5, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v12

    .line 946
    .local v12, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v25

    .line 948
    .local v25, partContentType:[B
    if-nez v25, :cond_220

    .line 950
    const/16 v31, 0x1

    goto/16 :goto_3d

    .line 901
    .end local v5           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v12           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v16           #ctLength:I
    .end local v21           #i:I
    .end local v25           #partContentType:[B
    .end local v28           #partNum:I
    .restart local v30       #start:[B
    :cond_1ed
    :try_start_1ed
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_216
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1ed .. :try_end_216} :catch_218

    goto/16 :goto_b2

    .line 926
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v30           #start:[B
    :catch_218
    move-exception v31

    move-object/from16 v19, v31

    .line 927
    .local v19, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_17c

    .line 954
    .end local v19           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v12       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v16       #ctLength:I
    .restart local v21       #i:I
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v25       #partContentType:[B
    .restart local v28       #partNum:I
    :cond_220
    sget-object v31, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 956
    .local v26, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v26, :cond_250

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 966
    :goto_23a
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v23

    .line 968
    .local v23, name:[B
    if-nez v23, :cond_25c

    .line 969
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v23

    .line 971
    if-nez v23, :cond_25c

    .line 972
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v23

    .line 974
    if-nez v23, :cond_25c

    .line 978
    const/16 v31, 0x1

    goto/16 :goto_3d

    .line 959
    .end local v23           #name:[B
    :cond_250
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_23a

    .line 982
    .restart local v23       #name:[B
    :cond_25c
    const/16 v31, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 983
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 986
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v8

    .line 987
    .local v8, charset:I
    if-eqz v8, :cond_281

    .line 988
    const/16 v31, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 989
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 992
    :cond_281
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v14

    .line 993
    .local v14, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 994
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 998
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v9

    .line 1000
    .local v9, contentId:[B
    if-eqz v9, :cond_2d5

    .line 1001
    const/16 v31, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1002
    const/16 v31, 0x3c

    const/16 v32, 0x0

    aget-byte v32, v9, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_321

    const/16 v31, 0x3e

    move-object v0, v9

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-byte v32, v9, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_321

    .line 1003
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1010
    :cond_2d5
    :goto_2d5
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v10

    .line 1011
    .local v10, contentLocation:[B
    if-eqz v10, :cond_2ea

    .line 1012
    const/16 v31, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1013
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1017
    :cond_2ea
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v20

    .line 1019
    .local v20, headerLength:I
    const/16 v18, 0x0

    .line 1020
    .local v18, dataLength:I
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v27

    .line 1022
    .local v27, partData:[B
    if-eqz v27, :cond_34a

    .line 1023
    const/16 v31, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1024
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v18, v0

    .line 1045
    :cond_30d
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v31

    sub-int v31, v31, v20

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_3a5

    .line 1046
    new-instance v31, Ljava/lang/RuntimeException;

    const-string v32, "BUG: Length sanity check failed"

    invoke-direct/range {v31 .. v32}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 1005
    .end local v10           #contentLocation:[B
    .end local v18           #dataLength:I
    .end local v20           #headerLength:I
    .end local v27           #partData:[B
    :cond_321
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_2d5

    .line 1028
    .restart local v10       #contentLocation:[B
    .restart local v18       #dataLength:I
    .restart local v20       #headerLength:I
    .restart local v27       #partData:[B
    :cond_34a
    const/16 v31, 0x400

    :try_start_34c
    move/from16 v0, v31

    new-array v0, v0, [B

    move-object v7, v0

    .line 1029
    .local v7, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v31, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 1030
    .local v15, cr:Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 1031
    .local v22, len:I
    :goto_361
    invoke-virtual {v15, v7}, Ljava/io/InputStream;->read([B)I

    move-result v22

    const/16 v31, -0x1

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_30d

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object v1, v7

    move/from16 v2, v32

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v31, v0

    add-int v31, v31, v22

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_38d
    .catch Ljava/io/FileNotFoundException; {:try_start_34c .. :try_end_38d} :catch_390
    .catch Ljava/io/IOException; {:try_start_34c .. :try_end_38d} :catch_397
    .catch Ljava/lang/RuntimeException; {:try_start_34c .. :try_end_38d} :catch_39e

    .line 1034
    add-int v18, v18, v22

    goto :goto_361

    .line 1036
    .end local v7           #buffer:[B
    .end local v15           #cr:Ljava/io/InputStream;
    .end local v22           #len:I
    :catch_390
    move-exception v31

    move-object/from16 v19, v31

    .line 1037
    .local v19, e:Ljava/io/FileNotFoundException;
    const/16 v31, 0x1

    goto/16 :goto_3d

    .line 1038
    .end local v19           #e:Ljava/io/FileNotFoundException;
    :catch_397
    move-exception v31

    move-object/from16 v19, v31

    .line 1039
    .local v19, e:Ljava/io/IOException;
    const/16 v31, 0x1

    goto/16 :goto_3d

    .line 1040
    .end local v19           #e:Ljava/io/IOException;
    :catch_39e
    move-exception v31

    move-object/from16 v19, v31

    .line 1041
    .local v19, e:Ljava/lang/RuntimeException;
    const/16 v31, 0x1

    goto/16 :goto_3d

    .line 1049
    .end local v19           #e:Ljava/lang/RuntimeException;
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1050
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1051
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 938
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1b0

    .line 1055
    .end local v5           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v8           #charset:I
    .end local v9           #contentId:[B
    .end local v10           #contentLocation:[B
    .end local v12           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v14           #contentTypeLength:I
    .end local v18           #dataLength:I
    .end local v20           #headerLength:I
    .end local v23           #name:[B
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v25           #partContentType:[B
    .end local v26           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v27           #partData:[B
    :cond_3d3
    const/16 v31, 0x0

    goto/16 :goto_3d
.end method

.method private makeNotifyResp()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 717
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 718
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 719
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 723
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 724
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 727
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 742
    :goto_22
    return v0

    .line 732
    :cond_23
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 733
    goto :goto_22

    .line 737
    :cond_2d
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 738
    goto :goto_22

    :cond_37
    move v0, v2

    .line 742
    goto :goto_22
.end method

.method private makeReadRecInd()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 669
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 670
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 671
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 675
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 676
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 679
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 710
    :goto_22
    return v0

    .line 684
    :cond_23
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 685
    goto :goto_22

    .line 689
    :cond_2d
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 690
    goto :goto_22

    .line 694
    :cond_37
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    .line 695
    goto :goto_22

    .line 699
    :cond_41
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 702
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    .line 703
    goto :goto_22

    :cond_50
    move v0, v2

    .line 710
    goto :goto_22
.end method

.method private makeSendReqPdu()I
    .registers 7

    .prologue
    const/16 v5, 0x98

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 778
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_11

    .line 779
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 780
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 784
    :cond_11
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 785
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 788
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 790
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 791
    .local v1, trid:[B
    if-nez v1, :cond_2e

    .line 793
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 795
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 798
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v3

    .line 857
    :goto_3a
    return v2

    .line 803
    :cond_3b
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 806
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_4a

    move v2, v3

    .line 807
    goto :goto_3a

    .line 810
    :cond_4a
    const/4 v0, 0x0

    .line 813
    .local v0, recipient:Z
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_54

    .line 814
    const/4 v0, 0x1

    .line 818
    :cond_54
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_5d

    .line 819
    const/4 v0, 0x1

    .line 823
    :cond_5d
    const/16 v2, 0x81

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_66

    .line 824
    const/4 v0, 0x1

    .line 828
    :cond_66
    if-nez v0, :cond_6a

    move v2, v3

    .line 829
    goto :goto_3a

    .line 833
    :cond_6a
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 837
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 840
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 843
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 846
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 849
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 852
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 855
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody()I

    move v2, v4

    .line 857
    goto :goto_3a
.end method


# virtual methods
.method protected append(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 200
    return-void
.end method

.method protected appendDateValue(J)V
    .registers 3
    .parameter "date"

    .prologue
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 400
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 8
    .parameter "enStr"

    .prologue
    .line 327
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez p1, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 329
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 330
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 331
    .local v3, textString:[B
    if-nez v3, :cond_17

    .line 350
    :goto_16
    return-void

    .line 340
    :cond_17
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 341
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 343
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 344
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 346
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 347
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 348
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 349
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_16
.end method

.method protected appendLongInteger(J)V
    .registers 13
    .parameter "longInt"

    .prologue
    const/16 v9, 0x8

    .line 260
    move-wide v3, p1

    .line 263
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_4
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_10

    if-ge v2, v9, :cond_10

    .line 264
    ushr-long/2addr v3, v9

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 268
    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 272
    const/4 v5, 0x1

    sub-int v5, v2, v5

    mul-int/lit8 v1, v5, 0x8

    .line 274
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v2, :cond_28

    .line 275
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 276
    sub-int/2addr v1, v9

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 278
    :cond_28
    return-void
.end method

.method protected appendOctet(I)V
    .registers 2
    .parameter "number"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 229
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 455
    return-void
.end method

.method protected appendQuotedString([B)V
    .registers 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 437
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 438
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 439
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 440
    return-void
.end method

.method protected appendShortInteger(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 217
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 218
    return-void
.end method

.method protected appendShortLength(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 242
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 315
    return-void
.end method

.method protected appendTextString([B)V
    .registers 5
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 293
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_c

    .line 294
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 297
    :cond_c
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 298
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 299
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .registers 14
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 367
    const-wide/16 v1, 0x7f

    .line 369
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/4 v5, 0x5

    if-ge v0, v5, :cond_c

    .line 370
    cmp-long v5, p1, v1

    if-gez v5, :cond_20

    .line 377
    :cond_c
    :goto_c
    if-lez v0, :cond_28

    .line 378
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 379
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 381
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 383
    add-int/lit8 v0, v0, -0x1

    .line 384
    goto :goto_c

    .line 374
    .end local v3           #temp:J
    :cond_20
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 386
    :cond_28
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 387
    return-void
.end method

.method protected appendValueLength(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 416
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 417
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 423
    :goto_a
    return-void

    .line 421
    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_a
.end method

.method protected arraycopy([BII)V
    .registers 5
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 191
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 192
    return-void
.end method

.method public make()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 158
    .local v0, type:I
    packed-switch v0, :pswitch_data_34

    :pswitch_a
    move-object v1, v2

    .line 183
    :goto_b
    return-object v1

    .line 160
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 161
    goto :goto_b

    .line 165
    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 166
    goto :goto_b

    .line 170
    :pswitch_1c
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 171
    goto :goto_b

    .line 175
    :pswitch_24
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 176
    goto :goto_b

    .line 183
    :cond_2c
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_b

    .line 158
    nop

    :pswitch_data_34
    .packed-switch 0x80
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_1c
        :pswitch_a
        :pswitch_24
    .end packed-switch
.end method
