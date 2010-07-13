.class public final Lcom/ibm/icu4jni/common/ErrorCode;
.super Ljava/lang/Exception;
.source "ErrorCode.java"


# static fields
.field private static final ERROR_NAMES_:[Ljava/lang/String; = null

.field public static LIBRARY_LOADED:Z = false

.field public static final U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field public static final U_ERROR_INFO_LIMIT:I = -0x7d

.field public static final U_ERROR_INFO_START:I = -0x80

.field public static final U_ERROR_LIMIT:I = 0x15

.field public static final U_FILE_ACCESS_ERROR:I = 0x4

.field public static final U_ILLEGAL_ARGUMENT_ERROR:I = 0x1

.field public static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field public static final U_ILLEGAL_ESCAPE_SEQUENCE:I = 0x12

.field public static final U_INDEX_OUTOFBOUNDS_ERROR:I = 0x8

.field public static final U_INTERNAL_PROGRAM_ERROR:I = 0x5

.field public static final U_INVALID_CHAR_FOUND:I = 0xa

.field public static final U_INVALID_FORMAT_ERROR:I = 0x3

.field public static final U_INVALID_TABLE_FILE:I = 0xe

.field public static final U_INVALID_TABLE_FORMAT:I = 0xd

.field public static final U_MEMORY_ALLOCATION_ERROR:I = 0x7

.field public static final U_MESSAGE_PARSE_ERROR:I = 0x6

.field public static final U_MISSING_RESOURCE_ERROR:I = 0x2

.field public static final U_NO_SPACE_AVAILABLE:I = 0x14

.field public static final U_PARSE_ERROR:I = 0x9

.field public static final U_RESOURCE_TYPE_MISMATCH:I = 0x11

.field public static final U_SAFECLONE_ALLOCATED_ERROR:I = -0x7e

.field public static final U_TRUNCATED_CHAR_FOUND:I = 0xb

.field public static final U_UNSUPPORTED_ERROR:I = 0x10

.field public static final U_UNSUPPORTED_ESCAPE_SEQUENCE:I = 0x13

.field public static final U_USING_DEFAULT_ERROR:I = -0x7f

.field public static final U_USING_FALLBACK_ERROR:I = -0x80

.field public static final U_ZERO_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 155
    sput-boolean v2, Lcom/ibm/icu4jni/common/ErrorCode;->LIBRARY_LOADED:Z

    .line 163
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "U_ZERO_ERROR"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "U_ILLEGAL_ARGUMENT_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "U_MISSING_RESOURCE_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "U_INVALID_FORMAT_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "U_FILE_ACCESS_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "U_INTERNAL_PROGRAM_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "U_MESSAGE_PARSE_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "U_MEMORY_ALLOCATION_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "U_INDEX_OUTOFBOUNDS_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "U_PARSE_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "U_INVALID_CHAR_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "U_TRUNCATED_CHAR_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "U_ILLEGAL_CHAR_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "U_INVALID_TABLE_FORMAT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "U_INVALID_TABLE_FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "U_BUFFER_OVERFLOW_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "U_UNSUPPORTED_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "U_RESOURCE_TYPE_MISMATCH"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "U_ILLEGAL_ESCAPE_SEQUENCE"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "U_UNSUPPORTED_ESCAPE_SEQUENCE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu4jni/common/ErrorCode;->ERROR_NAMES_:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public static getErrorName(I)Ljava/lang/String;
    .registers 2
    .parameter "ec"

    .prologue
    .line 182
    sget-object v0, Lcom/ibm/icu4jni/common/ErrorCode;->ERROR_NAMES_:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static final getException(I)Ljava/lang/RuntimeException;
    .registers 4
    .parameter "error"

    .prologue
    .line 31
    if-gtz p0, :cond_8

    const/16 v1, 0x15

    if-lt p0, v1, :cond_8

    .line 32
    const/4 v1, 0x0

    .line 45
    :goto_7
    return-object v1

    .line 34
    :cond_8
    sget-object v1, Lcom/ibm/icu4jni/common/ErrorCode;->ERROR_NAMES_:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 35
    .local v0, errorname:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_2e

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 37
    :sswitch_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 39
    :sswitch_1c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 41
    :sswitch_22
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 43
    :sswitch_28
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 35
    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_16
        0x8 -> :sswitch_1c
        0xf -> :sswitch_22
        0x10 -> :sswitch_28
    .end sparse-switch
.end method

.method public static isFailure(I)Z
    .registers 2
    .parameter "ec"

    .prologue
    .line 202
    if-lez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isSuccess(I)Z
    .registers 2
    .parameter "ec"

    .prologue
    .line 192
    if-gtz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
