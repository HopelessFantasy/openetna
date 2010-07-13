.class public LSQLite/JDBCDriver;
.super Ljava/lang/Object;
.source "JDBCDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field public static final MAJORVERSION:I = 0x1

.field public static final MINORVERSION:I = 0x2

.field private static makeConn:Ljava/lang/reflect/Constructor;


# instance fields
.field protected conn:Ljava/sql/Connection;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 11
    const/4 v6, 0x0

    sput-object v6, LSQLite/JDBCDriver;->makeConn:Ljava/lang/reflect/Constructor;

    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, connClass:Ljava/lang/Class;
    const/4 v6, 0x2

    :try_start_5
    new-array v0, v6, [Ljava/lang/Class;

    .line 19
    .local v0, args:[Ljava/lang/Class;
    const/4 v6, 0x0

    const-string v7, "java.lang.String"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v0, v6

    .line 20
    const/4 v6, 0x1

    const/4 v7, 0x0

    aget-object v7, v0, v7

    aput-object v7, v0, v6

    .line 21
    const-string v6, "java.version"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, jvers:Ljava/lang/String;
    if-eqz v5, :cond_26

    const-string v6, "1.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 24
    :cond_26
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "unsupported java version"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2e

    .line 54
    .end local v0           #args:[Ljava/lang/Class;
    .end local v5           #jvers:Ljava/lang/String;
    :catch_2e
    move-exception v6

    move-object v3, v6

    .line 55
    .local v3, e:Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 57
    .end local v3           #e:Ljava/lang/Exception;
    :goto_35
    return-void

    .line 25
    .restart local v0       #args:[Ljava/lang/Class;
    .restart local v5       #jvers:Ljava/lang/String;
    :cond_36
    :try_start_36
    const-string v6, "1.1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 26
    const-string v2, "SQLite.JDBC1.JDBCConnection"

    .line 51
    .local v2, cvers:Ljava/lang/String;
    :goto_40
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    sput-object v6, LSQLite/JDBCDriver;->makeConn:Ljava/lang/reflect/Constructor;

    .line 53
    new-instance v6, LSQLite/JDBCDriver;

    invoke-direct {v6}, LSQLite/JDBCDriver;-><init>()V

    invoke-static {v6}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V

    goto :goto_35

    .line 27
    .end local v2           #cvers:Ljava/lang/String;
    :cond_53
    const-string v6, "1.2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    const-string v6, "1.3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 28
    :cond_63
    const-string v2, "SQLite.JDBC2.JDBCConnection"

    .restart local v2       #cvers:Ljava/lang/String;
    goto :goto_40

    .line 29
    .end local v2           #cvers:Ljava/lang/String;
    :cond_66
    const-string v6, "1.4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 30
    const-string v2, "SQLite.JDBC2x.JDBCConnection"

    .restart local v2       #cvers:Ljava/lang/String;
    goto :goto_40

    .line 31
    .end local v2           #cvers:Ljava/lang/String;
    :cond_71
    const-string v6, "1.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 32
    const-string v2, "SQLite.JDBC2y.JDBCConnection"
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_7b} :catch_2e

    .line 34
    .restart local v2       #cvers:Ljava/lang/String;
    :try_start_7b
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_40

    .line 35
    :catch_7f
    move-exception v3

    .line 36
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_80
    const-string v2, "SQLite.JDBC2x.JDBCConnection"

    .line 37
    goto :goto_40

    .line 39
    .end local v2           #cvers:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_83
    const-string v2, "SQLite.JDBC2z.JDBCConnection"
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_2e

    .line 41
    .restart local v2       #cvers:Ljava/lang/String;
    :try_start_85
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_40

    .line 42
    :catch_89
    move-exception v3

    .line 43
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_8a
    const-string v2, "SQLite.JDBC2y.JDBCConnection"
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8c} :catch_2e

    .line 45
    :try_start_8c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_40

    .line 46
    :catch_90
    move-exception v4

    .line 47
    .local v4, ee:Ljava/lang/Exception;
    :try_start_91
    const-string v2, "SQLite.JDBC2x.JDBCConnection"
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_93} :catch_2e

    goto :goto_40
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "sqlite:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "jdbc:sqlite:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .registers 8
    .parameter "url"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-virtual {p0, p1}, LSQLite/JDBCDriver;->acceptsURL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 70
    const/4 v3, 0x0

    .line 87
    :goto_8
    return-object v3

    .line 72
    :cond_9
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .line 73
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 74
    if-eqz p2, :cond_19

    .line 75
    const-string v3, "encoding"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 77
    :cond_19
    aget-object v3, v0, v4

    if-nez v3, :cond_25

    .line 78
    const-string v3, "SQLite.encoding"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 81
    :cond_25
    :try_start_25
    sget-object v3, LSQLite/JDBCDriver;->makeConn:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    iput-object v3, p0, LSQLite/JDBCDriver;->conn:Ljava/sql/Connection;
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_2f} :catch_32
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_42

    .line 87
    iget-object v3, p0, LSQLite/JDBCDriver;->conn:Ljava/sql/Connection;

    goto :goto_8

    .line 82
    :catch_32
    move-exception v3

    move-object v2, v3

    .line 83
    .local v2, ie:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .end local v2           #ie:Ljava/lang/reflect/InvocationTargetException;
    :catch_42
    move-exception v3

    move-object v1, v3

    .line 85
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getMajorVersion()I
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public getMinorVersion()I
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x2

    return v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .registers 7
    .parameter "url"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/sql/DriverPropertyInfo;

    .line 101
    .local v0, p:[Ljava/sql/DriverPropertyInfo;
    new-instance v1, Ljava/sql/DriverPropertyInfo;

    const-string v2, "encoding"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v1, pp:Ljava/sql/DriverPropertyInfo;
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 103
    return-object v0
.end method

.method public jdbcCompliant()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
