.class public final Ljava/lang/reflect/ReflectPermission;
.super Ljava/security/BasicPermission;
.source "ReflectPermission.java"


# static fields
.field private static final serialVersionUID:J = 0x66df55209d4cf89dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "permissionName"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
