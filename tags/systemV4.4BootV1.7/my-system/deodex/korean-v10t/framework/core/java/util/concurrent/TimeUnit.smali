.class public final enum Ljava/util/concurrent/TimeUnit;
.super Ljava/lang/Enum;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/concurrent/TimeUnit;

.field public static final enum MICROSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum MILLISECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum NANOSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum SECONDS:Ljava/util/concurrent/TimeUnit;

.field private static final multipliers:[I

.field private static final overflows:[J


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const-string v1, "NANOSECONDS"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const-string v1, "MICROSECONDS"

    invoke-direct {v0, v1, v3, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const-string v1, "MILLISECONDS"

    invoke-direct {v0, v1, v4, v4}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const-string v1, "SECONDS"

    invoke-direct {v0, v1, v5, v5}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    new-array v0, v6, [Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v5

    sput-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    .line 57
    new-array v0, v6, [I

    fill-array-data v0, :array_4c

    sput-object v0, Ljava/util/concurrent/TimeUnit;->multipliers:[I

    .line 69
    new-array v0, v6, [J

    fill-array-data v0, :array_58

    sput-object v0, Ljava/util/concurrent/TimeUnit;->overflows:[J

    return-void

    .line 57
    :array_4c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x40t 0x42t 0xft 0x0t
        0x0t 0xcat 0x9at 0x3bt
    .end array-data

    .line 69
    :array_58
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf7t 0x53t 0xe3t 0xa5t 0x9bt 0xc4t 0x20t 0x0t
        0xf6t 0x5at 0xd0t 0x7bt 0x63t 0x8t 0x0t 0x0t
        0x4t 0x7dt 0xc1t 0x25t 0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Ljava/util/concurrent/TimeUnit;->index:I

    .line 54
    return-void
.end method

.method private static doConvert(IJ)J
    .registers 5
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 84
    if-nez p0, :cond_4

    move-wide v0, p1

    .line 92
    :goto_3
    return-wide v0

    .line 86
    :cond_4
    if-gez p0, :cond_f

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->multipliers:[I

    neg-int v1, p0

    aget v0, v0, v1

    int-to-long v0, v0

    div-long v0, p1, v0

    goto :goto_3

    .line 88
    :cond_f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->overflows:[J

    aget-wide v0, v0, p0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1d

    .line 89
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_3

    .line 90
    :cond_1d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->overflows:[J

    aget-wide v0, v0, p0

    neg-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_29

    .line 91
    const-wide/high16 v0, -0x8000

    goto :goto_3

    .line 92
    :cond_29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->multipliers:[I

    aget v0, v0, p0

    int-to-long v0, v0

    mul-long/2addr v0, p1

    goto :goto_3
.end method

.method private excessNanos(JJ)I
    .registers 11
    .parameter "time"
    .parameter "ms"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 167
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p0, v0, :cond_d

    .line 168
    mul-long v0, p3, v4

    mul-long/2addr v0, v4

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 171
    :goto_c
    return v0

    .line 169
    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p0, v0, :cond_19

    .line 170
    mul-long v0, p1, v4

    mul-long v2, p3, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_c

    .line 171
    :cond_19
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .registers 2
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public static final values()[Ljava/util/concurrent/TimeUnit;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, [Ljava/util/concurrent/TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 6
    .parameter "duration"
    .parameter "unit"

    .prologue
    .line 112
    iget v0, p3, Ljava/util/concurrent/TimeUnit;->index:I

    iget v1, p0, Ljava/util/concurrent/TimeUnit;->index:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->doConvert(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public sleep(J)V
    .registers 8
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 231
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_11

    .line 232
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 233
    .local v0, ms:J
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 234
    .local v2, ns:I
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 236
    .end local v0           #ms:J
    .end local v2           #ns:I
    :cond_11
    return-void
.end method

.method public timedJoin(Ljava/lang/Thread;J)V
    .registers 9
    .parameter "thread"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_11

    .line 216
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 217
    .local v0, ms:J
    invoke-direct {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 218
    .local v2, ns:I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    .line 220
    .end local v0           #ms:J
    .end local v2           #ns:I
    :cond_11
    return-void
.end method

.method public timedWait(Ljava/lang/Object;J)V
    .registers 9
    .parameter "obj"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 197
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_11

    .line 198
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 199
    .local v0, ms:J
    invoke-direct {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 200
    .local v2, ns:I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 202
    .end local v0           #ms:J
    .end local v2           #ns:I
    :cond_11
    return-void
.end method

.method public toMicros(J)J
    .registers 5
    .parameter "duration"

    .prologue
    .line 136
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->index:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, v1, Ljava/util/concurrent/TimeUnit;->index:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->doConvert(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .registers 5
    .parameter "duration"

    .prologue
    .line 148
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->index:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, v1, Ljava/util/concurrent/TimeUnit;->index:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->doConvert(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toNanos(J)J
    .registers 5
    .parameter "duration"

    .prologue
    .line 124
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->index:I

    invoke-static {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->doConvert(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .registers 5
    .parameter "duration"

    .prologue
    .line 158
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->index:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, v1, Ljava/util/concurrent/TimeUnit;->index:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->doConvert(IJ)J

    move-result-wide v0

    return-wide v0
.end method
