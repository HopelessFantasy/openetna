.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = true

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = true

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

.field private static mContext:Landroid/content/Context;

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

    .line 52
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 95
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 100
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 104
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mContext:Landroid/content/Context;

    return-void

    .line 52
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 85
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 90
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 122
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 123
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 5
    .parameter "headers"

    .prologue
    .line 1914
    if-nez p0, :cond_4

    .line 1915
    const/4 p0, 0x0

    .line 2121
    .end local p0
    :goto_3
    return p0

    .line 1919
    .restart local p0
    :cond_4
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 1922
    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1923
    .local v1, mmsVersion:I
    if-nez v1, :cond_14

    .line 1925
    const/4 p0, 0x0

    goto :goto_3

    .line 1929
    :cond_14
    packed-switch v0, :pswitch_data_15c

    .line 2118
    const/4 p0, 0x0

    goto :goto_3

    .line 1932
    :pswitch_19
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1933
    .local v0, srContentType:[B
    if-nez v0, :cond_23

    .line 1934
    const/4 p0, 0x0

    goto :goto_3

    .line 1938
    :cond_23
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .line 1939
    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_2d

    .line 1940
    const/4 p0, 0x0

    goto :goto_3

    .line 1944
    :cond_2d
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .line 1945
    .local p0, srTransactionId:[B
    if-nez p0, :cond_158

    .line 1946
    const/4 p0, 0x0

    goto :goto_3

    .line 1952
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_37
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1953
    .local v0, scResponseStatus:I
    if-nez v0, :cond_41

    .line 1954
    const/4 p0, 0x0

    goto :goto_3

    .line 1958
    :cond_41
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .line 1959
    .local p0, scTransactionId:[B
    if-nez p0, :cond_158

    .line 1960
    const/4 p0, 0x0

    goto :goto_3

    .line 1966
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4b
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1967
    .local v0, niContentLocation:[B
    if-nez v0, :cond_55

    .line 1968
    const/4 p0, 0x0

    goto :goto_3

    .line 1972
    :cond_55
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .line 1973
    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_63

    .line 1974
    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_3

    .line 1978
    :cond_63
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1979
    .local v0, niMessageClass:[B
    if-nez v0, :cond_6d

    .line 1980
    const/4 p0, 0x0

    goto :goto_3

    .line 1984
    :cond_6d
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .line 1985
    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_7b

    .line 1986
    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_3

    .line 1990
    :cond_7b
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1991
    .local p0, niTransactionId:[B
    if-nez p0, :cond_158

    .line 1992
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1998
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_86
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1999
    .local v0, nriStatus:I
    if-nez v0, :cond_91

    .line 2000
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2004
    :cond_91
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .line 2005
    .local p0, nriTransactionId:[B
    if-nez p0, :cond_158

    .line 2006
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2012
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_9c
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 2013
    .local v0, rcContentType:[B
    if-nez v0, :cond_a7

    .line 2014
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2018
    :cond_a7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .line 2019
    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_158

    .line 2020
    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2026
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_b6
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 2027
    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_c5

    .line 2028
    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2032
    :cond_c5
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 2033
    .local v0, diMessageId:[B
    if-nez v0, :cond_d0

    .line 2034
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2038
    :cond_d0
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .line 2039
    .local v0, diStatus:I
    if-nez v0, :cond_db

    .line 2040
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2044
    :cond_db
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .line 2045
    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 2046
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2052
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_e6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .line 2053
    .local p0, aiTransactionId:[B
    if-nez p0, :cond_158

    .line 2054
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2060
    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_f1
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 2061
    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_100

    .line 2062
    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2066
    :cond_100
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 2067
    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_10b

    .line 2068
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2072
    :cond_10b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 2073
    .local v0, roMessageId:[B
    if-nez v0, :cond_116

    .line 2074
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2078
    :cond_116
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .line 2079
    .local v0, roReadStatus:I
    if-nez v0, :cond_121

    .line 2080
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2084
    :cond_121
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .line 2085
    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 2086
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2092
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_12c
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .line 2093
    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_137

    .line 2094
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2098
    :cond_137
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 2099
    .local v0, rrMessageId:[B
    if-nez v0, :cond_142

    .line 2100
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2104
    :cond_142
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .line 2105
    .local v0, rrReadStatus:I
    if-nez v0, :cond_14d

    .line 2106
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2110
    :cond_14d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .line 2111
    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 2112
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2121
    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_158
    const/4 p0, 0x1

    goto/16 :goto_3

    .line 1929
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

    .line 1878
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    if-nez p0, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1879
    :cond_e
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_18

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_18

    move v2, v3

    .line 1904
    :goto_17
    return v2

    .line 1885
    :cond_18
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2c

    .line 1886
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1887
    .local v0, contentId:[B
    if-eqz v0, :cond_2c

    .line 1888
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2c

    move v2, v4

    .line 1889
    goto :goto_17

    .line 1895
    .end local v0           #contentId:[B
    :cond_2c
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_40

    .line 1896
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1897
    .local v1, contentType:[B
    if-eqz v1, :cond_40

    .line 1898
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_40

    move v2, v4

    .line 1899
    goto :goto_17

    .end local v1           #contentType:[B
    :cond_40
    move v2, v3

    .line 1904
    goto :goto_17
.end method

.method protected static createObjectSession(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 11
    .parameter "filename"
    .parameter "contentType"
    .parameter "dataBuf"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const-string v3, "createObjectSession() : Fail"

    const-string v5, "PduParser"

    .line 801
    const-string v3, "PduParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createObjectSession() : START  <<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v1, 0x0

    .line 807
    .local v1, outfilename:Ljava/lang/String;
    if-nez p2, :cond_2a

    .line 809
    :try_start_21
    const-string v3, "PduParser"

    const-string v4, "createObjectSession() : Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 862
    :goto_29
    return-object v3

    .line 813
    :cond_2a
    const/4 v3, 0x6

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Landroid/lge/lgdrm/DrmObjectSession;

    move-result-object v2

    .line 814
    .local v2, session:Landroid/lge/lgdrm/DrmObjectSession;
    if-nez v2, :cond_3c

    .line 816
    const-string v3, "PduParser"

    const-string v4, "createObjectSession() : Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 817
    goto :goto_29

    .line 820
    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p0, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_50

    .line 823
    const-string v3, "PduParser"

    const-string v4, "processInit() : Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move-object v3, v6

    .line 825
    goto :goto_29

    .line 828
    :cond_50
    array-length v3, p2

    invoke-virtual {v2, p2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v3

    if-eqz v3, :cond_64

    .line 830
    const-string v3, "PduParser"

    const-string v4, "processUpdate() : Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move-object v3, v6

    .line 832
    goto :goto_29

    .line 835
    :cond_64
    invoke-virtual {v2}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v3

    if-ne v7, v3, :cond_77

    .line 837
    const-string v3, "PduParser"

    const-string v4, "processStatus() : Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move-object v3, v6

    .line 839
    goto :goto_29

    .line 842
    :cond_77
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v3

    if-ne v7, v3, :cond_8c

    .line 844
    const-string v3, "PduParser"

    const-string v4, "processEnd() : Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move-object v3, v6

    .line 846
    goto :goto_29

    .line 849
    :cond_8c
    invoke-virtual {v2}, Landroid/lge/lgdrm/DrmObjectSession;->getStoredFilename()Ljava/lang/String;

    move-result-object v1

    .line 850
    if-eqz v1, :cond_aa

    .line 852
    const-string v3, "PduParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStoredFilename() : file name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_aa} :catch_ad

    :cond_aa
    move-object v3, v1

    .line 855
    goto/16 :goto_29

    .line 857
    .end local v2           #session:Landroid/lge/lgdrm/DrmObjectSession;
    :catch_ad
    move-exception v3

    move-object v0, v3

    .line 859
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v3, v6

    .line 862
    goto/16 :goto_29
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1321
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1322
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1323
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1324
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

    .line 1287
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1288
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1289
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1290
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1291
    :cond_22
    if-eq v3, v1, :cond_4c

    if-eqz v1, :cond_4c

    .line 1293
    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 1294
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1295
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1303
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1304
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1298
    :cond_42
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1299
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    .line 1307
    :cond_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 1308
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1311
    :goto_56
    return-object v2

    :cond_57
    const/4 v2, 0x0

    goto :goto_56
.end method

.method public static isDrmObject(Ljava/lang/String;[B)Z
    .registers 12
    .parameter "contentType"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "PduParser"

    .line 761
    const-string v5, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDrmObject()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v1, "application/vnd.oma.drm.dcf"

    .line 763
    .local v1, DRM_MIMETYPE_DCF_STRING:Ljava/lang/String;
    const-string v2, "application/vnd.oma.drm.message"

    .line 764
    .local v2, DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String;
    const-string v0, "application/vnd.oma.drm.content"

    .line 766
    .local v0, DRM_MIMETYPE_CONTENT_STRING:Ljava/lang/String;
    if-nez p0, :cond_60

    .line 767
    const-string v5, "PduParser"

    const-string v5, "contentType == null"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/16 v5, 0x200

    new-array v3, v5, [B

    .line 769
    .local v3, buf:[B
    const/4 v4, 0x0

    .line 771
    .local v4, retVal:I
    array-length v5, p1

    invoke-static {v3, v8, p1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    invoke-static {v3}, Landroid/lge/lgdrm/DrmManager;->getObjectDrmType([B)I

    move-result v4

    .line 774
    if-eq v4, v9, :cond_46

    const/4 v5, 0x2

    if-eq v4, v5, :cond_46

    const/4 v5, 0x3

    if-eq v4, v5, :cond_46

    const/4 v5, 0x4

    if-eq v4, v5, :cond_46

    const/4 v5, 0x7

    if-ne v4, v5, :cond_60

    .line 779
    :cond_46
    const-string v5, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM File retVal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 792
    .end local v3           #buf:[B
    .end local v4           #retVal:I
    :goto_5f
    return v5

    .line 784
    :cond_60
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_72

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_72

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 787
    :cond_72
    const-string v5, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM File contentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 788
    goto :goto_5f

    .line 791
    :cond_8c
    const-string v5, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not DRM File contentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 792
    goto :goto_5f
.end method

.method protected static isText(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 1271
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

    .line 1282
    :goto_12
    return v0

    .line 1275
    :cond_13
    packed-switch p0, :pswitch_data_1a

    .line 1282
    :pswitch_16
    const/4 v0, 0x0

    goto :goto_12

    :pswitch_18
    move v0, v1

    .line 1279
    goto :goto_12

    .line 1275
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

    .line 1227
    const/16 v0, 0x21

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_b

    :cond_9
    move v0, v1

    .line 1252
    :goto_a
    return v0

    .line 1231
    :cond_b
    sparse-switch p0, :sswitch_data_12

    .line 1252
    const/4 v0, 0x1

    goto :goto_a

    :sswitch_10
    move v0, v1

    .line 1249
    goto :goto_a

    .line 1231
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
    .registers 2
    .parameter "text"

    .prologue
    .line 1048
    const-string v0, "PduParser"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
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
    .line 1655
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1657
    .restart local p0
    :cond_c
    const/4 v0, 0x0

    .line 1658
    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1659
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1660
    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    const/4 v1, -0x1

    if-ne v1, v2, :cond_22

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1661
    .restart local p0
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1663
    and-int/lit16 v1, v2, 0xff

    .line 1665
    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_ba

    .line 1666
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1667
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1668
    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1669
    .end local v1           #cur:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1670
    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_48

    const/4 v1, -0x1

    if-ne v1, v4, :cond_48

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1671
    .restart local p0
    :cond_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1672
    and-int/lit16 v1, v4, 0xff

    .line 1674
    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_82

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_82

    .line 1675
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .line 1690
    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_5a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1691
    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .line 1692
    .local v1, parameterLen:I
    if-lez v1, :cond_6b

    .line 1693
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1696
    :cond_6b
    if-gez v1, :cond_b6

    .line 1697
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
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

    .line 1707
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_81
    return-object v0

    .line 1676
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

    .line 1677
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1679
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_98

    .line 1680
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1682
    .local v0, index:I
    :cond_98
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1683
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1686
    .restart local v1       #first:I
    :cond_a1
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
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

    .line 1707
    goto :goto_81

    .line 1700
    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_ba
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_c5

    .line 1701
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

    .line 1703
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
    .registers 10
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
    .line 1454
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1455
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

    .line 1457
    .restart local p0
    :cond_1c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1458
    .local v4, startPos:I
    const/4 v1, 0x0

    .line 1459
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v5, v1

    .line 1460
    .end local v1           #tempPos:I
    .local v5, tempPos:I
    :goto_26
    if-lez v0, :cond_1d1

    .line 1461
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1462
    .local v3, param:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_39

    const/4 v1, -0x1

    if-ne v1, v3, :cond_39

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1463
    .restart local p0
    :cond_39
    add-int/lit8 v2, v0, -0x1

    .line 1465
    .end local v0           #lastLen:I
    .local v2, lastLen:I
    sparse-switch v3, :sswitch_data_1e2

    .line 1595
    if-ltz v3, :cond_1dd

    const/16 v0, 0x7f

    if-gt v3, v0, :cond_1dd

    .line 1597
    :try_start_44
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1598
    .local v1, baosTag:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1599
    .local v0, baosContent:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1600
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v3           #param:I
    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1601
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1602
    .local v1, temp:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v6, "application-id"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_199

    .line 1603
    const-string v1, "PduParser"

    .end local v1           #temp:[B
    const-string v3, "parse parseContentTypeParams find application-id !!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1606
    const/16 v1, 0xb7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .end local v0           #baosContent:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    :cond_86
    :goto_86
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_89} :catch_1c4

    move-result v1

    .line 1614
    .end local v5           #tempPos:I
    .local v1, tempPos:I
    :try_start_8a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_1db

    move-result v0

    sub-int v2, v4, v1

    sub-int/2addr v0, v2

    .line 1624
    .end local v2           #lastLen:I
    .local v0, lastLen:I
    :goto_91
    const-string v2, "PduParser"

    const-string v3, "Not supported Content-Type parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const/4 v2, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v3

    if-ne v2, v3, :cond_1ce

    .line 1627
    const-string v2, "PduParser"

    const-string v3, "Corrupt Content-Type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a6
    move v5, v1

    .line 1633
    .end local v1           #tempPos:I
    .restart local v5       #tempPos:I
    goto/16 :goto_26

    .line 1481
    .end local v0           #lastLen:I
    .restart local v2       #lastLen:I
    .restart local v3       #param:I
    :sswitch_a9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1482
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1483
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1484
    const/16 v1, 0x7f

    if-le v0, v1, :cond_de

    .line 1486
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1488
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_d2

    .line 1489
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1490
    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .end local v0           #type:[B
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1503
    .end local v5           #tempPos:I
    .restart local v1       #tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v2, v4, v1

    sub-int/2addr v0, v2

    .line 1504
    .end local v2           #lastLen:I
    .local v0, lastLen:I
    goto :goto_a6

    .line 1496
    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v2       #lastLen:I
    .restart local v5       #tempPos:I
    :cond_de
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .line 1497
    .local v0, type:[B
    if-eqz v0, :cond_d2

    if-eqz p1, :cond_d2

    .line 1498
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d2

    .line 1521
    .end local v0           #type:[B
    :sswitch_f1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1522
    .local v0, start:[B
    if-eqz v0, :cond_103

    if-eqz p1, :cond_103

    .line 1523
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    :cond_103
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1527
    .end local v5           #tempPos:I
    .restart local v1       #tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v2, v4, v1

    sub-int/2addr v0, v2

    .line 1528
    .end local v2           #lastLen:I
    .local v0, lastLen:I
    goto :goto_a6

    .line 1545
    .end local v0           #lastLen:I
    .end local v1           #tempPos:I
    .restart local v2       #lastLen:I
    .restart local v5       #tempPos:I
    :sswitch_10f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1546
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1547
    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1549
    const/16 v1, 0x20

    if-le v0, v1, :cond_122

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_124

    :cond_122
    if-nez v0, :cond_165

    .line 1552
    :cond_124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .line 1554
    .local v1, charsetStr:[B
    :try_start_129
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .line 1556
    .local v0, charsetInt:I
    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #lastLen:I
    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_129 .. :try_end_13f} :catch_14c

    .line 1570
    .end local v1           #charsetStr:[B
    :cond_13f
    :goto_13f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1571
    .end local v5           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v2, v4, v1

    sub-int/2addr v0, v2

    .line 1572
    .local v0, lastLen:I
    goto/16 :goto_a6

    .line 1557
    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    .restart local v5       #tempPos:I
    :catch_14c
    move-exception v0

    .line 1559
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13f

    .line 1564
    .local v0, firstValue:I
    .restart local v2       #lastLen:I
    :cond_165
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .line 1565
    .local v0, charset:I
    if-eqz p1, :cond_13f

    .line 1566
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13f

    .line 1584
    :sswitch_17a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1585
    .local v0, name:[B
    if-eqz v0, :cond_18c

    if-eqz p1, :cond_18c

    .line 1586
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    :cond_18c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1590
    .end local v5           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v2, v4, v1

    sub-int/2addr v0, v2

    .line 1591
    .end local v2           #lastLen:I
    .local v0, lastLen:I
    goto/16 :goto_a6

    .line 1608
    .end local v3           #param:I
    .local v0, baosContent:Ljava/io/ByteArrayOutputStream;
    .local v1, temp:[B
    .restart local v2       #lastLen:I
    .restart local v5       #tempPos:I
    :cond_199
    :try_start_199
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "reply-to-application-id"

    .end local v1           #temp:[B
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1609
    const-string v1, "PduParser"

    const-string v3, "parse parseContentTypeParams find reply-to-application-id !!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1611
    const/16 v1, 0xb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .end local v0           #baosContent:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_1c2} :catch_1c4

    goto/16 :goto_86

    .line 1616
    :catch_1c4
    move-exception v0

    move v1, v5

    .line 1618
    .end local v5           #tempPos:I
    .local v0, e:Ljava/io/IOException;
    .local v1, tempPos:I
    :goto_1c6
    const-string v0, "PduParser--parseContentTypeParams--IOException!"

    .end local v0           #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move v0, v2

    .end local v2           #lastLen:I
    .local v0, lastLen:I
    goto/16 :goto_91

    .line 1629
    :cond_1ce
    const/4 v0, 0x0

    goto/16 :goto_a6

    .line 1635
    .end local v1           #tempPos:I
    .restart local v5       #tempPos:I
    :cond_1d1
    if-eqz v0, :cond_1da

    .line 1636
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_1da
    return-void

    .line 1616
    .end local v0           #lastLen:I
    .end local v5           #tempPos:I
    .restart local v1       #tempPos:I
    .restart local v2       #lastLen:I
    .restart local p0
    .restart local p1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_1db
    move-exception v0

    goto :goto_1c6

    .end local v1           #tempPos:I
    .restart local v3       #param:I
    .restart local v5       #tempPos:I
    :cond_1dd
    move v0, v2

    .end local v2           #lastLen:I
    .restart local v0       #lastLen:I
    move v1, v5

    .end local v5           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_91

    .line 1465
    nop

    :sswitch_data_1e2
    .sparse-switch
        0x81 -> :sswitch_10f
        0x83 -> :sswitch_a9
        0x85 -> :sswitch_17a
        0x89 -> :sswitch_a9
        0x8a -> :sswitch_f1
        0x97 -> :sswitch_17a
        0x99 -> :sswitch_f1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 9
    .parameter "pduDataStream"

    .prologue
    .line 1126
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_c

    if-nez p0, :cond_c

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1127
    :cond_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1128
    const/4 v3, 0x0

    .line 1129
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1130
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1131
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_23

    const/4 v7, -0x1

    if-ne v7, v5, :cond_23

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1132
    :cond_23
    and-int/lit16 v2, v5, 0xff

    .line 1134
    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1135
    const/16 v7, 0x20

    if-ge v2, v7, :cond_33

    .line 1136
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1138
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1141
    :cond_33
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1144
    .local v6, textString:[B
    if-eqz v0, :cond_42

    .line 1145
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

    .line 1153
    :goto_41
    return-object v7

    .line 1147
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

    .line 1149
    :catch_49
    move-exception v7

    move-object v1, v7

    .line 1150
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_41
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 1396
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1397
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1398
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1399
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1400
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1401
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 1402
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1404
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

    .line 1364
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-nez p0, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1365
    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1366
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-ne v7, v4, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1367
    :cond_1f
    and-int/lit16 v0, v4, 0xff

    .line 1369
    .local v0, count:I
    if-le v0, v8, :cond_2b

    .line 1370
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1373
    :cond_2b
    const-wide/16 v2, 0x0

    .line 1375
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 1376
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1377
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-ne v7, v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1378
    :cond_40
    shl-long/2addr v2, v8

    .line 1379
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1375
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1382
    :cond_48
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 10
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1720
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1721
    .restart local p0
    :cond_c
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1722
    .restart local p0
    :cond_18
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_24

    if-gtz p2, :cond_24

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1740
    .restart local p0
    :cond_24
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1741
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1742
    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v3, v1

    .end local v1           #tempPos:I
    .local v3, tempPos:I
    move v1, v0

    .line 1743
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    :goto_2c
    if-lez v1, :cond_168

    .line 1744
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1745
    .local v0, header:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_3f

    const/4 v4, -0x1

    if-ne v4, v0, :cond_3f

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1746
    .restart local p0
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    .line 1748
    const/16 v4, 0x7f

    if-le v0, v4, :cond_10c

    .line 1750
    sparse-switch v0, :sswitch_data_180

    .line 1827
    const-string v4, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported Part headers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #header:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v4

    if-ne v0, v4, :cond_108

    .line 1830
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .line 1867
    .end local v1           #lastLen:I
    .local p0, lastLen:I
    :goto_71
    return p1

    .line 1756
    .restart local v0       #header:I
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1757
    .local v0, contentLocation:[B
    if-eqz v0, :cond_7c

    .line 1758
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1761
    :cond_7c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1762
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :goto_84
    move v3, v1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    move v1, v0

    .line 1860
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_2c

    .line 1769
    .local v0, header:I
    :sswitch_87
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1770
    .local v0, contentId:[B
    if-eqz v0, :cond_91

    .line 1771
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1774
    :cond_91
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1775
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1776
    .local v0, lastLen:I
    goto :goto_84

    .line 1787
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :sswitch_9a
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1788
    .local v0, len:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1789
    .end local v1           #lastLen:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1790
    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .line 1791
    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1793
    .local v3, value:I
    const/16 v1, 0x80

    if-ne v3, v1, :cond_e8

    .line 1794
    .end local v1           #thisEndPos:I
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1806
    :goto_b4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1807
    .restart local v1       #thisEndPos:I
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_17b

    .line 1808
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1809
    .end local v3           #value:I
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_cc

    .line 1810
    .end local v1           #thisEndPos:I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1814
    :cond_cc
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1815
    .local v3, thisEndPos:I
    sub-int v1, v4, v3

    if-ge v1, v0, :cond_dd

    .line 1816
    sub-int v1, v4, v3

    sub-int/2addr v0, v1

    .line 1817
    .local v0, last:I
    new-array v1, v0, [B

    .line 1818
    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v1           #temp:[B
    .end local v4           #thisStartPos:I
    :cond_dd
    move v1, v5

    .end local v5           #value:I
    .local v1, value:I
    move v0, v3

    .line 1822
    .end local v3           #thisEndPos:I
    .local v0, thisEndPos:I
    :goto_df
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1823
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1824
    .local v0, lastLen:I
    goto :goto_84

    .line 1795
    .end local v1           #tempPos:I
    .local v0, len:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    :cond_e8
    const/16 v1, 0x81

    if-ne v3, v1, :cond_f2

    .line 1796
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_b4

    .line 1797
    :cond_f2
    const/16 v1, 0x82

    if-ne v3, v1, :cond_fc

    .line 1798
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_b4

    .line 1800
    :cond_fc
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1802
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_b4

    .line 1833
    .end local v0           #len:I
    .end local v4           #thisStartPos:I
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_108
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_84

    .line 1836
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_10c
    const/16 v4, 0x20

    if-lt v0, v4, :cond_139

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_139

    .line 1838
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1839
    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #lastLen:I
    move-result-object v1

    .line 1842
    .local v1, tempValue:[B
    const/4 v3, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v3           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v3, v0, :cond_12f

    .line 1844
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1847
    :cond_12f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1848
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1849
    .local v0, lastLen:I
    goto/16 :goto_84

    .line 1851
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_139
    const-string v4, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported Part headers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #header:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v4

    if-ne v0, v4, :cond_164

    .line 1855
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_71

    .line 1858
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_164
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_84

    .line 1862
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_168
    if-eqz v1, :cond_176

    .line 1863
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_71

    .line 1867
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_176
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_71

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_17b
    move v0, v1

    .end local v1           #thisEndPos:I
    .local v0, thisEndPos:I
    move v1, v3

    .end local v3           #value:I
    .local v1, value:I
    goto/16 :goto_df

    .line 1750
    nop

    :sswitch_data_180
    .sparse-switch
        0x8e -> :sswitch_72
        0xae -> :sswitch_9a
        0xc0 -> :sswitch_87
        0xc5 -> :sswitch_9a
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .registers 15
    .parameter "pduDataStream"

    .prologue
    .line 873
    if-nez p0, :cond_4

    .line 874
    const/4 p0, 0x0

    .line 1038
    .end local p0
    :goto_3
    return-object p0

    .line 877
    .restart local p0
    :cond_4
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 878
    .local v3, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 880
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .local v6, i:I
    :goto_f
    if-ge v6, v3, :cond_183

    .line 881
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 882
    .local v5, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 883
    .local v4, dataLength:I
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 884
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 885
    .local v9, startPos:I
    if-gtz v9, :cond_26

    .line 887
    const/4 p0, 0x0

    goto :goto_3

    .line 891
    :cond_26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 892
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v2

    .line 893
    .local v2, contentType:[B
    if-eqz v2, :cond_6e

    .line 894
    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 900
    :goto_34
    const/16 v7, 0x97

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    .line 901
    .local v7, name:[B
    if-eqz v7, :cond_47

    .line 902
    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 906
    :cond_47
    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v7           #name:[B
    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    check-cast v1, Ljava/lang/Integer;

    .line 907
    .local v1, charset:Ljava/lang/Integer;
    if-eqz v1, :cond_5c

    .line 908
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #charset:Ljava/lang/Integer;
    invoke-virtual {v8, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 912
    :cond_5c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 913
    .local v1, endPos:I
    sub-int v1, v9, v1

    sub-int v1, v5, v1

    .line 914
    .local v1, partHeaderLen:I
    if-lez v1, :cond_7b

    .line 915
    invoke-static {p0, v8, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v1

    .end local v1           #partHeaderLen:I
    if-nez v1, :cond_7f

    .line 917
    const/4 p0, 0x0

    goto :goto_3

    .line 896
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_6e
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v7, v7, v10

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_34

    .line 919
    .local v1, partHeaderLen:I
    :cond_7b
    if-gez v1, :cond_7f

    .line 921
    const/4 p0, 0x0

    goto :goto_3

    .line 927
    .end local v1           #partHeaderLen:I
    :cond_7f
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_a6

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    if-nez v1, :cond_a6

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    if-nez v1, :cond_a6

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-nez v1, :cond_a6

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .end local v9           #startPos:I
    invoke-static {v9, v10}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 936
    :cond_a6
    if-lez v4, :cond_156

    .line 937
    new-array v5, v4, [B

    .line 938
    .local v5, partData:[B
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 940
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v4

    .line 941
    .local v4, partDataEncoding:[B
    if-eqz v4, :cond_1a9

    .line 942
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 943
    .local v1, encoding:Ljava/lang/String;
    const-string v4, "base64"

    .end local v4           #partDataEncoding:[B
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 945
    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 953
    .end local v5           #partData:[B
    .local v1, partData:[B
    :goto_c5
    if-nez v1, :cond_dc

    .line 954
    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 955
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 946
    .local v1, encoding:Ljava/lang/String;
    .restart local v5       #partData:[B
    .restart local p0
    :cond_cf
    const-string v4, "quoted-printable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #encoding:Ljava/lang/String;
    if-eqz v1, :cond_1a9

    .line 948
    invoke-static {v5}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v1

    .end local v5           #partData:[B
    .local v1, partData:[B
    goto :goto_c5

    .line 962
    :cond_dc
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4, v1}, Lcom/google/android/mms/pdu/PduParser;->isDrmObject(Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 964
    const/4 v4, 0x0

    .line 965
    .local v4, partDatafromFile:[B
    const/4 v5, 0x0

    .line 966
    .local v5, requestFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 967
    .local v5, requestFileName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 968
    .local v7, processedFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 970
    .local v5, prcessedFileName:Ljava/lang/String;
    const-string v5, "PduParser"

    .end local v5           #prcessedFileName:Ljava/lang/String;
    const-string v9, "isDrmObject!! <<<<<<"

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/google/android/mms/pdu/PduParser;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/drm_temp.tmp"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 973
    .local v5, requestFileName:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    .local v10, requestFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .end local v5           #requestFileName:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5, v9, v1}, Lcom/google/android/mms/pdu/PduParser;->createObjectSession(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 979
    .local v5, prcessedFileName:Ljava/lang/String;
    if-eqz v5, :cond_1a6

    .line 983
    const/4 v2, 0x0

    .line 984
    .local v2, fin:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 986
    .local v1, bufLength:I
    :try_start_122
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/io/FileNotFoundException; {:try_start_122 .. :try_end_127} :catch_165
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_127} :catch_170

    .line 987
    .end local v7           #processedFile:Ljava/io/File;
    .local v9, processedFile:Ljava/io/File;
    :try_start_127
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v1, v11

    .line 989
    new-array v5, v1, [B
    :try_end_12e
    .catch Ljava/io/FileNotFoundException; {:try_start_127 .. :try_end_12e} :catch_196
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12e} :catch_186

    .line 991
    .end local v4           #partDatafromFile:[B
    .local v5, partDatafromFile:[B
    :try_start_12e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_133
    .catch Ljava/io/FileNotFoundException; {:try_start_12e .. :try_end_133} :catch_19d
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_133} :catch_18d

    .line 992
    .end local v2           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_133
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 993
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_139
    .catch Ljava/io/FileNotFoundException; {:try_start_133 .. :try_end_139} :catch_1a3
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_139} :catch_193

    move-object v2, v9

    .end local v9           #processedFile:Ljava/io/File;
    .local v2, processedFile:Ljava/io/File;
    move-object v1, v5

    .line 1006
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #partDatafromFile:[B
    .local v1, partDatafromFile:[B
    :goto_13b
    if-eqz v1, :cond_140

    .line 1007
    invoke-virtual {v8, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1010
    :cond_140
    if-eqz v10, :cond_14b

    .line 1011
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    .end local v1           #partDatafromFile:[B
    if-eqz v1, :cond_14b

    .line 1012
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1016
    :cond_14b
    if-eqz v2, :cond_156

    .line 1017
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_156

    .line 1018
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1029
    .end local v2           #processedFile:Ljava/io/File;
    .end local v10           #requestFile:Ljava/io/File;
    :cond_156
    :goto_156
    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v1

    if-nez v1, :cond_17f

    .line 1031
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 880
    :goto_160
    add-int/lit8 v1, v6, 0x1

    .end local v6           #i:I
    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .restart local v6       #i:I
    goto/16 :goto_f

    .line 995
    .local v1, bufLength:I
    .local v2, fin:Ljava/io/FileInputStream;
    .local v4, partDatafromFile:[B
    .local v5, prcessedFileName:Ljava/lang/String;
    .restart local v7       #processedFile:Ljava/io/File;
    .restart local v10       #requestFile:Ljava/io/File;
    :catch_165
    move-exception v5

    move-object v13, v5

    move-object v5, v4

    .end local v4           #partDatafromFile:[B
    .local v5, partDatafromFile:[B
    move-object v4, v2

    .end local v2           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    move-object v2, v13

    .line 997
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_16a
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v2, v7

    .end local v7           #processedFile:Ljava/io/File;
    .local v2, processedFile:Ljava/io/File;
    move-object v1, v5

    .line 1002
    .end local v5           #partDatafromFile:[B
    .local v1, partDatafromFile:[B
    goto :goto_13b

    .line 999
    .local v1, bufLength:I
    .local v2, fin:Ljava/io/FileInputStream;
    .local v4, partDatafromFile:[B
    .local v5, prcessedFileName:Ljava/lang/String;
    .restart local v7       #processedFile:Ljava/io/File;
    :catch_170
    move-exception v5

    move-object v13, v5

    move-object v5, v4

    .end local v4           #partDatafromFile:[B
    .local v5, partDatafromFile:[B
    move-object v4, v2

    .end local v2           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    move-object v2, v13

    .line 1001
    .local v2, e:Ljava/io/IOException;
    :goto_175
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v7

    .end local v7           #processedFile:Ljava/io/File;
    .local v2, processedFile:Ljava/io/File;
    move-object v1, v5

    .end local v5           #partDatafromFile:[B
    .local v1, partDatafromFile:[B
    goto :goto_13b

    .line 1024
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v10           #requestFile:Ljava/io/File;
    .local v1, partData:[B
    .local v2, contentType:[B
    :cond_17b
    invoke-virtual {v8, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_156

    .line 1034
    .end local v1           #partData:[B
    .end local v2           #contentType:[B
    :cond_17f
    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_160

    .end local v8           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_183
    move-object p0, v0

    .line 1038
    goto/16 :goto_3

    .line 999
    .local v1, bufLength:I
    .local v2, fin:Ljava/io/FileInputStream;
    .local v4, partDatafromFile:[B
    .local v5, prcessedFileName:Ljava/lang/String;
    .restart local v8       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v9       #processedFile:Ljava/io/File;
    .restart local v10       #requestFile:Ljava/io/File;
    :catch_186
    move-exception v5

    move-object v7, v9

    .end local v9           #processedFile:Ljava/io/File;
    .restart local v7       #processedFile:Ljava/io/File;
    move-object v13, v2

    .end local v2           #fin:Ljava/io/FileInputStream;
    .local v13, fin:Ljava/io/FileInputStream;
    move-object v2, v5

    move-object v5, v4

    .end local v4           #partDatafromFile:[B
    .local v5, partDatafromFile:[B
    move-object v4, v13

    .end local v13           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    goto :goto_175

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v7           #processedFile:Ljava/io/File;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    .restart local v9       #processedFile:Ljava/io/File;
    :catch_18d
    move-exception v4

    move-object v7, v9

    .end local v9           #processedFile:Ljava/io/File;
    .restart local v7       #processedFile:Ljava/io/File;
    move-object v13, v2

    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v13       #fin:Ljava/io/FileInputStream;
    move-object v2, v4

    move-object v4, v13

    .end local v13           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_175

    .end local v7           #processedFile:Ljava/io/File;
    .restart local v9       #processedFile:Ljava/io/File;
    :catch_193
    move-exception v2

    move-object v7, v9

    .end local v9           #processedFile:Ljava/io/File;
    .restart local v7       #processedFile:Ljava/io/File;
    goto :goto_175

    .line 995
    .end local v7           #processedFile:Ljava/io/File;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    .local v4, partDatafromFile:[B
    .local v5, prcessedFileName:Ljava/lang/String;
    .restart local v9       #processedFile:Ljava/io/File;
    :catch_196
    move-exception v5

    move-object v7, v9

    .end local v9           #processedFile:Ljava/io/File;
    .restart local v7       #processedFile:Ljava/io/File;
    move-object v13, v2

    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v13       #fin:Ljava/io/FileInputStream;
    move-object v2, v5

    move-object v5, v4

    .end local v4           #partDatafromFile:[B
    .local v5, partDatafromFile:[B
    move-object v4, v13

    .end local v13           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    goto :goto_16a

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v7           #processedFile:Ljava/io/File;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    .restart local v9       #processedFile:Ljava/io/File;
    :catch_19d
    move-exception v4

    move-object v7, v9

    .end local v9           #processedFile:Ljava/io/File;
    .restart local v7       #processedFile:Ljava/io/File;
    move-object v13, v2

    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v13       #fin:Ljava/io/FileInputStream;
    move-object v2, v4

    move-object v4, v13

    .end local v13           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_16a

    .end local v7           #processedFile:Ljava/io/File;
    .restart local v9       #processedFile:Ljava/io/File;
    :catch_1a3
    move-exception v2

    move-object v7, v9

    .end local v9           #processedFile:Ljava/io/File;
    .restart local v7       #processedFile:Ljava/io/File;
    goto :goto_16a

    .local v1, partData:[B
    .local v2, contentType:[B
    .local v4, partDatafromFile:[B
    .local v5, prcessedFileName:Ljava/lang/String;
    :cond_1a6
    move-object v2, v7

    .end local v7           #processedFile:Ljava/io/File;
    .local v2, processedFile:Ljava/io/File;
    move-object v1, v4

    .end local v4           #partDatafromFile:[B
    .local v1, partDatafromFile:[B
    goto :goto_13b

    .end local v1           #partDatafromFile:[B
    .end local v10           #requestFile:Ljava/io/File;
    .local v2, contentType:[B
    .local v5, partData:[B
    :cond_1a9
    move-object v1, v5

    .end local v5           #partData:[B
    .local v1, partData:[B
    goto/16 :goto_c5
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1341
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1342
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1343
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1344
    :cond_1d
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 1064
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1065
    :cond_d
    const/4 v0, 0x0

    .line 1066
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1067
    .local v1, temp:I
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 1083
    :goto_15
    return v2

    .line 1071
    :cond_16
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    .line 1072
    shl-int/lit8 v0, v0, 0x7

    .line 1073
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1074
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1075
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 1076
    goto :goto_15

    .line 1080
    :cond_27
    shl-int/lit8 v0, v0, 0x7

    .line 1081
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1083
    goto :goto_15
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    .line 1101
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1102
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1103
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1104
    :cond_1d
    and-int/lit16 v0, v1, 0xff

    .line 1106
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_25

    move v2, v0

    .line 1109
    :goto_24
    return v2

    .line 1108
    :cond_25
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2e

    .line 1109
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_24

    .line 1112
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

    .line 1165
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1183
    :cond_d
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1186
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1187
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1188
    :cond_21
    if-ne v2, p1, :cond_2f

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2f

    .line 1191
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1206
    :goto_2a
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1192
    :cond_2f
    if-nez p1, :cond_39

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_39

    .line 1195
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2a

    .line 1198
    :cond_39
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_2a
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1416
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1417
    :cond_c
    new-array v0, p1, [B

    .line 1418
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1419
    .local v1, readLen:I
    if-ge v1, p1, :cond_17

    .line 1420
    const/4 v2, -0x1

    .line 1422
    :goto_16
    return v2

    :cond_17
    move v2, v1

    goto :goto_16
.end method


# virtual methods
.method public parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;
    .registers 16
    .parameter "context"

    .prologue
    .line 133
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_6

    .line 134
    const/4 v12, 0x0

    .line 216
    :goto_5
    return-object v12

    .line 138
    :cond_6
    sput-object p1, Lcom/google/android/mms/pdu/PduParser;->mContext:Landroid/content/Context;

    .line 142
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 143
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v12, :cond_16

    .line 145
    const/4 v12, 0x0

    goto :goto_5

    .line 149
    :cond_16
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 152
    .local v4, messageType:I
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v12

    if-nez v12, :cond_2d

    .line 153
    const-string v12, "check mandatory headers failed!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 154
    const/4 v12, 0x0

    goto :goto_5

    .line 157
    :cond_2d
    const/16 v12, 0x80

    if-eq v12, v4, :cond_35

    const/16 v12, 0x84

    if-ne v12, v4, :cond_43

    .line 160
    :cond_35
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 161
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v12, :cond_43

    .line 163
    const/4 v12, 0x0

    goto :goto_5

    .line 167
    :cond_43
    packed-switch v4, :pswitch_data_c8

    .line 215
    const-string v12, "Parser doesn\'t support this message type in this version!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 216
    const/4 v12, 0x0

    goto :goto_5

    .line 169
    :pswitch_4d
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11, v12, v13}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v11

    .line 170
    goto :goto_5

    .line 172
    .end local v11           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_58
    new-instance v10, Lcom/google/android/mms/pdu/SendConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v12}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v10

    .line 173
    goto :goto_5

    .line 175
    .end local v10           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_61
    new-instance v5, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v12}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v5

    .line 177
    goto :goto_5

    .line 179
    .end local v5           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_6a
    new-instance v6, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v12}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v6

    .line 181
    goto :goto_5

    .line 183
    .end local v6           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_73
    new-instance v9, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9, v12, v13}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 186
    .local v9, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 187
    .local v1, contentType:[B
    if-nez v1, :cond_84

    .line 188
    const/4 v12, 0x0

    goto :goto_5

    .line 190
    :cond_84
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 191
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9c

    :cond_99
    move-object v12, v9

    .line 195
    goto/16 :goto_5

    .line 197
    :cond_9c
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 199
    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local v9           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_9f
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v12}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v3

    .line 201
    goto/16 :goto_5

    .line 203
    .end local v3           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_a9
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v0

    .line 205
    goto/16 :goto_5

    .line 207
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_b3
    new-instance v7, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v12}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v7

    .line 209
    goto/16 :goto_5

    .line 211
    .end local v7           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_bd
    new-instance v8, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v12}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v8

    .line 213
    goto/16 :goto_5

    .line 167
    nop

    :pswitch_data_c8
    .packed-switch 0x80
        :pswitch_4d
        :pswitch_58
        :pswitch_61
        :pswitch_6a
        :pswitch_73
        :pswitch_a9
        :pswitch_9f
        :pswitch_bd
        :pswitch_b3
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 35
    .parameter "pduDataStream"

    .prologue
    .line 227
    if-nez p1, :cond_5

    .line 228
    const/16 v29, 0x0

    .line 752
    .end local p0
    :goto_4
    return-object v29

    .line 231
    .restart local p0
    :cond_5
    const/4 v13, 0x1

    .line 232
    .local v13, keepParsing:Z
    new-instance v12, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 234
    .end local p0
    .local v12, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_b
    :goto_b
    if-eqz v13, :cond_637

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v29

    if-lez v29, :cond_637

    .line 235
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 236
    .local v11, headerField:I
    packed-switch v11, :pswitch_data_63c

    .line 747
    :pswitch_1a
    const-string v29, "Unknown header"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 239
    :pswitch_20
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 240
    .local v17, messageType:I
    packed-switch v17, :pswitch_data_6be

    .line 260
    :try_start_27
    move-object v0, v12

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_2e
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2e} :catch_5d

    goto :goto_b

    .line 261
    :catch_2f
    move-exception v7

    .line 262
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Set invalid Octet value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " into the header filed: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 264
    const/16 v29, 0x0

    goto :goto_4

    .line 257
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_5a
    const/16 v29, 0x0

    goto :goto_4

    .line 265
    :catch_5d
    move-exception v7

    .line 266
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Octet header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 267
    const/16 v29, 0x0

    goto :goto_4

    .line 300
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v17           #messageType:I
    :pswitch_7a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 303
    .local v26, value:I
    :try_start_7e
    move-object v0, v12

    move/from16 v1, v26

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_85
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7e .. :try_end_85} :catch_86
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_85} :catch_b2

    goto :goto_b

    .line 304
    :catch_86
    move-exception v7

    .line 305
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Set invalid Octet value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " into the header filed: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 307
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 308
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_b2
    move-exception v7

    .line 309
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Octet header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 310
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 321
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:I
    :pswitch_d0
    :try_start_d0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 322
    .local v26, value:J
    move-object v0, v12

    move-wide/from16 v1, v26

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_db
    .catch Ljava/lang/RuntimeException; {:try_start_d0 .. :try_end_db} :catch_dd

    goto/16 :goto_b

    .line 323
    .end local v26           #value:J
    :catch_dd
    move-exception v29

    move-object/from16 v7, v29

    .line 324
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 325
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 336
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_fd
    :try_start_fd
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 337
    .restart local v26       #value:J
    move-object v0, v12

    move-wide/from16 v1, v26

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_108
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_108} :catch_10a

    goto/16 :goto_b

    .line 338
    .end local v26           #value:J
    :catch_10a
    move-exception v29

    move-object/from16 v7, v29

    .line 339
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 340
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 366
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_12a
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v26

    .line 367
    .local v26, value:[B
    if-eqz v26, :cond_b

    .line 369
    :try_start_136
    move-object v0, v12

    move-object/from16 v1, v26

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_13d
    .catch Ljava/lang/NullPointerException; {:try_start_136 .. :try_end_13d} :catch_13f
    .catch Ljava/lang/RuntimeException; {:try_start_136 .. :try_end_13d} :catch_147

    goto/16 :goto_b

    .line 370
    :catch_13f
    move-exception v7

    .line 371
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 372
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_147
    move-exception v7

    .line 373
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 374
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 390
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:[B
    :pswitch_165
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 392
    .local v26, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_b

    .line 394
    :try_start_16b
    move-object v0, v12

    move-object/from16 v1, v26

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_172
    .catch Ljava/lang/NullPointerException; {:try_start_16b .. :try_end_172} :catch_174
    .catch Ljava/lang/RuntimeException; {:try_start_16b .. :try_end_172} :catch_17c

    goto/16 :goto_b

    .line 395
    :catch_174
    move-exception v7

    .line 396
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 397
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_17c
    move-exception v7

    .line 398
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 399
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 410
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_19a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 412
    .restart local v26       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_b

    .line 413
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 414
    .local v4, address:[B
    if-eqz v4, :cond_1d0

    .line 415
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 416
    .local v22, str:Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 417
    .local v8, endIndex:I
    if-lez v8, :cond_1c5

    .line 418
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 421
    :cond_1c5
    :try_start_1c5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_1d0
    .catch Ljava/lang/NullPointerException; {:try_start_1c5 .. :try_end_1d0} :catch_1e1

    .line 429
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_1d0
    :try_start_1d0
    move-object v0, v12

    move-object/from16 v1, v26

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1d7
    .catch Ljava/lang/NullPointerException; {:try_start_1d0 .. :try_end_1d7} :catch_1d9
    .catch Ljava/lang/RuntimeException; {:try_start_1d0 .. :try_end_1d7} :catch_1ed

    goto/16 :goto_b

    .line 430
    :catch_1d9
    move-exception v7

    .line 431
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 422
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v8       #endIndex:I
    .restart local v22       #str:Ljava/lang/String;
    :catch_1e1
    move-exception v29

    move-object/from16 v7, v29

    .line 423
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 424
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 432
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :catch_1ed
    move-exception v7

    .line 433
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 434
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 447
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_20b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 450
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 455
    .local v25, token:I
    :try_start_212
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_215
    .catch Ljava/lang/RuntimeException; {:try_start_212 .. :try_end_215} :catch_24f

    move-result-wide v23

    .line 460
    .local v23, timeValue:J
    const/16 v29, 0x81

    move/from16 v0, v29

    move/from16 v1, v25

    if-ne v0, v1, :cond_228

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    add-long v23, v23, v29

    .line 467
    :cond_228
    :try_start_228
    move-object v0, v12

    move-wide/from16 v1, v23

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_22f
    .catch Ljava/lang/RuntimeException; {:try_start_228 .. :try_end_22f} :catch_231

    goto/16 :goto_b

    .line 468
    :catch_231
    move-exception v7

    .line 469
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 470
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 456
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v23           #timeValue:J
    :catch_24f
    move-exception v7

    .line 457
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 458
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 480
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #token:I
    :pswitch_26d
    const/4 v9, 0x0

    .line 481
    .local v9, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 484
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 487
    .local v10, fromToken:I
    const/16 v29, 0x80

    move/from16 v0, v29

    move v1, v10

    if-ne v0, v1, :cond_2d0

    .line 489
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 490
    if-eqz v9, :cond_2b1

    .line 491
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 492
    .restart local v4       #address:[B
    if-eqz v4, :cond_2b1

    .line 493
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 494
    .restart local v22       #str:Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 495
    .restart local v8       #endIndex:I
    if-lez v8, :cond_2a7

    .line 496
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 499
    :cond_2a7
    :try_start_2a7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object v0, v9

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_2b1
    .catch Ljava/lang/NullPointerException; {:try_start_2a7 .. :try_end_2b1} :catch_2c4

    .line 517
    .end local v4           #address:[B
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_2b1
    :goto_2b1
    const/16 v29, 0x89

    :try_start_2b3
    move-object v0, v12

    move-object v1, v9

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_2ba
    .catch Ljava/lang/NullPointerException; {:try_start_2b3 .. :try_end_2ba} :catch_2bc
    .catch Ljava/lang/RuntimeException; {:try_start_2b3 .. :try_end_2ba} :catch_2ff

    goto/16 :goto_b

    .line 518
    :catch_2bc
    move-exception v7

    .line 519
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 500
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v4       #address:[B
    .restart local v8       #endIndex:I
    .restart local v22       #str:Ljava/lang/String;
    :catch_2c4
    move-exception v29

    move-object/from16 v7, v29

    .line 501
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 502
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 508
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_2d0
    :try_start_2d0
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v29, "insert-address-token"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object v0, v9

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_2de
    .catch Ljava/lang/NullPointerException; {:try_start_2d0 .. :try_end_2de} :catch_2df

    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2b1

    .line 510
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2df
    move-exception v29

    move-object/from16 v7, v29

    .line 511
    .restart local v7       #e:Ljava/lang/NullPointerException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 512
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 520
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2ff
    move-exception v7

    .line 521
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 522
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 529
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #fromToken:I
    :pswitch_31d
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 530
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 532
    .local v15, messageClass:I
    const/16 v29, 0x80

    move v0, v15

    move/from16 v1, v29

    if-lt v0, v1, :cond_3bf

    .line 535
    const/16 v29, 0x80

    move/from16 v0, v29

    move v1, v15

    if-ne v0, v1, :cond_354

    .line 536
    :try_start_338
    const-string v29, "personal"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object v0, v12

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_348
    .catch Ljava/lang/NullPointerException; {:try_start_338 .. :try_end_348} :catch_34a
    .catch Ljava/lang/RuntimeException; {:try_start_338 .. :try_end_348} :catch_36d

    goto/16 :goto_b

    .line 552
    :catch_34a
    move-exception v29

    move-object/from16 v7, v29

    .line 553
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 539
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_354
    const/16 v29, 0x81

    move/from16 v0, v29

    move v1, v15

    if-ne v0, v1, :cond_38d

    .line 540
    :try_start_35b
    const-string v29, "advertisement"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object v0, v12

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_36b
    .catch Ljava/lang/NullPointerException; {:try_start_35b .. :try_end_36b} :catch_34a
    .catch Ljava/lang/RuntimeException; {:try_start_35b .. :try_end_36b} :catch_36d

    goto/16 :goto_b

    .line 554
    :catch_36d
    move-exception v29

    move-object/from16 v7, v29

    .line 555
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 556
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 543
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_38d
    const/16 v29, 0x82

    move/from16 v0, v29

    move v1, v15

    if-ne v0, v1, :cond_3a6

    .line 544
    :try_start_394
    const-string v29, "informational"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object v0, v12

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_b

    .line 547
    :cond_3a6
    const/16 v29, 0x83

    move/from16 v0, v29

    move v1, v15

    if-ne v0, v1, :cond_b

    .line 548
    const-string v29, "auto"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object v0, v12

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3bd
    .catch Ljava/lang/NullPointerException; {:try_start_394 .. :try_end_3bd} :catch_34a
    .catch Ljava/lang/RuntimeException; {:try_start_394 .. :try_end_3bd} :catch_36d

    goto/16 :goto_b

    .line 560
    :cond_3bf
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 561
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 562
    .local v16, messageClassString:[B
    if-eqz v16, :cond_b

    .line 564
    const/16 v29, 0x8a

    :try_start_3d0
    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3d8
    .catch Ljava/lang/NullPointerException; {:try_start_3d0 .. :try_end_3d8} :catch_3da
    .catch Ljava/lang/RuntimeException; {:try_start_3d0 .. :try_end_3d8} :catch_3e2

    goto/16 :goto_b

    .line 565
    :catch_3da
    move-exception v7

    .line 566
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 567
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3e2
    move-exception v7

    .line 568
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 569
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 577
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v15           #messageClass:I
    .end local v16           #messageClassString:[B
    :pswitch_400
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v28

    .line 580
    .local v28, version:I
    const/16 v29, 0x8d

    :try_start_406
    move-object v0, v12

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_40e
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_406 .. :try_end_40e} :catch_410
    .catch Ljava/lang/RuntimeException; {:try_start_406 .. :try_end_40e} :catch_43c

    goto/16 :goto_b

    .line 581
    :catch_410
    move-exception v7

    .line 582
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Set invalid Octet value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " into the header filed: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 584
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 585
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_43c
    move-exception v7

    .line 586
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Octet header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 587
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 596
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v28           #version:I
    :pswitch_45a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 600
    :try_start_45d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_460
    .catch Ljava/lang/RuntimeException; {:try_start_45d .. :try_end_460} :catch_47a

    .line 607
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 609
    .local v20, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_b

    .line 611
    const/16 v29, 0xa0

    :try_start_468
    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_470
    .catch Ljava/lang/NullPointerException; {:try_start_468 .. :try_end_470} :catch_472
    .catch Ljava/lang/RuntimeException; {:try_start_468 .. :try_end_470} :catch_498

    goto/16 :goto_b

    .line 613
    :catch_472
    move-exception v7

    .line 614
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 601
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_47a
    move-exception v7

    .line 602
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is not Integer-Value"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 603
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 615
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v20       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_498
    move-exception v7

    .line 616
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 617
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 627
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4b6
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 631
    :try_start_4b9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4bc
    .catch Ljava/lang/RuntimeException; {:try_start_4b9 .. :try_end_4bc} :catch_4ec

    .line 639
    :try_start_4bc
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 640
    .local v18, perviouslySentDate:J
    const/16 v29, 0xa1

    move-object v0, v12

    move-wide/from16 v1, v18

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_4ca
    .catch Ljava/lang/RuntimeException; {:try_start_4bc .. :try_end_4ca} :catch_4cc

    goto/16 :goto_b

    .line 642
    .end local v18           #perviouslySentDate:J
    :catch_4cc
    move-exception v29

    move-object/from16 v7, v29

    .line 643
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 644
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 632
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_4ec
    move-exception v7

    .line 633
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is not Integer-Value"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 634
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 657
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_50a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 660
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 663
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_b

    .line 676
    :pswitch_515
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 679
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 683
    :try_start_51b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_51e
    .catch Ljava/lang/RuntimeException; {:try_start_51b .. :try_end_51e} :catch_520

    goto/16 :goto_b

    .line 684
    :catch_520
    move-exception v7

    .line 685
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is not Integer-Value"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 686
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 695
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_53e
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_b

    .line 703
    :pswitch_549
    const-string v29, "PduParser"

    const-string v30, "-----------PduParser CONTENT_TYPE-----------"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 706
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 709
    .local v6, contentType:[B
    if-eqz v6, :cond_567

    .line 711
    const/16 v29, 0x84

    :try_start_560
    move-object v0, v12

    move-object v1, v6

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_567
    .catch Ljava/lang/NullPointerException; {:try_start_560 .. :try_end_567} :catch_611
    .catch Ljava/lang/RuntimeException; {:try_start_560 .. :try_end_567} :catch_619

    .line 721
    :cond_567
    :goto_567
    const/16 v29, 0x99

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 724
    const/16 v29, 0x83

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 728
    const/16 v29, 0xb7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v5, v0

    .line 729
    .local v5, appId:[B
    if-eqz v5, :cond_5cc

    .line 730
    const-string v29, "PduParser"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "appId = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/16 v29, 0xb7

    move-object v0, v12

    move-object v1, v5

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 733
    :cond_5cc
    const/16 v29, 0xb8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object/from16 v21, v0

    .line 734
    .local v21, rAppId:[B
    if-eqz v21, :cond_60e

    .line 735
    const-string v29, "PduParser"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "rAppId = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/16 v29, 0xb8

    move-object v0, v12

    move-object/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 739
    :cond_60e
    const/4 v13, 0x0

    .line 740
    goto/16 :goto_b

    .line 712
    .end local v5           #appId:[B
    .end local v21           #rAppId:[B
    :catch_611
    move-exception v7

    .line 713
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_567

    .line 714
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_619
    move-exception v7

    .line 715
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 716
    const/16 v29, 0x0

    goto/16 :goto_4

    .end local v6           #contentType:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v11           #headerField:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_637
    move-object/from16 v29, v12

    .line 752
    goto/16 :goto_4

    .line 236
    nop

    :pswitch_data_63c
    .packed-switch 0x81
        :pswitch_19a
        :pswitch_19a
        :pswitch_12a
        :pswitch_549
        :pswitch_d0
        :pswitch_7a
        :pswitch_20b
        :pswitch_20b
        :pswitch_26d
        :pswitch_31d
        :pswitch_12a
        :pswitch_20
        :pswitch_400
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
        :pswitch_45a
        :pswitch_4b6
        :pswitch_7a
        :pswitch_7a
        :pswitch_50a
        :pswitch_7a
        :pswitch_165
        :pswitch_7a
        :pswitch_1a
        :pswitch_7a
        :pswitch_515
        :pswitch_7a
        :pswitch_515
        :pswitch_fd
        :pswitch_1a
        :pswitch_fd
        :pswitch_1a
        :pswitch_7a
        :pswitch_53e
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

    .line 240
    :pswitch_data_6be
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
