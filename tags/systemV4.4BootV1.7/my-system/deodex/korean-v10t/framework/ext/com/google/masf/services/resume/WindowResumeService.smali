.class public Lcom/google/masf/services/resume/WindowResumeService;
.super Lcom/google/masf/services/resume/ResumeService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/masf/services/resume/WindowResumeService$1;,
        Lcom/google/masf/services/resume/WindowResumeService$MainTask;,
        Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;,
        Lcom/google/masf/services/resume/WindowResumeService$Listener;,
        Lcom/google/masf/services/resume/WindowResumeService$Control;,
        Lcom/google/masf/services/resume/WindowResumeService$Chunk;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x4000

.field private static final MINIMUM_BANDWIDTH_TIME:I = 0x64

.field private static final MIN_CHUNK_SIZE:I = 0x1000

.field private static final RESPONSE_IGNORE_COUNT:I = 0x2

.field private static final RESPONSE_QUIET_COUNT:I = 0x4


# instance fields
.field private activeQueue:Ljava/util/Vector;

.field private chunkSize:I

.field private header:Lcom/google/masf/protocol/HeaderRequest;

.field private mainTask:Lcom/google/common/task/Task;

.field private mutex:Ljava/lang/Object;

.field private mux:Lcom/google/masf/MobileServiceMux;

.field private runner:Lcom/google/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/google/masf/MobileServiceMux;Lcom/google/common/task/TaskRunner;Lcom/google/masf/protocol/HeaderRequest;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/masf/services/resume/ResumeService;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->chunkSize:I

    iput-object p1, p0, Lcom/google/masf/services/resume/WindowResumeService;->mux:Lcom/google/masf/MobileServiceMux;

    iput-object p2, p0, Lcom/google/masf/services/resume/WindowResumeService;->runner:Lcom/google/common/task/TaskRunner;

    iput-object p3, p0, Lcom/google/masf/services/resume/WindowResumeService;->header:Lcom/google/masf/protocol/HeaderRequest;

    new-instance v0, Lcom/google/common/task/Task;

    new-instance v1, Lcom/google/masf/services/resume/WindowResumeService$MainTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/masf/services/resume/WindowResumeService$MainTask;-><init>(Lcom/google/masf/services/resume/WindowResumeService;Lcom/google/masf/services/resume/WindowResumeService$1;)V

    invoke-direct {v0, p2, v1}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/google/common/task/Task;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/masf/protocol/HeaderRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->header:Lcom/google/masf/protocol/HeaderRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/masf/services/resume/WindowResumeService;)I
    .registers 2

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->chunkSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/masf/MobileServiceMux;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mux:Lcom/google/masf/MobileServiceMux;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/TaskRunner;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->runner:Lcom/google/common/task/TaskRunner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/Task;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/google/common/task/Task;

    return-object v0
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MASF"

    invoke-static {v0, p0}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/google/masf/services/resume/ResumableRequest;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.cancelRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_21
    :try_start_21
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_49

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/services/resume/WindowResumeService$Control;

    iget-object v0, v0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    if-ne v0, p1, :cond_4b

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    new-instance v0, Lcom/google/common/task/Task;

    iget-object v2, p0, Lcom/google/masf/services/resume/WindowResumeService;->runner:Lcom/google/common/task/TaskRunner;

    new-instance v3, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;

    invoke-direct {v3, p1}, Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;-><init>(Lcom/google/masf/services/resume/ResumableRequest;)V

    invoke-direct {v0, v2, v3}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/common/task/Task;->schedule()V

    :cond_49
    monitor-exit v1

    return-void

    :cond_4b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    :catchall_4f
    move-exception v0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public disposeRequest(Lcom/google/masf/services/resume/ResumableRequest;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumableRequest;->getRequestType()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    :cond_9
    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumableRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/WindowResumeService;->removeClientTicket(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public getChunkSize()I
    .registers 2

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->chunkSize:I

    return v0
.end method

.method public setChunkSize(I)V
    .registers 3

    const/4 v0, 0x1

    sub-int v0, p1, v0

    div-int/lit16 v0, v0, 0x1000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->chunkSize:I

    return-void
.end method

.method public submitRequest(Lcom/google/masf/services/resume/ResumableRequest;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.submitRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_21
    :try_start_21
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_44

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/services/resume/WindowResumeService$Control;

    iget-object v0, v0, Lcom/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/google/masf/services/resume/ResumableRequest;

    if-ne v0, p1, :cond_40

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "request is already submitted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_3d

    throw v0

    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    new-instance v2, Lcom/google/masf/services/resume/WindowResumeService$Control;

    invoke-direct {v2, p0, p1}, Lcom/google/masf/services/resume/WindowResumeService$Control;-><init>(Lcom/google/masf/services/resume/WindowResumeService;Lcom/google/masf/services/resume/ResumableRequest;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/google/common/task/Task;

    invoke-virtual {v0}, Lcom/google/common/task/Task;->schedule()V

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_3d

    return-void
.end method
