.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 1700
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1701
    return-void
.end method

.method constructor <init>([B)V
    .registers 3
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1704
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    .line 1705
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1706
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 1707
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .registers 17
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    .line 1861
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1862
    .local v4, offset:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    aget-byte v10, v10, v4

    and-int/lit16 v8, v10, 0xff

    .line 1863
    .local v8, userDataLength:I
    const/4 v3, 0x0

    .line 1864
    .local v3, headerSeptets:I
    const/4 v7, 0x0

    .line 1867
    .local v7, userDataHeaderLength:I
    move v9, v8

    .line 1871
    .local v9, userdatacount:I
    if-eqz p1, :cond_9c

    .line 1872
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aget-byte v10, v10, v5

    and-int/lit16 v7, v10, 0xff

    .line 1874
    new-array v6, v7, [B

    .line 1875
    .local v6, udh:[B
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    const/4 v11, 0x0

    invoke-static {v10, v4, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1876
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1877
    add-int/2addr v4, v7

    .line 1879
    add-int/lit8 v10, v7, 0x1

    mul-int/lit8 v2, v10, 0x8

    .line 1880
    .local v2, headerBits:I
    div-int/lit8 v3, v2, 0x7

    .line 1881
    rem-int/lit8 v10, v2, 0x7

    if-lez v10, :cond_5a

    const/4 v10, 0x1

    :goto_31
    add-int/2addr v3, v10

    .line 1882
    mul-int/lit8 v10, v3, 0x7

    sub-int/2addr v10, v2

    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 1885
    add-int/lit8 v10, v7, 0x1

    sub-int/2addr v9, v10

    .line 1891
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :goto_3a
    if-eqz p2, :cond_5c

    .line 1897
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v10, v10

    sub-int v0, v10, v4

    .line 1909
    .local v0, bufferLen:I
    :cond_41
    :goto_41
    new-array v10, v0, [B

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    .line 1910
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v13, v13

    invoke-static {v10, v4, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1911
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1913
    if-eqz p2, :cond_6a

    .line 1915
    sub-int v1, v8, v3

    .line 1917
    .local v1, count:I
    if-gez v1, :cond_68

    const/4 v10, 0x0

    .line 1926
    .end local v1           #count:I
    :goto_59
    return v10

    .line 1881
    .end local v0           #bufferLen:I
    .restart local v2       #headerBits:I
    .restart local v6       #udh:[B
    :cond_5a
    const/4 v10, 0x0

    goto :goto_31

    .line 1903
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :cond_5c
    if-eqz p1, :cond_66

    add-int/lit8 v10, v7, 0x1

    :goto_60
    sub-int v0, v8, v10

    .line 1904
    .restart local v0       #bufferLen:I
    if-gez v0, :cond_41

    .line 1905
    const/4 v0, 0x0

    goto :goto_41

    .line 1903
    .end local v0           #bufferLen:I
    :cond_66
    const/4 v10, 0x0

    goto :goto_60

    .restart local v0       #bufferLen:I
    .restart local v1       #count:I
    :cond_68
    move v10, v1

    .line 1917
    goto :goto_59

    .line 1922
    .end local v1           #count:I
    :cond_6a
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v10, v10

    const/16 v11, 0x8c

    if-le v10, v11, :cond_98

    .line 1923
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[RHS0917] constructUserData userData.length= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 1924
    goto :goto_59

    .line 1926
    :cond_98
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v10, v10

    goto :goto_59

    .end local v0           #bufferLen:I
    .end local v4           #offset:I
    .restart local v5       #offset:I
    :cond_9c
    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_3a
.end method

.method countVpoctets(I)I
    .registers 3
    .parameter "count"

    .prologue
    .line 2105
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 2106
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    return v0
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 6

    .prologue
    .line 1757
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 1758
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 1760
    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 1762
    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1764
    return-object v2
.end method

.method getByte()I
    .registers 4

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getReplyAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1816
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 1818
    .local v1, element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    const/16 v7, 0x22

    if-ne v6, v7, :cond_9

    .line 1820
    iget-object v5, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 1821
    .local v5, replydata:[B
    aget-byte v6, v5, v8

    and-int/lit16 v0, v6, 0xff

    .line 1822
    .local v0, addressLength:I
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v3, v6, 0x2

    .line 1823
    .local v3, lengthBytes:I
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-direct {v4, v5, v8, v3}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .local v4, replyaddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    move-object v6, v4

    .line 1827
    .end local v0           #addressLength:I
    .end local v1           #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v3           #lengthBytes:I
    .end local v4           #replyaddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .end local v5           #replydata:[B
    :goto_2d
    return-object v6

    :cond_2e
    const/4 v6, 0x0

    goto :goto_2d
.end method

.method getSCAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1720
    .local v0, len:I
    if-nez v0, :cond_d

    .line 1722
    const/4 v1, 0x0

    .line 1734
    .local v1, ret:Ljava/lang/String;
    :goto_7
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1736
    return-object v1

    .line 1726
    .end local v1           #ret:Ljava/lang/String;
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7

    .line 1728
    .end local v1           #ret:Ljava/lang/String;
    :catch_16
    move-exception v3

    move-object v2, v3

    .line 1729
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1730
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7
.end method

.method getSCTimestampMillis()J
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 1774
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bcdByteToInt(B)I

    move-result v8

    .line 1775
    .local v8, year:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bcdByteToInt(B)I

    move-result v3

    .line 1776
    .local v3, month:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bcdByteToInt(B)I

    move-result v0

    .line 1777
    .local v0, day:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bcdByteToInt(B)I

    move-result v1

    .line 1778
    .local v1, hour:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bcdByteToInt(B)I

    move-result v2

    .line 1779
    .local v2, minute:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bcdByteToInt(B)I

    move-result v4

    .line 1786
    .local v4, second:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .line 1789
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bcdByteToInt(B)I

    move-result v6

    .line 1792
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_92

    .line 1795
    :goto_6a
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1798
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_95

    add-int/lit16 v9, v8, 0x76c

    :goto_77
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 1799
    sub-int v9, v3, v12

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 1800
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1801
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 1802
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 1803
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 1806
    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 1792
    .end local v5           #time:Landroid/text/format/Time;
    :cond_92
    neg-int v9, v6

    move v6, v9

    goto :goto_6a

    .line 1798
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_95
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_77
.end method

.method getUserData()[B
    .registers 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .registers 6
    .parameter "septetCount"

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 2027
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 2029
    return-object v0
.end method

.method getUserDataGSM8Bit(I)Ljava/lang/String;
    .registers 5
    .parameter "byteCount"

    .prologue
    .line 2089
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 2091
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 2093
    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataKS5601(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 2067
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "EUC-KR"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_11

    .line 2073
    .local v1, ret:Ljava/lang/String;
    :goto_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 2074
    return-object v1

    .line 2068
    .end local v1           #ret:Ljava/lang/String;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 2069
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 2070
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method getUserDataSeptetPadding()I
    .registers 2

    .prologue
    .line 1950
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 2043
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_11

    .line 2049
    .local v1, ret:Ljava/lang/String;
    :goto_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 2050
    return-object v1

    .line 2044
    .end local v1           #ret:Ljava/lang/String;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 2045
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 2046
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method getVoiceMessage()Lcom/android/internal/telephony/gsm/SmsVoice;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1833
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 1835
    .local v7, element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v1, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    if-ne v1, v3, :cond_a

    .line 1837
    iget-object v6, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 1838
    .local v6, data:[B
    aget-byte v1, v6, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x80

    if-eq v1, v5, :cond_2a

    aget-byte v1, v6, v2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_a

    .line 1840
    :cond_2a
    aget-byte v1, v6, v3

    and-int/lit16 v4, v1, 0xff

    .line 1841
    .local v4, mtotalvoice:I
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsVoice;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsVoice;-><init>([BIIII)V

    .local v0, voicemessage:Lcom/android/internal/telephony/gsm/SmsVoice;
    move-object v1, v0

    .line 1846
    .end local v0           #voicemessage:Lcom/android/internal/telephony/gsm/SmsVoice;
    .end local v4           #mtotalvoice:I
    .end local v6           #data:[B
    .end local v7           #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :goto_37
    return-object v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_37
.end method

.method moreDataPresent()Z
    .registers 3

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
