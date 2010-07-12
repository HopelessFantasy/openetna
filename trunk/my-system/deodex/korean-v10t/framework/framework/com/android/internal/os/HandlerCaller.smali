.class public Lcom/android/internal/os/HandlerCaller;
.super Ljava/lang/Object;
.source "HandlerCaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/HandlerCaller$Callback;,
        Lcom/android/internal/os/HandlerCaller$MyHandler;,
        Lcom/android/internal/os/HandlerCaller$SomeArgs;
    }
.end annotation


# static fields
.field static final ARGS_POOL_MAX_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HandlerCaller"


# instance fields
.field mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

.field mArgsPoolSize:I

.field final mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field public final mContext:Landroid/content/Context;

.field final mH:Landroid/os/Handler;

.field final mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V
    .registers 5
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    .line 56
    new-instance v0, Lcom/android/internal/os/HandlerCaller$MyHandler;

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/HandlerCaller$MyHandler;-><init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    .line 57
    iput-object p2, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 58
    return-void
.end method


# virtual methods
.method public executeOrSendMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_11

    .line 88
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/HandlerCaller$Callback;->executeMessage(Landroid/os/Message;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 94
    :goto_10
    return-void

    .line 93
    :cond_11
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10
.end method

.method public obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .registers 5

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    monitor-enter v1

    .line 62
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 63
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    if-eqz v0, :cond_17

    .line 64
    iget-object v2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->next:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    iput-object v2, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 65
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->next:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 66
    iget v2, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    .line 67
    monitor-exit v1

    move-object v1, v0

    .line 70
    :goto_16
    return-object v1

    .line 69
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    .line 70
    new-instance v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v1}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    goto :goto_16

    .line 69
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_b

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0

    :cond_b
    move v1, v2

    goto :goto_6
.end method

.method public obtainMessageBOO(IZLjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 110
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 111
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_13

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1

    :cond_13
    move v2, v3

    goto :goto_e
.end method

.method public obtainMessageI(II)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageII(III)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIIII(IIIII)Landroid/os/Message;
    .registers 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 170
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi1:I

    .line 171
    iput p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi2:I

    .line 172
    iput p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi3:I

    .line 173
    iput p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi4:I

    .line 174
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIIIII(IIIIIII)Landroid/os/Message;
    .registers 11
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 180
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi1:I

    .line 181
    iput p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi2:I

    .line 182
    iput p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi3:I

    .line 183
    iput p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi4:I

    .line 184
    iput p6, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi5:I

    .line 185
    iput p7, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi6:I

    .line 186
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIIIO(IIIIILjava/lang/Object;)Landroid/os/Message;
    .registers 10
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 192
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p6, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 193
    iput p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi1:I

    .line 194
    iput p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi2:I

    .line 195
    iput p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi3:I

    .line 196
    iput p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi4:I

    .line 197
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 137
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 138
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 144
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 145
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 151
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 152
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 153
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 160
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 161
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 162
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    .line 163
    iput-object p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V
    .registers 5
    .parameter "args"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    monitor-enter v0

    .line 75
    :try_start_3
    iget v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_15

    .line 76
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    iput-object v1, p1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->next:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 77
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 78
    iget v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    .line 80
    :cond_15
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method
