.class public Lcom/android/mms/transaction/DefaultRetryScheme;
.super Lcom/android/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DefaultRetryScheme"

.field private static final sDefaultRetryScheme:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xc0t 0x27t 0x9t 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "type"
    .parameter "errorType"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;III)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 7
    .parameter "context"
    .parameter "type"
    .parameter "retriedTimes"
    .parameter "errorType"

    .prologue
    .line 40
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(III)V

    .line 42
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    if-gez v0, :cond_19

    const/4 v0, 0x0

    :goto_8
    iput v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    .line 43
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_16
    iput v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    .line 47
    return-void

    .line 42
    :cond_19
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    goto :goto_8

    .line 43
    :cond_1c
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    goto :goto_16
.end method


# virtual methods
.method public getRetryLimit()I
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    return v0
.end method

.method public getWaitingInterval()J
    .registers 5

    .prologue
    .line 56
    const-string v0, "DefaultRetryScheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v3, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
