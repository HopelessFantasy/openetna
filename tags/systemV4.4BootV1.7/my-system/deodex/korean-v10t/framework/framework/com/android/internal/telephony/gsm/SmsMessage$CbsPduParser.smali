.class Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CbsPduParser"
.end annotation


# instance fields
.field cur:I

.field mCurrentPage:I

.field mTotalPage:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter "pdu"

    .prologue
    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2123
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    .line 2124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    .line 2125
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .registers 8
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    const/4 v4, 0x0

    .line 2264
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    .line 2266
    .local v0, offset:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 2267
    const-string v1, "[SmsMessage]"

    const-string v2, "CBS constructUserData() This has User Data Header... So can\'t handle it return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2277
    :goto_e
    return v1

    .line 2271
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->userData:[B

    .line 2272
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->userData:[B

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->userData:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2273
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    .line 2274
    if-eqz p2, :cond_2d

    .line 2275
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->userData:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x7

    goto :goto_e

    .line 2277
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->userData:[B

    array-length v1, v1

    goto :goto_e
.end method

.method getCBSDataCodingScheme()I
    .registers 6

    .prologue
    .line 2236
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    aget-byte v0, v2, v3

    .line 2237
    .local v0, dcs_buf:B
    and-int/lit16 v1, v0, 0xff

    .line 2239
    .local v1, mCbsDcs:I
    return v1
.end method

.method getGeoScope()I
    .registers 7

    .prologue
    const-string v5, "getGeoScope() Cell Wide"

    const-string v4, "[SmsMessage]"

    .line 2155
    const/4 v1, 0x0

    .line 2156
    .local v1, mGSnumber:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    const/4 v3, 0x0

    aget-byte v0, v2, v3

    .line 2157
    .local v0, gs_buf:B
    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v1, v2, 0x3

    .line 2158
    const-string v2, "[SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeoScope() GS number is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    if-nez v1, :cond_30

    .line 2160
    const-string v2, "[SmsMessage]"

    const-string v2, "getGeoScope() Cell Wide"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_2f
    :goto_2f
    return v1

    .line 2161
    :cond_30
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 2162
    const-string v2, "[SmsMessage]"

    const-string v2, "getGeoScope() PLMN Wide"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 2163
    :cond_3b
    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    .line 2164
    const-string v2, "[SmsMessage]"

    const-string v2, "getGeoScope() Location Area Wide-GSM"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 2165
    :cond_46
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 2166
    const-string v2, "[SmsMessage]"

    const-string v2, "getGeoScope() Cell Wide"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method getMessageCode()I
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "[SmsMessage]"

    .line 2172
    const/4 v1, 0x0

    .line 2173
    .local v1, mMsgCode:I
    const/4 v0, 0x0

    .line 2174
    .local v0, firstMC:I
    const/4 v3, 0x0

    .line 2175
    .local v3, secondMC:I
    const/4 v4, 0x2

    new-array v2, v4, [B

    .line 2177
    .local v2, mc_buf:[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    aget-byte v4, v4, v5

    aput-byte v4, v2, v5

    .line 2178
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    aget-byte v4, v4, v6

    aput-byte v4, v2, v6

    .line 2180
    aget-byte v4, v2, v5

    and-int/lit8 v0, v4, 0x3f

    .line 2181
    aget-byte v4, v2, v6

    and-int/lit16 v3, v4, 0xf0

    .line 2182
    add-int v1, v0, v3

    .line 2183
    const-string v4, "[SmsMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageCode() first Message Code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const-string v4, "[SmsMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageCode() second Message Code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string v4, "[SmsMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageCode() Message Code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    return v1
.end method

.method getMessageId()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "[SmsMessage]"

    .line 2199
    const/4 v0, 0x0

    .line 2200
    .local v0, CBMessageId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2201
    .local v1, MessageId:I
    const/4 v2, 0x0

    .line 2202
    .local v2, first:I
    const/4 v5, 0x0

    .line 2203
    .local v5, second:I
    const/4 v6, 0x0

    .line 2204
    .local v6, third:I
    const/4 v3, 0x0

    .line 2205
    .local v3, fourth:I
    const/4 v7, 0x2

    new-array v4, v7, [B

    .line 2207
    .local v4, rec_buf:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    aget-byte v7, v7, v8

    aput-byte v7, v4, v11

    .line 2208
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    aget-byte v7, v7, v8

    aput-byte v7, v4, v12

    .line 2210
    aget-byte v7, v4, v11

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 2211
    aget-byte v7, v4, v11

    and-int/lit8 v5, v7, 0xf

    .line 2212
    aget-byte v7, v4, v12

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v6, v7, 0xf

    .line 2213
    aget-byte v7, v4, v12

    and-int/lit8 v3, v7, 0xf

    .line 2214
    mul-int/lit16 v7, v2, 0x1000

    mul-int/lit16 v8, v5, 0x100

    add-int/2addr v7, v8

    mul-int/lit8 v8, v6, 0x10

    add-int/2addr v7, v8

    add-int v1, v7, v3

    .line 2216
    const-string v7, "[SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessageId() first from left : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const-string v7, "[SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessageId() second from left : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const-string v7, "[SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessageId() third from left : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    const-string v7, "[SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessageId() fourth from left : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const-string v7, "[SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessageId() MessageId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2226
    const-string v7, "[SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMessageId] CB channel ID on integer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    const-string v7, "[SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMessageId] CB channel ID on string   : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    return-object v0
.end method

.method getPageParameter()I
    .registers 9

    .prologue
    const-string v7, "[SmsMessage]"

    .line 2248
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    aget-byte v3, v4, v5

    .line 2249
    .local v3, pp_buf:B
    and-int/lit16 v1, v3, 0xff

    .line 2251
    .local v1, mPageParameter:I
    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    and-int/lit16 v0, v4, 0xff

    .line 2252
    .local v0, mCurrentPageNo:I
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->mCurrentPage:I

    .line 2253
    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v2, v4, 0xff

    .line 2254
    .local v2, mTotalPageNo:I
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->mTotalPage:I

    .line 2256
    const-string v4, "[SmsMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getPageParameter] CB Message page parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const-string v4, "[SmsMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getPageParameter] CB Message Current page number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    const-string v4, "[SmsMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getPageParameter] CB Message Total page number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    return v1
.end method

.method getSerialNumber()I
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v9, "[SmsMessage]"

    .line 2128
    const/4 v2, 0x0

    .line 2129
    .local v2, mSerialNumber:I
    const/4 v0, 0x0

    .line 2130
    .local v0, first:I
    const/4 v3, 0x0

    .line 2131
    .local v3, second:I
    const/4 v5, 0x0

    .line 2132
    .local v5, third:I
    const/4 v1, 0x0

    .line 2133
    .local v1, fourth:I
    const/4 v6, 0x2

    new-array v4, v6, [B

    .line 2135
    .local v4, sn_buf:[B
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    aget-byte v6, v6, v7

    aput-byte v6, v4, v10

    .line 2136
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    aget-byte v6, v6, v7

    aput-byte v6, v4, v11

    .line 2138
    aget-byte v6, v4, v10

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v0, v6, 0xf

    .line 2139
    aget-byte v6, v4, v10

    and-int/lit8 v3, v6, 0xf

    .line 2140
    aget-byte v6, v4, v11

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v5, v6, 0xf

    .line 2141
    aget-byte v6, v4, v11

    and-int/lit8 v1, v6, 0xf

    .line 2142
    mul-int/lit16 v6, v0, 0x1000

    mul-int/lit16 v7, v3, 0x100

    add-int/2addr v6, v7

    mul-int/lit8 v7, v5, 0x10

    add-int/2addr v6, v7

    add-int v2, v6, v1

    .line 2144
    const-string v6, "[SmsMessage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSerialNumber() first from left : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const-string v6, "[SmsMessage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSerialNumber() second from left : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    const-string v6, "[SmsMessage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSerialNumber() third from left : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const-string v6, "[SmsMessage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSerialNumber() fourth from left : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const-string v6, "[SmsMessage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSerialNumber() channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    return v2
.end method

.method getUpdateNumber()I
    .registers 6

    .prologue
    .line 2191
    const/4 v0, 0x0

    .line 2192
    .local v0, mUpdateNumber:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    const/4 v3, 0x1

    aget-byte v1, v2, v3

    .line 2193
    .local v1, un_buf:B
    and-int/lit8 v0, v1, 0xf

    .line 2194
    const-string v2, "[SmsMessage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateNumber() UpdateNumber is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    return v0
.end method

.method getUserData()[B
    .registers 2

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->userData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .registers 6
    .parameter "septetCount"

    .prologue
    .line 2295
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 2297
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    .line 2299
    return-object v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 2313
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_11

    .line 2319
    .local v1, ret:Ljava/lang/String;
    :goto_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    .line 2320
    return-object v1

    .line 2314
    .end local v1           #ret:Ljava/lang/String;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 2315
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 2316
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method moreDataPresent()Z
    .registers 3

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->cur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
