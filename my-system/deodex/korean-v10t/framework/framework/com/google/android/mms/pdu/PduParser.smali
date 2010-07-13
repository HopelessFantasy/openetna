.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 75
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 80
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 32
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 65
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 70
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 95
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 96
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 5
    .parameter "headers"

    .prologue
    .line 1659
    if-nez p0, :cond_4

    .line 1660
    const/4 p0, 0x0

    .line 1866
    .end local p0
    :goto_3
    return p0

    .line 1664
    .restart local p0
    :cond_4
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 1667
    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1668
    .local v1, mmsVersion:I
    if-nez v1, :cond_14

    .line 1670
    const/4 p0, 0x0

    goto :goto_3

    .line 1674
    :cond_14
    packed-switch v0, :pswitch_data_15c

    .line 1863
    const/4 p0, 0x0

    goto :goto_3

    .line 1677
    :pswitch_19
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1678
    .local v0, srContentType:[B
    if-nez v0, :cond_23

    .line 1679
    const/4 p0, 0x0

    goto :goto_3

    .line 1683
    :cond_23
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .line 1684
    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_2d

    .line 1685
    const/4 p0, 0x0

    goto :goto_3

    .line 1689
    :cond_2d
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .line 1690
    .local p0, srTransactionId:[B
    if-nez p0, :cond_158

    .line 1691
    const/4 p0, 0x0

    goto :goto_3

    .line 1697
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_37
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1698
    .local v0, scResponseStatus:I
    if-nez v0, :cond_41

    .line 1699
    const/4 p0, 0x0

    goto :goto_3

    .line 1703
    :cond_41
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .line 1704
    .local p0, scTransactionId:[B
    if-nez p0, :cond_158

    .line 1705
    const/4 p0, 0x0

    goto :goto_3

    .line 1711
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4b
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1712
    .local v0, niContentLocation:[B
    if-nez v0, :cond_55

    .line 1713
    const/4 p0, 0x0

    goto :goto_3

    .line 1717
    :cond_55
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .line 1718
    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_63

    .line 1719
    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_3

    .line 1723
    :cond_63
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1724
    .local v0, niMessageClass:[B
    if-nez v0, :cond_6d

    .line 1725
    const/4 p0, 0x0

    goto :goto_3

    .line 1729
    :cond_6d
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .line 1730
    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_7b

    .line 1731
    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_3

    .line 1735
    :cond_7b
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1736
    .local p0, niTransactionId:[B
    if-nez p0, :cond_158

    .line 1737
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1743
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_86
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1744
    .local v0, nriStatus:I
    if-nez v0, :cond_91

    .line 1745
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1749
    :cond_91
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .line 1750
    .local p0, nriTransactionId:[B
    if-nez p0, :cond_158

    .line 1751
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1757
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_9c
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1758
    .local v0, rcContentType:[B
    if-nez v0, :cond_a7

    .line 1759
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1763
    :cond_a7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .line 1764
    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_158

    .line 1765
    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1771
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_b6
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1772
    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_c5

    .line 1773
    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1777
    :cond_c5
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1778
    .local v0, diMessageId:[B
    if-nez v0, :cond_d0

    .line 1779
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1783
    :cond_d0
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .line 1784
    .local v0, diStatus:I
    if-nez v0, :cond_db

    .line 1785
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1789
    :cond_db
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .line 1790
    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 1791
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1797
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_e6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .line 1798
    .local p0, aiTransactionId:[B
    if-nez p0, :cond_158

    .line 1799
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1805
    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_f1
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1806
    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_100

    .line 1807
    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1811
    :cond_100
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1812
    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_10b

    .line 1813
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1817
    :cond_10b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1818
    .local v0, roMessageId:[B
    if-nez v0, :cond_116

    .line 1819
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1823
    :cond_116
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .line 1824
    .local v0, roReadStatus:I
    if-nez v0, :cond_121

    .line 1825
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1829
    :cond_121
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .line 1830
    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 1831
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1837
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_12c
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .line 1838
    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_137

    .line 1839
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1843
    :cond_137
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1844
    .local v0, rrMessageId:[B
    if-nez v0, :cond_142

    .line 1845
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1849
    :cond_142
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .line 1850
    .local v0, rrReadStatus:I
    if-nez v0, :cond_14d

    .line 1851
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1855
    :cond_14d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .line 1856
    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 1857
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1866
    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_158
    const/4 p0, 0x1

    goto/16 :goto_3

    .line 1674
    nop

    :pswitch_data_15c
    .packed-switch 0x80
        :pswitch_19
        :pswitch_37
        :pswitch_4b
        :pswitch_86
        :pswitch_9c
        :pswitch_e6
        :pswitch_b6
        :pswitch_12c
        :pswitch_f1
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 6
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1623
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    if-nez p0, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1624
    :cond_e
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_18

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_18

    move v2, v3

    .line 1649
    :goto_17
    return v2

    .line 1630
    :cond_18
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2c

    .line 1631
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1632
    .local v0, contentId:[B
    if-eqz v0, :cond_2c

    .line 1633
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2c

    move v2, v4

    .line 1634
    goto :goto_17

    .line 1640
    .end local v0           #contentId:[B
    :cond_2c
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_40

    .line 1641
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1642
    .local v1, contentType:[B
    if-eqz v1, :cond_40

    .line 1643
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_40

    move v2, v4

    .line 1644
    goto :goto_17

    .end local v1           #contentType:[B
    :cond_40
    move v2, v3

    .line 1649
    goto :goto_17
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1096
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1097
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1098
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1099
    :cond_1d
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 6
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1062
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1063
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1064
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1065
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1066
    :cond_22
    if-eq v3, v1, :cond_4c

    if-eqz v1, :cond_4c

    .line 1068
    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 1069
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1070
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1078
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1079
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1073
    :cond_42
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1074
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    .line 1082
    :cond_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 1083
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1086
    :goto_56
    return-object v2

    :cond_57
    const/4 v2, 0x0

    goto :goto_56
.end method

.method protected static isText(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 1046
    const/16 v0, 0x20

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x80

    if-lt p0, v0, :cond_13

    const/16 v0, 0xff

    if-gt p0, v0, :cond_13

    :cond_11
    move v0, v1

    .line 1057
    :goto_12
    return v0

    .line 1050
    :cond_13
    packed-switch p0, :pswitch_data_1a

    .line 1057
    :pswitch_16
    const/4 v0, 0x0

    goto :goto_12

    :pswitch_18
    move v0, v1

    .line 1054
    goto :goto_12

    .line 1050
    :pswitch_data_1a
    .packed-switch 0x9
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    .line 1002
    const/16 v0, 0x21

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_b

    :cond_9
    move v0, v1

    .line 1027
    :goto_a
    return v0

    .line 1006
    :cond_b
    sparse-switch p0, :sswitch_data_12

    .line 1027
    const/4 v0, 0x1

    goto :goto_a

    :sswitch_10
    move v0, v1

    .line 1024
    goto :goto_a

    .line 1006
    :sswitch_data_12
    .sparse-switch
        0x22 -> :sswitch_10
        0x28 -> :sswitch_10
        0x29 -> :sswitch_10
        0x2c -> :sswitch_10
        0x2f -> :sswitch_10
        0x3a -> :sswitch_10
        0x3b -> :sswitch_10
        0x3c -> :sswitch_10
        0x3d -> :sswitch_10
        0x3e -> :sswitch_10
        0x3f -> :sswitch_10
        0x40 -> :sswitch_10
        0x5b -> :sswitch_10
        0x5c -> :sswitch_10
        0x5d -> :sswitch_10
        0x7b -> :sswitch_10
        0x7d -> :sswitch_10
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 825
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 9
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1400
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1402
    .restart local p0
    :cond_c
    const/4 v0, 0x0

    .line 1403
    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1404
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1405
    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    const/4 v1, -0x1

    if-ne v1, v2, :cond_22

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1406
    .restart local p0
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1408
    and-int/lit16 v1, v2, 0xff

    .line 1410
    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_ba

    .line 1411
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1412
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1413
    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1414
    .end local v1           #cur:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1415
    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_48

    const/4 v1, -0x1

    if-ne v1, v4, :cond_48

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1416
    .restart local p0
    :cond_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1417
    and-int/lit16 v1, v4, 0xff

    .line 1419
    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_82

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_82

    .line 1420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .line 1435
    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_5a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1436
    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .line 1437
    .local v1, parameterLen:I
    if-lez v1, :cond_6b

    .line 1438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1441
    :cond_6b
    if-gez v1, :cond_b6

    .line 1442
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .line 1452
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_81
    return-object v0

    .line 1421
    .restart local v0       #contentType:[B
    .local v1, first:I
    .restart local v2       #length:I
    .restart local v3       #startPos:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_82
    const/16 v5, 0x7f

    if-le v1, v5, :cond_a1

    .line 1422
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1424
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_98

    .line 1425
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1427
    .local v0, index:I
    :cond_98
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1428
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1431
    .restart local v1       #first:I
    :cond_a1
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_81

    .end local v2           #length:I
    .restart local v0       #contentType:[B
    .local v1, parameterLen:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_b6
    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object p0, v0

    .end local v0           #contentType:[B
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .local p0, contentType:[B
    :goto_b8
    move-object v0, p0

    .line 1452
    goto :goto_81

    .line 1445
    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_ba
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_c5

    .line 1446
    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    goto :goto_b8

    .line 1448
    .end local p1           #temp:I
    .restart local v0       #contentType:[B
    .restart local v2       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_c5
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .restart local p1       #temp:I
    goto :goto_b8
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 8
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1229
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1230
    .restart local p0
    :cond_c
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1232
    .restart local p0
    :cond_1c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1233
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1234
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .line 1235
    .end local v1           #tempPos:I
    .local v3, tempPos:I
    :goto_26
    if-lez v0, :cond_143

    .line 1236
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1237
    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_39

    const/4 v4, -0x1

    if-ne v4, v1, :cond_39

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1238
    .restart local p0
    :cond_39
    add-int/lit8 v0, v0, -0x1

    .line 1240
    sparse-switch v1, :sswitch_data_14e

    .line 1371
    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1           #param:I
    move-result v4

    if-ne v1, v4, :cond_13f

    .line 1372
    const-string v1, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    :goto_4d
    move v3, v1

    .line 1378
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    goto :goto_26

    .line 1256
    .local v1, param:I
    :sswitch_4f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1257
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1258
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1259
    const/16 v1, 0x7f

    if-le v0, v1, :cond_84

    .line 1261
    .end local v1           #param:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1263
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_78

    .line 1264
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1265
    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .end local v0           #type:[B
    :cond_78
    :goto_78
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1278
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1279
    .local v0, lastLen:I
    goto :goto_4d

    .line 1271
    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v3       #tempPos:I
    :cond_84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .line 1272
    .local v0, type:[B
    if-eqz v0, :cond_78

    if-eqz p1, :cond_78

    .line 1273
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 1296
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1297
    .local v0, start:[B
    if-eqz v0, :cond_a9

    if-eqz p1, :cond_a9

    .line 1298
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    :cond_a9
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1302
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1303
    .local v0, lastLen:I
    goto :goto_4d

    .line 1320
    .local v1, param:I
    .restart local v3       #tempPos:I
    :sswitch_b5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1321
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1322
    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1324
    const/16 v1, 0x20

    if-le v0, v1, :cond_c8

    .end local v1           #param:I
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_ca

    :cond_c8
    if-nez v0, :cond_10b

    .line 1327
    :cond_ca
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .line 1329
    .local v1, charsetStr:[B
    :try_start_cf
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .line 1331
    .local v0, charsetInt:I
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #tempPos:I
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cf .. :try_end_e5} :catch_f2

    .line 1345
    .end local v1           #charsetStr:[B
    :cond_e5
    :goto_e5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1346
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1347
    .local v0, lastLen:I
    goto/16 :goto_4d

    .line 1332
    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    :catch_f2
    move-exception v0

    .line 1334
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 1339
    .local v0, firstValue:I
    .restart local v3       #tempPos:I
    :cond_10b
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .line 1340
    .local v0, charset:I
    if-eqz p1, :cond_e5

    .line 1341
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 1359
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1360
    .local v0, name:[B
    if-eqz v0, :cond_132

    if-eqz p1, :cond_132

    .line 1361
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    :cond_132
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1365
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1366
    .local v0, lastLen:I
    goto/16 :goto_4d

    .line 1374
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_13f
    const/4 v0, 0x0

    move v1, v3

    .end local v3           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_4d

    .line 1380
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_143
    if-eqz v0, :cond_14c

    .line 1381
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_14c
    return-void

    .line 1240
    nop

    :sswitch_data_14e
    .sparse-switch
        0x81 -> :sswitch_b5
        0x83 -> :sswitch_4f
        0x85 -> :sswitch_120
        0x89 -> :sswitch_4f
        0x8a -> :sswitch_97
        0x97 -> :sswitch_120
        0x99 -> :sswitch_97
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 9
    .parameter "pduDataStream"

    .prologue
    .line 901
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_c

    if-nez p0, :cond_c

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 902
    :cond_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 903
    const/4 v3, 0x0

    .line 904
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 905
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 906
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_23

    const/4 v7, -0x1

    if-ne v7, v5, :cond_23

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 907
    :cond_23
    and-int/lit16 v2, v5, 0xff

    .line 909
    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 910
    const/16 v7, 0x20

    if-ge v2, v7, :cond_33

    .line 911
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 913
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 916
    :cond_33
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 919
    .local v6, textString:[B
    if-eqz v0, :cond_42

    .line 920
    :try_start_3a
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_40
    move-object v7, v3

    .line 928
    :goto_41
    return-object v7

    .line 922
    :cond_42
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_49

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_40

    .line 924
    :catch_49
    move-exception v7

    move-object v1, v7

    .line 925
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_41
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 1171
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1172
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1173
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1174
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1175
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1176
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 1177
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1179
    :goto_2d
    return-wide v1

    :cond_2e
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_2d
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 10
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1139
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-nez p0, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1140
    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1141
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-ne v7, v4, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1142
    :cond_1f
    and-int/lit16 v0, v4, 0xff

    .line 1144
    .local v0, count:I
    if-le v0, v8, :cond_2b

    .line 1145
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1148
    :cond_2b
    const-wide/16 v2, 0x0

    .line 1150
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 1151
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1152
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-ne v7, v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1153
    :cond_40
    shl-long/2addr v2, v8

    .line 1154
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1150
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1157
    :cond_48
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 9
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1465
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1466
    .restart local p0
    :cond_c
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1467
    .restart local p0
    :cond_18
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_24

    if-gtz p2, :cond_24

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1485
    .restart local p0
    :cond_24
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1486
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1487
    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v3, v1

    .end local v1           #tempPos:I
    .local v3, tempPos:I
    move v1, v0

    .line 1488
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    :goto_2c
    if-lez v1, :cond_138

    .line 1489
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1490
    .local v0, header:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_3f

    const/4 v4, -0x1

    if-ne v4, v0, :cond_3f

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1491
    .restart local p0
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    .line 1493
    const/16 v4, 0x7f

    if-le v0, v4, :cond_f4

    .line 1495
    sparse-switch v0, :sswitch_data_150

    .line 1574
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_f0

    .line 1575
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .line 1612
    .end local v1           #lastLen:I
    .local p0, lastLen:I
    :goto_59
    return p1

    .line 1501
    .restart local v0       #header:I
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_5a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1502
    .local v0, contentLocation:[B
    if-eqz v0, :cond_64

    .line 1503
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1506
    :cond_64
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1507
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :goto_6c
    move v3, v1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    move v1, v0

    .line 1605
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_2c

    .line 1514
    .local v0, header:I
    :sswitch_6f
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1515
    .local v0, contentId:[B
    if-eqz v0, :cond_79

    .line 1516
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1519
    :cond_79
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1520
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1521
    .local v0, lastLen:I
    goto :goto_6c

    .line 1532
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :sswitch_82
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1533
    .local v0, len:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1534
    .end local v1           #lastLen:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1535
    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .line 1536
    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1538
    .local v3, value:I
    const/16 v1, 0x80

    if-ne v3, v1, :cond_d0

    .line 1539
    .end local v1           #thisEndPos:I
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1551
    :goto_9c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1552
    .restart local v1       #thisEndPos:I
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_14b

    .line 1553
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1554
    .end local v3           #value:I
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_b4

    .line 1555
    .end local v1           #thisEndPos:I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1559
    :cond_b4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1560
    .local v3, thisEndPos:I
    sub-int v1, v4, v3

    if-ge v1, v0, :cond_c5

    .line 1561
    sub-int v1, v4, v3

    sub-int/2addr v0, v1

    .line 1562
    .local v0, last:I
    new-array v1, v0, [B

    .line 1563
    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v1           #temp:[B
    .end local v4           #thisStartPos:I
    :cond_c5
    move v1, v5

    .end local v5           #value:I
    .local v1, value:I
    move v0, v3

    .line 1567
    .end local v3           #thisEndPos:I
    .local v0, thisEndPos:I
    :goto_c7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1568
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1569
    .local v0, lastLen:I
    goto :goto_6c

    .line 1540
    .end local v1           #tempPos:I
    .local v0, len:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    :cond_d0
    const/16 v1, 0x81

    if-ne v3, v1, :cond_da

    .line 1541
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_9c

    .line 1542
    :cond_da
    const/16 v1, 0x82

    if-ne v3, v1, :cond_e4

    .line 1543
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_9c

    .line 1545
    :cond_e4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1547
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_9c

    .line 1578
    .end local v0           #len:I
    .end local v4           #thisStartPos:I
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_f0
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_6c

    .line 1581
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_f4
    const/16 v4, 0x20

    if-lt v0, v4, :cond_121

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_121

    .line 1583
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1584
    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #lastLen:I
    move-result-object v1

    .line 1587
    .local v1, tempValue:[B
    const/4 v3, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v3           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v3, v0, :cond_117

    .line 1589
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1592
    :cond_117
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1593
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1594
    .local v0, lastLen:I
    goto/16 :goto_6c

    .line 1599
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_121
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_134

    .line 1600
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_59

    .line 1603
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_134
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_6c

    .line 1607
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_138
    if-eqz v1, :cond_146

    .line 1608
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_59

    .line 1612
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_146
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_59

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_14b
    move v0, v1

    .end local v1           #thisEndPos:I
    .local v0, thisEndPos:I
    move v1, v3

    .end local v3           #value:I
    .local v1, value:I
    goto/16 :goto_c7

    .line 1495
    nop

    :sswitch_data_150
    .sparse-switch
        0x8e -> :sswitch_5a
        0xae -> :sswitch_82
        0xc0 -> :sswitch_6f
        0xc5 -> :sswitch_82
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .registers 11
    .parameter "pduDataStream"

    .prologue
    .line 716
    if-nez p0, :cond_4

    .line 717
    const/4 p0, 0x0

    .line 813
    .end local p0
    :goto_3
    return-object p0

    .line 720
    .restart local p0
    :cond_4
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 721
    .local v2, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 723
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_f
    if-ge v5, v2, :cond_f2

    .line 724
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 725
    .local v4, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 726
    .local v3, dataLength:I
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 727
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 728
    .local v8, startPos:I
    if-gtz v8, :cond_26

    .line 730
    const/4 p0, 0x0

    goto :goto_3

    .line 734
    :cond_26
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v1

    .line 736
    .local v1, contentType:[B
    if-eqz v1, :cond_6e

    .line 737
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 743
    .end local v1           #contentType:[B
    :goto_34
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 744
    .local v1, name:[B
    if-eqz v1, :cond_47

    .line 745
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 749
    :cond_47
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #name:[B
    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 750
    .local v1, charset:Ljava/lang/Integer;
    if-eqz v1, :cond_5c

    .line 751
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #charset:Ljava/lang/Integer;
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 755
    :cond_5c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 756
    .local v1, endPos:I
    sub-int v1, v8, v1

    sub-int v1, v4, v1

    .line 757
    .local v1, partHeaderLen:I
    if-lez v1, :cond_7b

    .line 758
    invoke-static {p0, v7, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v1

    .end local v1           #partHeaderLen:I
    if-nez v1, :cond_7f

    .line 760
    const/4 p0, 0x0

    goto :goto_3

    .line 739
    .local v1, contentType:[B
    :cond_6e
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #contentType:[B
    const/4 v9, 0x0

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_34

    .line 762
    .local v1, partHeaderLen:I
    :cond_7b
    if-gez v1, :cond_7f

    .line 764
    const/4 p0, 0x0

    goto :goto_3

    .line 770
    .end local v1           #partHeaderLen:I
    :cond_7f
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_a6

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    if-nez v1, :cond_a6

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    if-nez v1, :cond_a6

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-nez v1, :cond_a6

    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .end local v8           #startPos:I
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 779
    :cond_a6
    if-lez v3, :cond_df

    .line 780
    new-array v4, v3, [B

    .line 781
    .local v4, partData:[B
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 783
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v3

    .line 784
    .local v3, partDataEncoding:[B
    if-eqz v3, :cond_f5

    .line 785
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 786
    .local v1, encoding:Ljava/lang/String;
    const-string v3, "base64"

    .end local v3           #partDataEncoding:[B
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 788
    invoke-static {v4}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 796
    .end local v4           #partData:[B
    .local v1, partData:[B
    :goto_c5
    if-nez v1, :cond_dc

    .line 797
    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 798
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 789
    .local v1, encoding:Ljava/lang/String;
    .restart local v4       #partData:[B
    .restart local p0
    :cond_cf
    const-string v3, "quoted-printable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #encoding:Ljava/lang/String;
    if-eqz v1, :cond_f5

    .line 791
    invoke-static {v4}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v1

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_c5

    .line 800
    :cond_dc
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 804
    .end local v1           #partData:[B
    :cond_df
    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v1

    if-nez v1, :cond_ee

    .line 806
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 723
    :goto_e9
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto/16 :goto_f

    .line 809
    :cond_ee
    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_e9

    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_f2
    move-object p0, v0

    .line 813
    goto/16 :goto_3

    .restart local v4       #partData:[B
    .restart local v6       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_f5
    move-object v1, v4

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_c5
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1116
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1117
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1118
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1119
    :cond_1d
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 839
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 840
    :cond_d
    const/4 v0, 0x0

    .line 841
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 842
    .local v1, temp:I
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 858
    :goto_15
    return v2

    .line 846
    :cond_16
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    .line 847
    shl-int/lit8 v0, v0, 0x7

    .line 848
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 849
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 850
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 851
    goto :goto_15

    .line 855
    :cond_27
    shl-int/lit8 v0, v0, 0x7

    .line 856
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 858
    goto :goto_15
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    .line 876
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 877
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 878
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 879
    :cond_1d
    and-int/lit16 v0, v1, 0xff

    .line 881
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_25

    move v2, v0

    .line 884
    :goto_24
    return v2

    .line 883
    :cond_25
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2e

    .line 884
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_24

    .line 887
    :cond_2e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 940
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 958
    :cond_d
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 961
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 962
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 963
    :cond_21
    if-ne v2, p1, :cond_2f

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2f

    .line 966
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 981
    :goto_2a
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 967
    :cond_2f
    if-nez p1, :cond_39

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_39

    .line 970
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2a

    .line 973
    :cond_39
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_2a
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1191
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1192
    :cond_c
    new-array v0, p1, [B

    .line 1193
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1194
    .local v1, readLen:I
    if-ge v1, p1, :cond_17

    .line 1195
    const/4 v2, -0x1

    .line 1197
    :goto_16
    return v2

    :cond_17
    move v2, v1

    goto :goto_16
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 105
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_7

    move-object v12, v14

    .line 184
    :goto_6
    return-object v12

    .line 110
    :cond_7
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 111
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v12, :cond_15

    move-object v12, v14

    .line 113
    goto :goto_6

    .line 117
    :cond_15
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 120
    .local v4, messageType:I
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v12

    if-nez v12, :cond_2c

    .line 121
    const-string v12, "check mandatory headers failed!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v12, v14

    .line 122
    goto :goto_6

    .line 125
    :cond_2c
    const/16 v12, 0x80

    if-eq v12, v4, :cond_34

    const/16 v12, 0x84

    if-ne v12, v4, :cond_42

    .line 128
    :cond_34
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 129
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v12, :cond_42

    move-object v12, v14

    .line 131
    goto :goto_6

    .line 135
    :cond_42
    packed-switch v4, :pswitch_data_c6

    .line 183
    const-string v12, "Parser doesn\'t support this message type in this version!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v12, v14

    .line 184
    goto :goto_6

    .line 137
    :pswitch_4c
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11, v12, v13}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v11

    .line 138
    goto :goto_6

    .line 140
    .end local v11           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_57
    new-instance v10, Lcom/google/android/mms/pdu/SendConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v12}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v10

    .line 141
    goto :goto_6

    .line 143
    .end local v10           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_60
    new-instance v5, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v12}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v5

    .line 145
    goto :goto_6

    .line 147
    .end local v5           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_69
    new-instance v6, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v12}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v6

    .line 149
    goto :goto_6

    .line 151
    .end local v6           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_72
    new-instance v9, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9, v12, v13}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 154
    .local v9, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 155
    .local v1, contentType:[B
    if-nez v1, :cond_83

    move-object v12, v14

    .line 156
    goto :goto_6

    .line 158
    :cond_83
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 159
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_98

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    :cond_98
    move-object v12, v9

    .line 163
    goto/16 :goto_6

    :cond_9b
    move-object v12, v14

    .line 165
    goto/16 :goto_6

    .line 167
    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local v9           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_9e
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v12}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v3

    .line 169
    goto/16 :goto_6

    .line 171
    .end local v3           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_a8
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v0

    .line 173
    goto/16 :goto_6

    .line 175
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_b2
    new-instance v7, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v12}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v7

    .line 177
    goto/16 :goto_6

    .line 179
    .end local v7           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_bc
    new-instance v8, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v12}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v8

    .line 181
    goto/16 :goto_6

    .line 135
    :pswitch_data_c6
    .packed-switch 0x80
        :pswitch_4c
        :pswitch_57
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_a8
        :pswitch_9e
        :pswitch_bc
        :pswitch_b2
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 33
    .parameter "pduDataStream"

    .prologue
    .line 195
    if-nez p1, :cond_5

    .line 196
    const/16 v27, 0x0

    .line 706
    .end local p0
    :goto_4
    return-object v27

    .line 199
    .restart local p0
    :cond_5
    const/4 v12, 0x1

    .line 200
    .local v12, keepParsing:Z
    new-instance v11, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 202
    .end local p0
    .local v11, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_b
    :goto_b
    if-eqz v12, :cond_5ad

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_5ad

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 204
    .local v10, headerField:I
    packed-switch v10, :pswitch_data_5b2

    .line 701
    :pswitch_1a
    const-string v27, "Unknown header"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 207
    :pswitch_20
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 208
    .local v16, messageType:I
    packed-switch v16, :pswitch_data_634

    .line 228
    :try_start_27
    move-object v0, v11

    move/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_2e
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2e} :catch_5d

    goto :goto_b

    .line 229
    :catch_2f
    move-exception v6

    .line 230
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 232
    const/16 v27, 0x0

    goto :goto_4

    .line 225
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_5a
    const/16 v27, 0x0

    goto :goto_4

    .line 233
    :catch_5d
    move-exception v6

    .line 234
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 235
    const/16 v27, 0x0

    goto :goto_4

    .line 268
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageType:I
    :pswitch_7a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 271
    .local v24, value:I
    :try_start_7e
    move-object v0, v11

    move/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_85
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7e .. :try_end_85} :catch_86
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_85} :catch_b2

    goto :goto_b

    .line 272
    :catch_86
    move-exception v6

    .line 273
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 275
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 276
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_b2
    move-exception v6

    .line 277
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 278
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 289
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:I
    :pswitch_d0
    :try_start_d0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 290
    .local v24, value:J
    move-object v0, v11

    move-wide/from16 v1, v24

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_db
    .catch Ljava/lang/RuntimeException; {:try_start_d0 .. :try_end_db} :catch_dd

    goto/16 :goto_b

    .line 291
    .end local v24           #value:J
    :catch_dd
    move-exception v27

    move-object/from16 v6, v27

    .line 292
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 293
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 304
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_fd
    :try_start_fd
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 305
    .restart local v24       #value:J
    move-object v0, v11

    move-wide/from16 v1, v24

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_108
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_108} :catch_10a

    goto/16 :goto_b

    .line 306
    .end local v24           #value:J
    :catch_10a
    move-exception v27

    move-object/from16 v6, v27

    .line 307
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 308
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 334
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_12a
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .line 335
    .local v24, value:[B
    if-eqz v24, :cond_b

    .line 337
    :try_start_136
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_13d
    .catch Ljava/lang/NullPointerException; {:try_start_136 .. :try_end_13d} :catch_13f
    .catch Ljava/lang/RuntimeException; {:try_start_136 .. :try_end_13d} :catch_147

    goto/16 :goto_b

    .line 338
    :catch_13f
    move-exception v6

    .line 339
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 340
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_147
    move-exception v6

    .line 341
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 342
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 358
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:[B
    :pswitch_165
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 360
    .local v24, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_b

    .line 362
    :try_start_16b
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_172
    .catch Ljava/lang/NullPointerException; {:try_start_16b .. :try_end_172} :catch_174
    .catch Ljava/lang/RuntimeException; {:try_start_16b .. :try_end_172} :catch_17c

    goto/16 :goto_b

    .line 363
    :catch_174
    move-exception v6

    .line 364
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 365
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_17c
    move-exception v6

    .line 366
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 367
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 378
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_19a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 380
    .restart local v24       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_b

    .line 381
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 382
    .local v4, address:[B
    if-eqz v4, :cond_1d0

    .line 383
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 384
    .local v20, str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 385
    .local v7, endIndex:I
    if-lez v7, :cond_1c5

    .line 386
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 389
    :cond_1c5
    :try_start_1c5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_1d0
    .catch Ljava/lang/NullPointerException; {:try_start_1c5 .. :try_end_1d0} :catch_1e1

    .line 397
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_1d0
    :try_start_1d0
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1d7
    .catch Ljava/lang/NullPointerException; {:try_start_1d0 .. :try_end_1d7} :catch_1d9
    .catch Ljava/lang/RuntimeException; {:try_start_1d0 .. :try_end_1d7} :catch_1ed

    goto/16 :goto_b

    .line 398
    :catch_1d9
    move-exception v6

    .line 399
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 390
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_1e1
    move-exception v27

    move-object/from16 v6, v27

    .line 391
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 392
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 400
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :catch_1ed
    move-exception v6

    .line 401
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 402
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 415
    .end local v4           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_20b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 418
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .line 423
    .local v23, token:I
    :try_start_212
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_215
    .catch Ljava/lang/RuntimeException; {:try_start_212 .. :try_end_215} :catch_24f

    move-result-wide v21

    .line 428
    .local v21, timeValue:J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_228

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    .line 435
    :cond_228
    :try_start_228
    move-object v0, v11

    move-wide/from16 v1, v21

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_22f
    .catch Ljava/lang/RuntimeException; {:try_start_228 .. :try_end_22f} :catch_231

    goto/16 :goto_b

    .line 436
    :catch_231
    move-exception v6

    .line 437
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 438
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 424
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v21           #timeValue:J
    :catch_24f
    move-exception v6

    .line 425
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 426
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 448
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v23           #token:I
    :pswitch_26d
    const/4 v8, 0x0

    .line 449
    .local v8, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 452
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 455
    .local v9, fromToken:I
    const/16 v27, 0x80

    move/from16 v0, v27

    move v1, v9

    if-ne v0, v1, :cond_2d0

    .line 457
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 458
    if-eqz v8, :cond_2b1

    .line 459
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 460
    .restart local v4       #address:[B
    if-eqz v4, :cond_2b1

    .line 461
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 462
    .restart local v20       #str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 463
    .restart local v7       #endIndex:I
    if-lez v7, :cond_2a7

    .line 464
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 467
    :cond_2a7
    :try_start_2a7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_2b1
    .catch Ljava/lang/NullPointerException; {:try_start_2a7 .. :try_end_2b1} :catch_2c4

    .line 485
    .end local v4           #address:[B
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_2b1
    :goto_2b1
    const/16 v27, 0x89

    :try_start_2b3
    move-object v0, v11

    move-object v1, v8

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_2ba
    .catch Ljava/lang/NullPointerException; {:try_start_2b3 .. :try_end_2ba} :catch_2bc
    .catch Ljava/lang/RuntimeException; {:try_start_2b3 .. :try_end_2ba} :catch_2ff

    goto/16 :goto_b

    .line 486
    :catch_2bc
    move-exception v6

    .line 487
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 468
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v4       #address:[B
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_2c4
    move-exception v27

    move-object/from16 v6, v27

    .line 469
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 470
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 476
    .end local v4           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_2d0
    :try_start_2d0
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_2de
    .catch Ljava/lang/NullPointerException; {:try_start_2d0 .. :try_end_2de} :catch_2df

    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2b1

    .line 478
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2df
    move-exception v27

    move-object/from16 v6, v27

    .line 479
    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 480
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 488
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2ff
    move-exception v6

    .line 489
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 490
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 497
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #fromToken:I
    :pswitch_31d
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 498
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .line 500
    .local v14, messageClass:I
    const/16 v27, 0x80

    move v0, v14

    move/from16 v1, v27

    if-lt v0, v1, :cond_3bf

    .line 503
    const/16 v27, 0x80

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_354

    .line 504
    :try_start_338
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_348
    .catch Ljava/lang/NullPointerException; {:try_start_338 .. :try_end_348} :catch_34a
    .catch Ljava/lang/RuntimeException; {:try_start_338 .. :try_end_348} :catch_36d

    goto/16 :goto_b

    .line 520
    :catch_34a
    move-exception v27

    move-object/from16 v6, v27

    .line 521
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 507
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_354
    const/16 v27, 0x81

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_38d

    .line 508
    :try_start_35b
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_36b
    .catch Ljava/lang/NullPointerException; {:try_start_35b .. :try_end_36b} :catch_34a
    .catch Ljava/lang/RuntimeException; {:try_start_35b .. :try_end_36b} :catch_36d

    goto/16 :goto_b

    .line 522
    :catch_36d
    move-exception v27

    move-object/from16 v6, v27

    .line 523
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 524
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 511
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_38d
    const/16 v27, 0x82

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_3a6

    .line 512
    :try_start_394
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_b

    .line 515
    :cond_3a6
    const/16 v27, 0x83

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_b

    .line 516
    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3bd
    .catch Ljava/lang/NullPointerException; {:try_start_394 .. :try_end_3bd} :catch_34a
    .catch Ljava/lang/RuntimeException; {:try_start_394 .. :try_end_3bd} :catch_36d

    goto/16 :goto_b

    .line 528
    :cond_3bf
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 529
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 530
    .local v15, messageClassString:[B
    if-eqz v15, :cond_b

    .line 532
    const/16 v27, 0x8a

    :try_start_3d0
    move-object v0, v11

    move-object v1, v15

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3d7
    .catch Ljava/lang/NullPointerException; {:try_start_3d0 .. :try_end_3d7} :catch_3d9
    .catch Ljava/lang/RuntimeException; {:try_start_3d0 .. :try_end_3d7} :catch_3e1

    goto/16 :goto_b

    .line 533
    :catch_3d9
    move-exception v6

    .line 534
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 535
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_3e1
    move-exception v6

    .line 536
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 537
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 545
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v14           #messageClass:I
    .end local v15           #messageClassString:[B
    :pswitch_3ff
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 548
    .local v26, version:I
    const/16 v27, 0x8d

    :try_start_405
    move-object v0, v11

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_40d
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_405 .. :try_end_40d} :catch_40f
    .catch Ljava/lang/RuntimeException; {:try_start_405 .. :try_end_40d} :catch_43b

    goto/16 :goto_b

    .line 549
    :catch_40f
    move-exception v6

    .line 550
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 552
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 553
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_43b
    move-exception v6

    .line 554
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 555
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 564
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #version:I
    :pswitch_459
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 568
    :try_start_45c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_45f
    .catch Ljava/lang/RuntimeException; {:try_start_45c .. :try_end_45f} :catch_479

    .line 575
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 577
    .local v19, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_b

    .line 579
    const/16 v27, 0xa0

    :try_start_467
    move-object v0, v11

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_46f
    .catch Ljava/lang/NullPointerException; {:try_start_467 .. :try_end_46f} :catch_471
    .catch Ljava/lang/RuntimeException; {:try_start_467 .. :try_end_46f} :catch_497

    goto/16 :goto_b

    .line 581
    :catch_471
    move-exception v6

    .line 582
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 569
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_479
    move-exception v6

    .line 570
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 571
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 583
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v19       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_497
    move-exception v6

    .line 584
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 585
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 595
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4b5
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 599
    :try_start_4b8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4bb
    .catch Ljava/lang/RuntimeException; {:try_start_4b8 .. :try_end_4bb} :catch_4eb

    .line 607
    :try_start_4bb
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .line 608
    .local v17, perviouslySentDate:J
    const/16 v27, 0xa1

    move-object v0, v11

    move-wide/from16 v1, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_4c9
    .catch Ljava/lang/RuntimeException; {:try_start_4bb .. :try_end_4c9} :catch_4cb

    goto/16 :goto_b

    .line 610
    .end local v17           #perviouslySentDate:J
    :catch_4cb
    move-exception v27

    move-object/from16 v6, v27

    .line 611
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 612
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 600
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_4eb
    move-exception v6

    .line 601
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 602
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 625
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_509
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 628
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 631
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_b

    .line 644
    :pswitch_514
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 647
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 651
    :try_start_51a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_51d
    .catch Ljava/lang/RuntimeException; {:try_start_51a .. :try_end_51d} :catch_51f

    goto/16 :goto_b

    .line 652
    :catch_51f
    move-exception v6

    .line 653
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 654
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 663
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_53d
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_b

    .line 671
    :pswitch_548
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 673
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 676
    .local v5, contentType:[B
    if-eqz v5, :cond_55f

    .line 678
    const/16 v27, 0x84

    :try_start_558
    move-object v0, v11

    move-object v1, v5

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_55f
    .catch Ljava/lang/NullPointerException; {:try_start_558 .. :try_end_55f} :catch_588
    .catch Ljava/lang/RuntimeException; {:try_start_558 .. :try_end_55f} :catch_58f

    .line 688
    :cond_55f
    :goto_55f
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 691
    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 693
    const/4 v12, 0x0

    .line 694
    goto/16 :goto_b

    .line 679
    :catch_588
    move-exception v6

    .line 680
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_55f

    .line 681
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_58f
    move-exception v6

    .line 682
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 683
    const/16 v27, 0x0

    goto/16 :goto_4

    .end local v5           #contentType:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v10           #headerField:I
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_5ad
    move-object/from16 v27, v11

    .line 706
    goto/16 :goto_4

    .line 204
    nop

    :pswitch_data_5b2
    .packed-switch 0x81
        :pswitch_19a
        :pswitch_19a
        :pswitch_12a
        :pswitch_548
        :pswitch_d0
        :pswitch_7a
        :pswitch_20b
        :pswitch_20b
        :pswitch_26d
        :pswitch_31d
        :pswitch_12a
        :pswitch_20
        :pswitch_3ff
        :pswitch_d0
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_165
        :pswitch_7a
        :pswitch_7a
        :pswitch_165
        :pswitch_19a
        :pswitch_12a
        :pswitch_7a
        :pswitch_165
        :pswitch_7a
        :pswitch_7a
        :pswitch_20b
        :pswitch_12a
        :pswitch_d0
        :pswitch_459
        :pswitch_4b5
        :pswitch_7a
        :pswitch_7a
        :pswitch_509
        :pswitch_7a
        :pswitch_165
        :pswitch_7a
        :pswitch_1a
        :pswitch_7a
        :pswitch_514
        :pswitch_7a
        :pswitch_514
        :pswitch_fd
        :pswitch_1a
        :pswitch_fd
        :pswitch_1a
        :pswitch_7a
        :pswitch_53d
        :pswitch_fd
        :pswitch_7a
        :pswitch_165
        :pswitch_165
        :pswitch_12a
        :pswitch_12a
        :pswitch_12a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_12a
        :pswitch_12a
        :pswitch_7a
    .end packed-switch

    .line 208
    :pswitch_data_634
    .packed-switch 0x89
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method
