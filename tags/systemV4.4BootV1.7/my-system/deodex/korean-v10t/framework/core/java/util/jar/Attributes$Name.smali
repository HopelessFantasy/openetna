.class public Ljava/util/jar/Attributes$Name;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# static fields
.field public static final CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final SEALED:Ljava/util/jar/Attributes$Name;

.field public static final SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private hashCode:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Class-Path"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 75
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Manifest-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 83
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Main-Class"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    .line 90
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Signature-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 96
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    .line 104
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Sealed"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 112
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 121
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 130
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 139
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 148
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 157
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 166
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-List"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 174
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 181
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Installation"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    .line 191
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor-Id"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    .line 201
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-URL"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 222
    .local v1, i:I
    if-eqz v1, :cond_d

    const/16 v2, 0x46

    if-le v1, v2, :cond_13

    .line 223
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 225
    :cond_13
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_41

    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 227
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_23

    const/16 v2, 0x7a

    if-le v0, v2, :cond_13

    :cond_23
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2b

    const/16 v2, 0x5a

    if-le v0, v2, :cond_13

    :cond_2b
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_13

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_13

    const/16 v2, 0x30

    if-lt v0, v2, :cond_3b

    const/16 v2, 0x39

    if-le v0, v2, :cond_13

    .line 229
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    .end local v0           #ch:C
    :cond_41
    iput-object p1, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "an"

    .prologue
    const/4 v2, 0x0

    .line 257
    if-nez p1, :cond_5

    move v0, v2

    .line 260
    .end local p1
    :goto_4
    return v0

    .restart local p1
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    check-cast p1, Ljava/util/jar/Attributes$Name;

    .end local p1
    iget-object v1, p1, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_4

    :cond_1d
    move v0, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    if-nez v0, :cond_10

    .line 273
    const-string v0, "name"

    invoke-static {v0}, Lorg/apache/harmony/archive/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    .line 275
    :cond_10
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    return-object v0
.end method
