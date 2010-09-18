.class Ljava/lang/BootClassLoader;
.super Ljava/lang/ClassLoader;
.source "ClassLoader.java"


# static fields
.field static instance:Ljava/lang/BootClassLoader;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1052
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 1053
    return-void
.end method

.method public static getInstance()Ljava/lang/BootClassLoader;
    .registers 1

    .prologue
    .line 1044
    sget-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    if-nez v0, :cond_b

    .line 1045
    new-instance v0, Ljava/lang/BootClassLoader;

    invoke-direct {v0}, Ljava/lang/BootClassLoader;-><init>()V

    sput-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    .line 1048
    :cond_b
    sget-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    return-object v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/VMClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .parameter "name"

    .prologue
    .line 1062
    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 1071
    .local v0, result:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-nez v0, :cond_a

    .line 1072
    invoke-static {}, Ljava/lang/EmptyEnumeration;->getInstance()Ljava/lang/EmptyEnumeration;

    move-result-object v0

    .line 1075
    :cond_a
    return-object v0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 12
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const-string v0, "0.0"

    const-string v0, "Unknown"

    .line 1097
    if-eqz p1, :cond_2f

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_10
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    .line 1101
    .local v9, pack:Ljava/lang/Package;
    if-nez v9, :cond_29

    .line 1102
    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/lang/BootClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v9

    .line 1106
    :cond_29
    monitor-exit p0

    move-object v0, v9

    .line 1110
    .end local v9           #pack:Ljava/lang/Package;
    :goto_2b
    return-object v0

    .line 1107
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    move-object v0, v1

    .line 1110
    goto :goto_2b
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .parameter "resName"

    .prologue
    .line 1115
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .parameter "className"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1121
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1123
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_a

    .line 1124
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1127
    :cond_a
    return-object v0
.end method
