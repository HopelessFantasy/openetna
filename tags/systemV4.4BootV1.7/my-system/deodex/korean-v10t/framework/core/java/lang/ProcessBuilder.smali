.class public final Ljava/lang/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# instance fields
.field private command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directory:Ljava/io/File;

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectErrorStream:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_b

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_b
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 71
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/ProcessBuilder;->toList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 50
    return-void
.end method

.method private static toList([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "strings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_13

    aget-object v4, v0, v2

    .line 228
    .local v4, string:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 230
    .end local v4           #string:Ljava/lang/String;
    :cond_13
    return-object v1
.end method


# virtual methods
.method public command(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 115
    :cond_8
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 116
    return-object p0
.end method

.method public varargs command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .registers 3
    .parameter "command"

    .prologue
    .line 96
    invoke-static {p1}, Ljava/lang/ProcessBuilder;->toList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public command()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    return-object v0
.end method

.method public directory()Ljava/io/File;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    return-object v0
.end method

.method public directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .registers 2
    .parameter "directory"

    .prologue
    .line 142
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    .line 143
    return-object p0
.end method

.method public environment()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    return-object v0
.end method

.method public redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    .registers 2
    .parameter "redirectErrorStream"

    .prologue
    .line 185
    iput-boolean p1, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    .line 186
    return-object p0
.end method

.method public redirectErrorStream()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    return v0
.end method

.method public start()Ljava/lang/Process;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v7, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 206
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 208
    :cond_e
    iget-object v7, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 209
    .local v0, cmdArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    array-length v7, v0

    if-ge v3, v7, :cond_2f

    .line 210
    iget-object v7, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v3

    if-nez v7, :cond_2c

    .line 211
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 209
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 214
    :cond_2f
    iget-object v7, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    .line 215
    .local v2, envArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 216
    iget-object v7, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 217
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_42

    .line 219
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    iget-object v8, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    invoke-virtual {v7, v0, v2, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v6

    .line 222
    .local v6, process:Ljava/lang/Process;
    return-object v6
.end method
