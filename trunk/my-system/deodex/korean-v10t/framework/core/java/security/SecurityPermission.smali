.class public final Ljava/security/SecurityPermission;
.super Ljava/security/BasicPermission;
.source "SecurityPermission.java"


# static fields
.field private static final serialVersionUID:J = 0x48aa663eb1871d26L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "action"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
