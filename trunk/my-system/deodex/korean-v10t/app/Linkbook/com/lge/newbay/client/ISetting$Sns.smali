.class public Lcom/lge/newbay/client/ISetting$Sns;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ISetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sns"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field notificationEnabled:Z

.field preferredEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .parameter "id"
    .parameter "preferredEnabled"
    .parameter "notificationEnabled"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Sns;->id:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lcom/lge/newbay/client/ISetting$Sns;->preferredEnabled:Z

    .line 54
    iput-boolean p3, p0, Lcom/lge/newbay/client/ISetting$Sns;->notificationEnabled:Z

    .line 55
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Sns;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isNotificationEnabled()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lge/newbay/client/ISetting$Sns;->notificationEnabled:Z

    return v0
.end method

.method public isPreferredEnabled()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lge/newbay/client/ISetting$Sns;->preferredEnabled:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Sns;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNotificationEnabled(Z)V
    .registers 2
    .parameter "notificationEnabled"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lge/newbay/client/ISetting$Sns;->notificationEnabled:Z

    .line 48
    return-void
.end method

.method public setPreferredEnabled(Z)V
    .registers 2
    .parameter "preferredEnabled"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lge/newbay/client/ISetting$Sns;->preferredEnabled:Z

    .line 42
    return-void
.end method
