.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;,
        Landroid/inputmethodservice/IInputMethodWrapper$Notifier;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_ATTACH_TOKEN:I = 0xa

.field private static final DO_CREATE_SESSION:I = 0x28

.field private static final DO_DUMP:I = 0x1

.field private static final DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final DO_RESTART_INPUT:I = 0x22

.field private static final DO_REVOKE_SESSION:I = 0x32

.field private static final DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final DO_START_INPUT:I = 0x20

.field private static final DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mInputMethod:Landroid/view/inputmethod/InputMethod;

.field final mTarget:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .registers 4
    .parameter "context"
    .parameter "inputMethod"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethod$Stub;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Landroid/inputmethodservice/AbstractInputMethodService;

    .line 84
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 85
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    .line 86
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 180
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 181
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .registers 7
    .parameter "binding"

    .prologue
    .line 184
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    .line 186
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 187
    .local v1, nu:Landroid/view/inputmethod/InputBinding;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 188
    return-void
.end method

.method public createSession(Lcom/android/internal/view/IInputMethodCallback;)V
    .registers 5
    .parameter "callback"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 206
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    .line 158
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Landroid/inputmethodservice/AbstractInputMethodService;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/AbstractInputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    :cond_33
    :goto_33
    return-void

    .line 167
    :cond_34
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 168
    .local v5, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 171
    const-wide/16 v0, 0x5

    :try_start_49
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 172
    const-string v0, "Timeout waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_56} :catch_57

    goto :goto_33

    .line 174
    :catch_57
    move-exception v0

    move-object v6, v0

    .line 175
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "Interrupted waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public executeMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 93
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_102

    .line 154
    const-string v4, "InputMethodWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local p0
    :goto_20
    return-void

    .line 95
    .restart local p0
    :sswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 97
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :try_start_25
    iget-object v6, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Landroid/inputmethodservice/AbstractInputMethodService;

    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/io/FileDescriptor;

    iget-object v4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/PrintWriter;

    iget-object v5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v6, p0, v4, v5}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_38} :catch_47

    .line 102
    :goto_38
    iget-object v4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v4

    .line 103
    :try_start_3b
    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 104
    monitor-exit v4

    goto :goto_20

    :catchall_44
    move-exception v5

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_44

    throw v5

    .line 99
    :catch_47
    move-exception v4

    move-object v1, v4

    .line 100
    .local v1, e:Ljava/lang/RuntimeException;
    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_38

    .line 109
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local p0
    :sswitch_64
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    invoke-interface {v4, p0}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    goto :goto_20

    .line 113
    .restart local p0
    :sswitch_6e
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v4, p0}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    goto :goto_20

    .line 117
    .restart local p0
    :sswitch_78
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    invoke-interface {v4}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    goto :goto_20

    .line 120
    :sswitch_7e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 121
    .restart local v0       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContext;

    .line 122
    .local v3, inputContext:Lcom/android/internal/view/IInputContext;
    if-eqz v3, :cond_98

    new-instance v4, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-direct {v4, v3}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    move-object v2, v4

    .line 124
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    :goto_8e
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v4, v2, p0}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_20

    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :cond_98
    move-object v2, v5

    .line 122
    goto :goto_8e

    .line 128
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v3           #inputContext:Lcom/android/internal/view/IInputContext;
    :sswitch_9a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 129
    .restart local v0       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContext;

    .line 130
    .restart local v3       #inputContext:Lcom/android/internal/view/IInputContext;
    if-eqz v3, :cond_b5

    new-instance v4, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-direct {v4, v3}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    move-object v2, v4

    .line 132
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :goto_aa
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v4, v2, p0}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_20

    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :cond_b5
    move-object v2, v5

    .line 130
    goto :goto_aa

    .line 136
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v3           #inputContext:Lcom/android/internal/view/IInputContext;
    :sswitch_b7
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    new-instance v5, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v6, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v6, v6, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v5, v6, p0}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v4, v5}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    goto/16 :goto_20

    .line 141
    .restart local p0
    :sswitch_cb
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodSession;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_db

    const/4 v5, 0x1

    :goto_d6
    invoke-interface {v4, p0, v5}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    goto/16 :goto_20

    :cond_db
    const/4 v5, 0x0

    goto :goto_d6

    .line 145
    .restart local p0
    :sswitch_dd
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v4, p0}, Landroid/view/inputmethod/InputMethod;->revokeSession(Landroid/view/inputmethod/InputMethodSession;)V

    goto/16 :goto_20

    .line 148
    .restart local p0
    :sswitch_e8
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/ResultReceiver;

    invoke-interface {v4, v5, p0}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_20

    .line 151
    .restart local p0
    :sswitch_f5
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/ResultReceiver;

    invoke-interface {v4, v5, p0}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_20

    .line 93
    :sswitch_data_102
    .sparse-switch
        0x1 -> :sswitch_21
        0xa -> :sswitch_64
        0x14 -> :sswitch_6e
        0x1e -> :sswitch_78
        0x20 -> :sswitch_7e
        0x22 -> :sswitch_9a
        0x28 -> :sswitch_b7
        0x2d -> :sswitch_cb
        0x32 -> :sswitch_dd
        0x3c -> :sswitch_e8
        0x46 -> :sswitch_f5
    .end sparse-switch
.end method

.method public getInternalInputMethod()Landroid/view/inputmethod/InputMethod;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 6
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 235
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .parameter "inputContext"
    .parameter "attribute"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .registers 8
    .parameter "session"

    .prologue
    .line 221
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 223
    .local v2, ls:Landroid/view/inputmethod/InputMethodSession;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_15} :catch_16

    .line 227
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :goto_15
    return-void

    .line 224
    :catch_16
    move-exception v3

    move-object v1, v3

    .line 225
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .registers 10
    .parameter "session"
    .parameter "enabled"

    .prologue
    .line 210
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 212
    .local v2, ls:Landroid/view/inputmethod/InputMethodSession;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x2d

    if-eqz p2, :cond_19

    const/4 v6, 0x1

    :goto_11
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_18} :catch_1b

    .line 217
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :goto_18
    return-void

    .line 212
    .restart local v2       #ls:Landroid/view/inputmethod/InputMethodSession;
    :cond_19
    const/4 v6, 0x0

    goto :goto_11

    .line 214
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :catch_1b
    move-exception v3

    move-object v1, v3

    .line 215
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 6
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .parameter "inputContext"
    .parameter "attribute"

    .prologue
    .line 195
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 197
    return-void
.end method

.method public unbindInput()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 192
    return-void
.end method
