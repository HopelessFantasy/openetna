.class public Ljava/lang/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field private final implTitle:Ljava/lang/String;

.field private final implVendor:Ljava/lang/String;

.field private final implVersion:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final sealBase:Ljava/net/URL;

.field private final specTitle:Ljava/lang/String;

.field private final specVendor:Ljava/lang/String;

.field private final specVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .registers 9
    .parameter "name"
    .parameter "specTitle"
    .parameter "specVersion"
    .parameter "specVendor"
    .parameter "implTitle"
    .parameter "implVersion"
    .parameter "implVendor"
    .parameter "sealBase"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 67
    iput-object p7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 69
    return-void
.end method

.method private static native getDeclaredAnnotations(Ljava/lang/Package;Z)[Ljava/lang/annotation/Annotation;
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 199
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 200
    .local v0, classloader:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method public static getPackages()[Ljava/lang/Package;
    .registers 2

    .prologue
    .line 211
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 212
    .local v0, classloader:Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Package;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 84
    .local v1, list:[Ljava/lang/annotation/Annotation;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 85
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 86
    aget-object v2, v1, v0

    .line 90
    :goto_12
    return-object v2

    .line 84
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 90
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Package;->getDeclaredAnnotations(Ljava/lang/Package;Z)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Package;->getDeclaredAnnotations(Ljava/lang/Package;Z)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isCompatibleWith(Ljava/lang/String;)Z
    .registers 12
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "."

    .line 271
    const-string v5, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, requested:[Ljava/lang/String;
    iget-object v5, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, provided:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v5, v4

    array-length v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v0, v5, :cond_32

    .line 275
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 276
    .local v3, reqNum:I
    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 278
    .local v1, provNum:I
    if-le v3, v1, :cond_2b

    move v5, v7

    .line 289
    .end local v1           #provNum:I
    .end local v3           #reqNum:I
    :goto_2a
    return v5

    .line 280
    .restart local v1       #provNum:I
    .restart local v3       #reqNum:I
    :cond_2b
    if-ge v3, v1, :cond_2f

    move v5, v8

    .line 281
    goto :goto_2a

    .line 274
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 285
    .end local v1           #provNum:I
    .end local v3           #reqNum:I
    :cond_32
    array-length v5, v4

    array-length v6, v2

    if-le v5, v6, :cond_38

    move v5, v7

    .line 286
    goto :goto_2a

    :cond_38
    move v5, v8

    .line 289
    goto :goto_2a
.end method

.method public isSealed()Z
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSealed(Ljava/net/URL;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 313
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
