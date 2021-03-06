.class public Lcom/google/masf/services/RlzService;
.super Ljava/lang/Object;


# static fields
.field static final RLZ_PREFERENCE:Ljava/lang/String; = "Rlz"

.field private static final RLZ_SERVICE_URI:Ljava/lang/String; = "g:rlz"

.field private static rlzRequested:Z

.field private static theRlz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/masf/services/RlzService;->rlzRequested:Z

    const-string v0, ""

    sput-object v0, Lcom/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getRlz()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const-class v0, Lcom/google/masf/services/RlzService;

    monitor-enter v0

    :try_start_5
    sget-object v1, Lcom/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/google/masf/services/RlzService;->loadRlzFromStore()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    :cond_15
    sget-object v1, Lcom/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/google/masf/services/RlzService;->updateRlz()V

    :cond_22
    sget-object v1, Lcom/google/masf/services/RlzService;->theRlz:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_26

    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized loadRlzFromStore()Ljava/lang/String;
    .registers 4

    const-string v0, "Rlz"

    const-class v0, Lcom/google/masf/services/RlzService;

    monitor-enter v0

    :try_start_5
    const-string v1, "Rlz"

    invoke-static {v1}, Lcom/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_25

    move-result-object v1

    if-eqz v1, :cond_22

    :try_start_d
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_25
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_13

    move-result-object v1

    :goto_11
    monitor-exit v0

    return-object v1

    :catch_13
    move-exception v1

    :try_start_14
    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "Rlz"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :cond_22
    const-string v1, ""
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_25

    goto :goto_11

    :catchall_25
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setRlz(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/google/masf/services/RlzService;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/masf/services/RlzService;->rlzRequested:Z

    invoke-static {p0}, Lcom/google/masf/services/RlzService;->writeRlzToStore(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized updateRlz()V
    .registers 6

    const-class v0, Lcom/google/masf/services/RlzService;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/masf/services/RlzService;->rlzRequested:Z

    if-nez v1, :cond_49

    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v1

    if-eqz v1, :cond_49

    sget-object v2, Lcom/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {}, Lcom/google/masf/services/RlzService;->loadRlzFromStore()Ljava/lang/String;

    move-result-object v2

    :cond_1b
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_4b

    :try_start_25
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_4e

    :try_start_2e
    new-instance v2, Lcom/google/masf/protocol/PlainRequest;

    const-string v4, "g:rlz"

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v3, Lcom/google/masf/services/RlzService$1;

    invoke-direct {v3}, Lcom/google/masf/services/RlzService$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/masf/services/RlzService;->rlzRequested:Z
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_4b

    :cond_49
    :goto_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_4e
    move-exception v1

    goto :goto_49
.end method

.method public static declared-synchronized writeRlzToStore(Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/google/masf/services/RlzService;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v2, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "Rlz"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    invoke-interface {v2}, Lcom/google/common/io/PersistentStore;->savePreferences()V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_24} :catch_26

    monitor-exit v0

    return-void

    :catch_26
    move-exception v1

    :try_start_27
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v1

    monitor-exit v0

    throw v1
.end method
