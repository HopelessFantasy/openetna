.class public final Ldalvik/system/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexFile$DFEnum;
    }
.end annotation


# instance fields
.field private final mCookie:I

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v1, "android.vm.dexfile"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, wantDex:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 76
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No dex in this VM"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1b
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldalvik/system/DexFile;->mCookie:I

    .line 79
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "sourceName"
    .parameter "outputName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string v1, "android.vm.dexfile"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, wantDex:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 99
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No dex in this VM"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1b
    invoke-static {p1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldalvik/system/DexFile;->mCookie:I

    .line 102
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method static synthetic access$000(Ldalvik/system/DexFile;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    return v0
.end method

.method static synthetic access$100(I)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Ldalvik/system/DexFile;->getClassNameList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native closeDexFile(I)V
.end method

.method private static native defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/security/ProtectionDomain;)Ljava/lang/Class;
.end method

.method private static native getClassNameList(I)[Ljava/lang/String;
.end method

.method public static native isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .registers 4
    .parameter "sourcePathName"
    .parameter "outputPathName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static native openDexFile(Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(I)V

    .line 166
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    invoke-direct {v0, p0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Ldalvik/system/DexFile;->close()V

    .line 244
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 5
    .parameter "name"
    .parameter "loader"

    .prologue
    .line 193
    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;ILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
