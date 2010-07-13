.class public Lcom/android/internal/http/multipart/MultipartTest;
.super Ljunit/framework/TestCase;
.source "MultipartTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public testParts()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    .local v3, filebuffer:Ljava/lang/StringBuffer;
    const-string v4, "this is file part"

    .line 17
    .local v4, filepartStr:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    const-string v13, "Multipart"

    const-string v14, "test"

    invoke-static {v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 20
    .local v12, upload:Ljava/io/File;
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 21
    .local v9, outFile:Ljava/io/FileWriter;
    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .local v8, out:Ljava/io/BufferedWriter;
    :try_start_1c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_170

    .line 26
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 29
    const/4 v13, 0x3

    new-array v11, v13, [Lcom/android/internal/http/multipart/Part;

    .line 30
    .local v11, parts:[Lcom/android/internal/http/multipart/Part;
    const/4 v13, 0x0

    new-instance v14, Lcom/android/internal/http/multipart/StringPart;

    const-string v15, "stringpart"

    const-string v16, "PART1!!"

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v11, v13

    .line 31
    const/4 v13, 0x1

    new-instance v14, Lcom/android/internal/http/multipart/FilePart;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v12}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v14, v11, v13

    .line 32
    const/4 v13, 0x2

    new-instance v14, Lcom/android/internal/http/multipart/StringPart;

    const-string v15, "stringpart"

    const-string v16, "PART2!!"

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v11, v13

    .line 34
    new-instance v6, Lcom/android/internal/http/multipart/MultipartEntity;

    invoke-direct {v6, v11}, Lcom/android/internal/http/multipart/MultipartEntity;-><init>([Lcom/android/internal/http/multipart/Part;)V

    .line 35
    .local v6, me:Lcom/android/internal/http/multipart/MultipartEntity;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v7, os:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v6, v7}, Lcom/android/internal/http/multipart/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 37
    invoke-virtual {v6}, Lcom/android/internal/http/multipart/MultipartEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    .line 38
    .local v5, h:Lorg/apache/http/Header;
    invoke-virtual {v6}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, boundry:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v13, "multipart/form-data"

    invoke-direct {v2, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, contentType:Ljava/lang/StringBuffer;
    const-string v13, "; boundary="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v13, "Multipart content type error"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/android/internal/http/multipart/MultipartTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "\r\n"

    .line 44
    .local v0, CRLF:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v10, output:Ljava/lang/StringBuffer;
    const-string v13, "--"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v13, "Content-Disposition: form-data; name=\"stringpart\""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v13, "Content-Type: text/plain; charset=US-ASCII"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v13, "Content-Transfer-Encoding: 8bit"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v13, "PART1!!"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v13, "--"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v13, "Content-Disposition: form-data; name=\""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v13, "\"; filename=\""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v13, "\""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v13, "Content-Type: application/octet-stream; charset=ISO-8859-1"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v13, "Content-Transfer-Encoding: binary"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v13, "--"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v13, "Content-Disposition: form-data; name=\"stringpart\""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v13, "Content-Type: text/plain; charset=US-ASCII"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v13, "Content-Transfer-Encoding: 8bit"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v13, "PART2!!"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v13, "--"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v13, "--"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v13, "Multipart content error"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/android/internal/http/multipart/MultipartTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 26
    .end local v0           #CRLF:Ljava/lang/String;
    .end local v1           #boundry:Ljava/lang/String;
    .end local v2           #contentType:Ljava/lang/StringBuffer;
    .end local v5           #h:Lorg/apache/http/Header;
    .end local v6           #me:Lcom/android/internal/http/multipart/MultipartEntity;
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    .end local v10           #output:Ljava/lang/StringBuffer;
    .end local v11           #parts:[Lcom/android/internal/http/multipart/Part;
    :catchall_170
    move-exception v13

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    throw v13
.end method
