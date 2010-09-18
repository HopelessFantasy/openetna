.class Ljava/lang/VMClassLoader;
.super Ljava/lang/Object;
.source "VMClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/VMClassLoader$EnumerateListArray;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method static native defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation
.end method

.method static native defineClass(Ljava/lang/ClassLoader;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation
.end method

.method static native findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
.end method

.method private static native getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native getBootClassPathSize()I
.end method

.method static native getPrimitiveClass(C)Ljava/lang/Class;
.end method

.method static getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .parameter "name"

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathSize()I

    move-result v2

    .line 41
    .local v2, numEntries:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_1b

    .line 42
    invoke-static {p0, v0}, Ljava/lang/VMClassLoader;->getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, urlStr:Ljava/lang/String;
    if-eqz v3, :cond_18

    .line 45
    :try_start_d
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_12} :catch_13

    .line 54
    .end local v3           #urlStr:Ljava/lang/String;
    :goto_12
    return-object v4

    .line 47
    .restart local v3       #urlStr:Ljava/lang/String;
    :catch_13
    move-exception v4

    move-object v1, v4

    .line 48
    .local v1, mue:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 41
    .end local v1           #mue:Ljava/net/MalformedURLException;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 54
    .end local v3           #urlStr:Ljava/lang/String;
    :cond_1b
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 7
    .parameter "name"
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

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathSize()I

    move-result v3

    .line 65
    .local v3, numEntries:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v3, :cond_26

    .line 66
    invoke-static {p0, v0}, Ljava/lang/VMClassLoader;->getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, urlStr:Ljava/lang/String;
    if-eqz v4, :cond_1d

    .line 68
    if-nez v1, :cond_15

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_15
    :try_start_15
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_1d} :catch_20

    .line 65
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 74
    :catch_20
    move-exception v5

    move-object v2, v5

    .line 75
    .local v2, mue:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1d

    .line 81
    .end local v2           #mue:Ljava/net/MalformedURLException;
    .end local v4           #urlStr:Ljava/lang/String;
    :cond_26
    if-nez v1, :cond_2a

    .line 82
    const/4 v5, 0x0

    .line 84
    :goto_29
    return-object v5

    :cond_2a
    new-instance v5, Ljava/lang/VMClassLoader$EnumerateListArray;

    invoke-direct {v5, v1}, Ljava/lang/VMClassLoader$EnumerateListArray;-><init>(Ljava/util/ArrayList;)V

    goto :goto_29
.end method

.method static native loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
