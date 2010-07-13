.class public final Ljavax/net/ssl/SSLPermission;
.super Ljava/security/BasicPermission;
.source "SSLPermission.java"


# static fields
.field private static final serialVersionUID:J = -0x2ff95e705306eb27L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
