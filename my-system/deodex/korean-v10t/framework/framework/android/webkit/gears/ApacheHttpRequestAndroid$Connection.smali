.class Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;
.super Ljava/lang/Object;
.source "ApacheHttpRequestAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/ApacheHttpRequestAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;


# direct methods
.method constructor <init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-string v5, "Gears-J"

    .line 175
    const/4 v1, 0x0

    .line 180
    .local v1, problem:Z
    :try_start_3
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v3}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$200(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/impl/client/AbstractHttpClient;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v4}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$100(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$002(Landroid/webkit/gears/ApacheHttpRequestAndroid;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .line 181
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$000(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 186
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v4}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$000(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$302(Landroid/webkit/gears/ApacheHttpRequestAndroid;Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_42} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_42} :catch_52

    .line 201
    :goto_42
    if-nez v1, :cond_5d

    .line 223
    :cond_44
    :goto_44
    return-void

    .line 191
    :cond_45
    const/4 v1, 0x1

    goto :goto_42

    .line 193
    :catch_47
    move-exception v2

    move-object v0, v2

    .line 194
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Gears-J"

    const-string v2, "Connection IO exception "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v1, 0x1

    .line 199
    goto :goto_42

    .line 196
    .end local v0           #e:Ljava/io/IOException;
    :catch_52
    move-exception v2

    move-object v0, v2

    .line 197
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "Gears-J"

    const-string v2, "Connection runtime exception "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/4 v1, 0x1

    goto :goto_42

    .line 207
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5d
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$400(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$502(Landroid/webkit/gears/ApacheHttpRequestAndroid;Z)Z

    .line 209
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$400(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 216
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$100(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 217
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$600(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 220
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$600(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->signalOutputStream()V

    goto :goto_44
.end method
