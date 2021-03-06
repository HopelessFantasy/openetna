.class public final Ljava/lang/RuntimePermission;
.super Ljava/security/BasicPermission;
.source "RuntimePermission.java"


# static fields
.field static final permissionToCreateClassLoader:Ljava/lang/RuntimePermission; = null

.field static final permissionToCreateSecurityManager:Ljava/lang/RuntimePermission; = null

.field static final permissionToExitVM:Ljava/lang/RuntimePermission; = null

.field static final permissionToGetClassLoader:Ljava/lang/RuntimePermission; = null

.field static final permissionToGetProtectionDomain:Ljava/lang/RuntimePermission; = null

.field static final permissionToModifyThread:Ljava/lang/RuntimePermission; = null

.field static final permissionToModifyThreadGroup:Ljava/lang/RuntimePermission; = null

.field static final permissionToQueuePrintJob:Ljava/lang/RuntimePermission; = null

.field static final permissionToReadFileDescriptor:Ljava/lang/RuntimePermission; = null

.field static final permissionToSetContextClassLoader:Ljava/lang/RuntimePermission; = null

.field static final permissionToSetFactory:Ljava/lang/RuntimePermission; = null

.field static final permissionToSetIO:Ljava/lang/RuntimePermission; = null

.field static final permissionToSetSecurityManager:Ljava/lang/RuntimePermission; = null

.field static final permissionToStopThread:Ljava/lang/RuntimePermission; = null

.field static final permissionToWriteFileDescriptor:Ljava/lang/RuntimePermission; = null

.field private static final serialVersionUID:J = 0x66af2f85d3b9d84fL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "setSecurityManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToSetSecurityManager:Ljava/lang/RuntimePermission;

    .line 39
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "createSecurityManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToCreateSecurityManager:Ljava/lang/RuntimePermission;

    .line 42
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getProtectionDomain"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToGetProtectionDomain:Ljava/lang/RuntimePermission;

    .line 45
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToGetClassLoader:Ljava/lang/RuntimePermission;

    .line 48
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "createClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToCreateClassLoader:Ljava/lang/RuntimePermission;

    .line 51
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToModifyThread:Ljava/lang/RuntimePermission;

    .line 54
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThreadGroup"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToModifyThreadGroup:Ljava/lang/RuntimePermission;

    .line 57
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "exitVM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToExitVM:Ljava/lang/RuntimePermission;

    .line 60
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "readFileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToReadFileDescriptor:Ljava/lang/RuntimePermission;

    .line 63
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "writeFileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToWriteFileDescriptor:Ljava/lang/RuntimePermission;

    .line 66
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "queuePrintJob"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToQueuePrintJob:Ljava/lang/RuntimePermission;

    .line 69
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "setFactory"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToSetFactory:Ljava/lang/RuntimePermission;

    .line 72
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "setIO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToSetIO:Ljava/lang/RuntimePermission;

    .line 75
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "stopThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToStopThread:Ljava/lang/RuntimePermission;

    .line 78
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "setContextClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/RuntimePermission;->permissionToSetContextClassLoader:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "permissionName"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
