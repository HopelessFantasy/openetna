.class Ljava/security/Security$SecurityDoor;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Lorg/apache/harmony/security/fortress/SecurityAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecurityDoor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/Security$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/security/Security$SecurityDoor;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliases(Ljava/security/Provider$Service;)Ljava/util/Iterator;
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider$Service;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 4
    .parameter "p"
    .parameter "type"

    .prologue
    .line 577
    invoke-virtual {p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0
.end method

.method public renumProviders()V
    .registers 1

    .prologue
    .line 567
    invoke-static {}, Ljava/security/Security;->access$300()V

    .line 568
    return-void
.end method
