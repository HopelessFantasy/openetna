.class Lcom/android/internal/telephony/RILRequest;
.super Ljava/lang/Object;
.source "RIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RILJ"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/android/internal/telephony/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/android/internal/telephony/RILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 87
    sput v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 91
    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;
    .registers 6
    .parameter "request"
    .parameter "result"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RILRequest.obtain() request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_2a
    sget-object v2, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    if-eqz v2, :cond_3d

    .line 115
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 116
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    sput-object v2, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 117
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 118
    sget v2, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 120
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_6b

    .line 122
    if-nez v0, :cond_45

    .line 123
    new-instance v0, Lcom/android/internal/telephony/RILRequest;

    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {v0}, Lcom/android/internal/telephony/RILRequest;-><init>()V

    .line 126
    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_45
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_48
    sget v2, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    iput v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 128
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_6e

    .line 129
    iput p0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 130
    iput-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 133
    if-eqz p1, :cond_71

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_71

    .line 134
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v2

    .line 128
    :catchall_6e
    move-exception v2

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v2

    .line 138
    :cond_71
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-object v0
.end method

.method static resetSerial()V
    .registers 2

    .prologue
    .line 164
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:I

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .registers 7
    .parameter "error"
    .parameter "ret"

    .prologue
    .line 192
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 194
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_42

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 203
    :cond_42
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_4e

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 207
    :cond_4e
    return-void
.end method

.method release()V
    .registers 4

    .prologue
    .line 150
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_14

    .line 152
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 153
    sput-object p0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 154
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    .line 156
    :cond_14
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v2, sb:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, sn:Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, s:I
    :goto_17
    const/4 v4, 0x4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_23

    .line 180
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 183
    :cond_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
