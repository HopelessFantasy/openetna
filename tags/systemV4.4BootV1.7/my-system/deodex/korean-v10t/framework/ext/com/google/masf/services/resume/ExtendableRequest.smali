.class public Lcom/google/masf/services/resume/ExtendableRequest;
.super Lcom/google/masf/protocol/HttpRequest;

# interfaces
.implements Lcom/google/masf/services/resume/ResumableRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/masf/services/resume/ExtendableRequest$Listener;
    }
.end annotation


# static fields
.field static final ADD_BODY_PART:I = 0x0

.field static final COMPLETE:I = 0x1

.field static final DONE:I = 0x4

.field static final ERROR:I = 0x5

.field static final IDLE:I = 0x1

.field static final NEW:I = 0x0

.field static final PART_FAILED:I = 0x3

.field static final PART_UPLOADED:I = 0x2

.field static final SENDING:I = 0x2

.field static final SENDING_METADATA:I = 0x3


# instance fields
.field private exception:Ljava/lang/Exception;

.field private gotLastPart:Z

.field private listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

.field private requestId:Ljava/lang/String;

.field private response:Lcom/google/masf/protocol/Response;

.field private runningLength:I

.field private sendingRequest:Lcom/google/masf/services/resume/ResumableRequest;

.field private sentParts:I

.field private serviceUri:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/masf/protocol/HttpRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->init()V

    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private generateBodyRequest(Lcom/google/masf/protocol/BodyPart;I)Lcom/google/masf/services/resume/ResumableRequest;
    .registers 5

    new-instance v0, Lcom/google/masf/services/resume/ResumableRawRequest;

    invoke-direct {v0, p1}, Lcom/google/masf/services/resume/ResumableRawRequest;-><init>(Lcom/google/masf/InputStreamProvider;)V

    invoke-virtual {v0, p2}, Lcom/google/masf/services/resume/ResumableRequest;->setRequestType(I)V

    iget-object v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/ResumableRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/masf/services/resume/ResumableRequest;->setListener(Lcom/google/masf/services/resume/ResumableRequest$Listener;)V

    return-object v0
.end method

.method private generateHeaderRequest()Lcom/google/masf/services/resume/ResumableRequest;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->generateBodyPartCount()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->generatePayloadMetaData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->generatePayloadHeader()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getPayload()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->generateBlockHeader()[B

    move-result-object v4

    array-length v5, v4

    array-length v6, v2

    add-int/2addr v5, v6

    array-length v6, v1

    add-int/2addr v5, v6

    array-length v6, v3

    add-int/2addr v5, v6

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v5, v5, [B

    move v6, v9

    move v7, v9

    :goto_22
    array-length v8, v4

    if-ge v6, v8, :cond_2e

    aget-byte v8, v4, v6

    aput-byte v8, v5, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_2e
    move v4, v9

    move v6, v7

    :goto_30
    array-length v7, v2

    if-ge v4, v7, :cond_3c

    aget-byte v7, v2, v4

    aput-byte v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_3c
    move v2, v9

    move v4, v6

    :goto_3e
    array-length v6, v1

    if-ge v2, v6, :cond_4a

    aget-byte v6, v1, v2

    aput-byte v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_4a
    move v1, v9

    move v2, v4

    :goto_4c
    array-length v4, v3

    if-ge v1, v4, :cond_58

    aget-byte v4, v3, v1

    aput-byte v4, v5, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_58
    move v1, v9

    :goto_59
    array-length v3, v0

    if-ge v1, v3, :cond_65

    aget-byte v3, v0, v1

    aput-byte v3, v5, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_65
    new-instance v0, Lcom/google/masf/services/resume/ResumableRawRequest;

    invoke-direct {v0, v5}, Lcom/google/masf/services/resume/ResumableRawRequest;-><init>([B)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/ResumableRequest;->setRequestType(I)V

    iget-object v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/masf/services/resume/ResumableRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/masf/services/resume/ResumableRequest;->setListener(Lcom/google/masf/services/resume/ResumableRequest$Listener;)V

    return-object v0
.end method

.method private init()V
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/ExtendableRequest;->setBodyParts(Ljava/util/Vector;)V

    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/ExtendableRequest;->setPayload([B)V

    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    iput-boolean v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/ExtendableRequest;->setBlockType(I)V

    return-void
.end method

.method private requestComplete()V
    .registers 3

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

    iget-object v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->response:Lcom/google/masf/protocol/Response;

    invoke-interface {v0, p0, v1}, Lcom/google/masf/services/resume/ExtendableRequest$Listener;->requestCompleted(Lcom/google/masf/services/resume/ExtendableRequest;Lcom/google/masf/protocol/Response;)V

    :cond_b
    return-void
.end method

.method private requestFailed()V
    .registers 3

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

    iget-object v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    invoke-interface {v0, p0, v1}, Lcom/google/masf/services/resume/ExtendableRequest$Listener;->requestFailed(Lcom/google/masf/services/resume/ExtendableRequest;Ljava/lang/Exception;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/google/masf/protocol/BodyPart;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_17

    :try_start_8
    iget v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->runningLength:I

    invoke-virtual {p1}, Lcom/google/masf/protocol/BodyPart;->getStreamLength()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->runningLength:I
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_1a

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_17

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    :catch_1a
    move-exception v0

    goto :goto_11
.end method

.method advanceState(I)V
    .registers 7

    const/4 v3, 0x3

    const/4 v2, 0x2

    const-string v0, "Exception generating header request ["

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_6
    iget v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    packed-switch v1, :pswitch_data_148

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_39

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/masf/MobileServiceMux;->submitResumableRequest(Lcom/google/masf/services/resume/ResumableRequest;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/google/masf/services/resume/ResumableRequest;

    :cond_2f
    :goto_2f
    return-void

    :pswitch_30
    if-ne p1, v2, :cond_3c

    const/4 v1, 0x4

    :try_start_33
    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->requestComplete()V

    goto :goto_23

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    if-ne p1, v3, :cond_23

    const/4 v1, 0x5

    :try_start_3f
    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    goto :goto_23

    :pswitch_45
    if-ne p1, v2, :cond_50

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    monitor-exit p0

    goto :goto_2f

    :cond_50
    if-ne p1, v3, :cond_23

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    goto :goto_23

    :pswitch_59
    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-le v1, v2, :cond_80

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/BodyPart;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/masf/services/resume/ExtendableRequest;->generateBodyRequest(Lcom/google/masf/protocol/BodyPart;I)Lcom/google/masf/services/resume/ResumableRequest;

    move-result-object v0

    iget v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    goto :goto_23

    :cond_80
    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-ne v1, v2, :cond_23

    iget-boolean v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z
    :try_end_8e
    .catchall {:try_start_3f .. :try_end_8e} :catchall_39

    if-eqz v1, :cond_23

    :try_start_90
    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->generateHeaderRequest()Lcom/google/masf/services/resume/ResumableRequest;
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_39
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_142

    move-result-object v0

    const/4 v1, 0x3

    :try_start_95
    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_39
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_97} :catch_98

    goto :goto_23

    :catch_98
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_9c
    :try_start_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception generating header request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    move-object v0, v1

    goto/16 :goto_23

    :pswitch_c3
    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-le v1, v2, :cond_eb

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/BodyPart;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/masf/services/resume/ExtendableRequest;->generateBodyRequest(Lcom/google/masf/protocol/BodyPart;I)Lcom/google/masf/services/resume/ResumableRequest;

    move-result-object v0

    iget v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    goto/16 :goto_23

    :cond_eb
    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-ne v1, v2, :cond_23

    iget-boolean v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z
    :try_end_f9
    .catchall {:try_start_9c .. :try_end_f9} :catchall_39

    if-eqz v1, :cond_23

    :try_start_fb
    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->generateHeaderRequest()Lcom/google/masf/services/resume/ResumableRequest;
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_39
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_13d

    move-result-object v0

    const/4 v1, 0x3

    :try_start_100
    iput v1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I
    :try_end_102
    .catchall {:try_start_100 .. :try_end_102} :catchall_39
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_102} :catch_104

    goto/16 :goto_23

    :catch_104
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_108
    :try_start_108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception generating header request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    move-object v0, v1

    goto/16 :goto_23

    :pswitch_12f
    const-string v1, "Error state"

    invoke-static {v1}, Lcom/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_136
    const-string v1, "Done state (shouldn\'t be seen)"

    invoke-static {v1}, Lcom/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_108 .. :try_end_13b} :catchall_39

    goto/16 :goto_23

    :catch_13d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_108

    :catch_142
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_9c

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_59
        :pswitch_45
        :pswitch_30
        :pswitch_136
        :pswitch_12f
    .end packed-switch
.end method

.method public complete()V
    .registers 3

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-virtual {p0, v1}, Lcom/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized dispose()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "ResumeServiceRequest.dispose()"

    invoke-static {v0}, Lcom/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    invoke-virtual {p0}, Lcom/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/masf/protocol/BodyPart;->dispose()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_23
    invoke-super {p0}, Lcom/google/masf/protocol/HttpRequest;->dispose()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getState()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestCancelled(Lcom/google/masf/services/resume/ResumableRequest;)V
    .registers 3

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

    invoke-interface {v0, p0}, Lcom/google/masf/services/resume/ExtendableRequest$Listener;->requestCancelled(Lcom/google/masf/services/resume/ExtendableRequest;)V

    :cond_9
    return-void
.end method

.method public requestCompleted(Lcom/google/masf/services/resume/ResumableRequest;Lcom/google/masf/protocol/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_a

    iput-object p2, p0, Lcom/google/masf/services/resume/ExtendableRequest;->response:Lcom/google/masf/protocol/Response;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    :cond_a
    return-void
.end method

.method public requestFailed(Lcom/google/masf/services/resume/ResumableRequest;Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_32

    if-eqz p2, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] received for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    :cond_2c
    iput-object p2, p0, Lcom/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    :cond_32
    return-void
.end method

.method public requestProgress(Lcom/google/masf/services/resume/ResumableRequest;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_1c

    iget v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->runningLength:I

    int-to-long v0, v0

    mul-long/2addr v0, p4

    :try_start_8
    invoke-virtual {p1}, Lcom/google/masf/services/resume/ResumableRequest;->getStreamLength()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1c

    div-long/2addr v0, v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_1d

    move-wide v4, v0

    :goto_15
    iget-object v0, p0, Lcom/google/masf/services/resume/ExtendableRequest;->listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

    move-object v1, p0

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/masf/services/resume/ExtendableRequest$Listener;->requestProgress(Lcom/google/masf/services/resume/ExtendableRequest;JJ)V

    :cond_1c
    return-void

    :catch_1d
    move-exception v0

    move-wide v4, p4

    goto :goto_15
.end method

.method public setListener(Lcom/google/masf/services/resume/ExtendableRequest$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->listener:Lcom/google/masf/services/resume/ExtendableRequest$Listener;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    return-void
.end method
