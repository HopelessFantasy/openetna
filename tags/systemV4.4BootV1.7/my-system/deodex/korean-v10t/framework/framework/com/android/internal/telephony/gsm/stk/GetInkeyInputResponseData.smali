.class Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 67
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 68
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 80
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 14
    .parameter "buf"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 84
    if-nez p1, :cond_5

    .line 143
    :cond_4
    return-void

    .line 89
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v7, v9, 0x80

    .line 90
    .local v7, tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v9, :cond_47

    .line 95
    new-array v2, v10, [B

    .line 96
    .local v2, data:[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v9, :cond_45

    move v9, v10

    :goto_1b
    aput-byte v9, v2, v11

    .line 124
    :goto_1d
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x7f

    if-le v9, v10, :cond_29

    .line 125
    const/16 v9, 0x81

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    :cond_29
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 132
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_8c

    .line 133
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    :goto_38
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3b
    if-ge v4, v5, :cond_4

    aget-byte v1, v0, v4

    .line 141
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_45
    move v9, v11

    .line 96
    goto :goto_1b

    .line 97
    .end local v2           #data:[B
    :cond_47
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v9, :cond_89

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_89

    .line 99
    :try_start_53
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_60

    .line 100
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v10, "UTF-16"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1d

    .line 101
    .end local v2           #data:[B
    :cond_60
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_7d

    .line 102
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 104
    .local v6, size:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v8

    .line 106
    .local v8, tempData:[B
    new-array v2, v6, [B

    .line 110
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_77
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_53 .. :try_end_77} :catch_78
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_53 .. :try_end_77} :catch_84

    goto :goto_1d

    .line 114
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_78
    move-exception v9

    move-object v3, v9

    .line 115
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v11, [B

    .line 118
    .restart local v2       #data:[B
    goto :goto_1d

    .line 112
    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_7d
    :try_start_7d
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7d .. :try_end_82} :catch_78
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7d .. :try_end_82} :catch_84

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1d

    .line 116
    .end local v2           #data:[B
    :catch_84
    move-exception v9

    move-object v3, v9

    .line 117
    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v11, [B

    .line 118
    .restart local v2       #data:[B
    goto :goto_1d

    .line 120
    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_89
    new-array v2, v11, [B

    .restart local v2       #data:[B
    goto :goto_1d

    .line 134
    :cond_8c
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_94

    .line 135
    invoke-virtual {p1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_38

    .line 137
    :cond_94
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_38
.end method
