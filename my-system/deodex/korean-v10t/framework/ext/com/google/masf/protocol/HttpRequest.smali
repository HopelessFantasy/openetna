.class public Lcom/google/masf/protocol/HttpRequest;
.super Lcom/google/masf/protocol/SimpleRequest;


# instance fields
.field private bodyPartCount:[B

.field private bodyParts:Ljava/util/Vector;

.field private contentType:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private payloadHeader:[B

.field private payloadMetaData:[B

.field private payloadProvider:Lcom/google/masf/InputStreamProvider;

.field private properties:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/masf/protocol/SimpleRequest;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/masf/InputStreamProvider;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/masf/protocol/HttpRequest;->setBlockType(I)V

    invoke-direct {p0, p3}, Lcom/google/masf/protocol/HttpRequest;->setPayloadProvider(Lcom/google/masf/InputStreamProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 5

    new-instance v0, Lcom/google/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p3}, Lcom/google/masf/ByteArrayInputStreamProvider;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;ILcom/google/masf/InputStreamProvider;)V

    return-void
.end method

.method private generateBlockData()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyPartCount:[B

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/masf/protocol/HttpRequest;->generateBodyPartCount()[B

    :cond_b
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadMetaData:[B

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/masf/protocol/HttpRequest;->generatePayloadMetaData()[B

    :cond_12
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadHeader:[B

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/google/masf/protocol/HttpRequest;->generatePayloadHeader()[B

    :cond_19
    return-void
.end method

.method private setPayloadProvider(Lcom/google/masf/InputStreamProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Lcom/google/masf/protocol/BodyPart;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v0, :cond_11

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/google/masf/protocol/HttpRequest;->setBlockType(I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    :cond_11
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dispose()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadHeader:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadMetaData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyPartCount:[B

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/masf/protocol/BodyPart;->dispose()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_29

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected generateBodyPartCount()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyPartCount:[B

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyPartCount:[B

    return-object v0
.end method

.method protected generatePayloadHeader()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/masf/protocol/HttpRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/masf/protocol/HttpRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/masf/protocol/HttpRequest;->getServiceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->payloadMetaData:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v3}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v3

    add-int/2addr v2, v3

    :cond_31
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_34
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadHeader:[B

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadHeader:[B

    return-object v0
.end method

.method protected generatePayloadMetaData()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, ""

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    :goto_1b
    invoke-static {v1, v2}, Lcom/google/masf/protocol/HttpUtil;->writeContentType(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_23
    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v3, :cond_62

    iget-object v3, p0, Lcom/google/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    :goto_2b
    invoke-static {v1, v2, v3}, Lcom/google/masf/protocol/HttpUtil;->writeProperties(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_3b
    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    if-lez v2, :cond_50

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_50
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadMetaData:[B

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadMetaData:[B

    return-object v0

    :cond_5f
    const-string v2, "multipart/related"

    goto :goto_1b

    :cond_62
    const/4 v3, 0x0

    goto :goto_2b

    :cond_64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3b
.end method

.method public declared-synchronized getBodyInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/masf/protocol/HttpRequest;->generateBlockData()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->payloadHeader:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->payloadMetaData:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2a
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_55

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/masf/protocol/HttpRequest;->bodyPartCount:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_3a
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_55

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/masf/protocol/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3a

    :cond_55
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, Lcom/google/common/io/SequenceInputStream;

    invoke-direct {v1, v0}, Lcom/google/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    monitor-exit p0

    return-object v1

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getBodyParts()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    return-object v0
.end method

.method public declared-synchronized getBodyStreamLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/google/masf/protocol/HttpRequest;->generateBlockData()V

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadHeader:[B

    array-length v0, v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/masf/protocol/HttpRequest;->payloadMetaData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/masf/protocol/HttpRequest;->bodyPartCount:[B

    array-length v1, v1

    add-int/2addr v0, v1

    move v1, v2

    move v2, v0

    :goto_22
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/masf/protocol/BodyPart;->getStreamLength()I
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_3e

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_22

    :cond_3b
    move v0, v2

    :cond_3c
    monitor-exit p0

    return v0

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPayload()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;I)[B
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProperties()Ljava/util/Hashtable;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    :cond_c
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setBodyParts(Ljava/util/Vector;)V
    .registers 2

    iput-object p1, p0, Lcom/google/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    return-void
.end method

.method public declared-synchronized setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p2, p0, Lcom/google/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    :cond_20
    iget-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setId(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/google/masf/protocol/SimpleRequest;->setId(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadHeader:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/masf/protocol/HttpRequest;->method:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Lcom/google/masf/InputStreamProvider;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/google/masf/ByteArrayInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/google/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
