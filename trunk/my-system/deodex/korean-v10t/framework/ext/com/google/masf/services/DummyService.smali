.class public Lcom/google/masf/services/DummyService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/masf/protocol/Request$Listener;


# static fields
.field private static final REQUEST_DUMMY_INT:I = 0x2a

.field private static final REQUEST_DUMMY_STRING:Ljava/lang/String; = "wibble"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dummy()V
    .registers 5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/masf/services/DummyStubbyServerMessageTypes;->DUMMY_STUBBY_SERVER_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    const/16 v1, 0x2a

    invoke-virtual {v0, v4, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addInt(II)V

    const/4 v1, 0x2

    const-string v2, "wibble"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v1

    if-nez v1, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_23
    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3d

    new-instance v0, Lcom/google/masf/protocol/PlainRequest;

    const-string v3, "g:dummy/doCall"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v2, Lcom/google/masf/services/DummyService;

    invoke-direct {v2}, Lcom/google/masf/services/DummyService;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    invoke-virtual {v1, v0, v4}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    goto :goto_1d

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public requestCompleted(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    .registers 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DummyService.requestComplete(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailed(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DummyService.requestException(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
