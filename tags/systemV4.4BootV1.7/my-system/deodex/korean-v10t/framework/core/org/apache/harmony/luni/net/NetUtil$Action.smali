.class final Lorg/apache/harmony/luni/net/NetUtil$Action;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/net/NetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final propertyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "propertyName"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/harmony/luni/net/NetUtil$Action;->propertyName:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/luni/net/NetUtil$Action;->propertyName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/NetUtil$Action;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
