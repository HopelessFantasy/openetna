.class final Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;
.super Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;
.source "SNMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public auxIntent:Landroid/content/Intent;

.field public comment:I

.field public intent:Landroid/content/Intent;

.field public leftImage:Z

.field public rightImage:Z

.field public sync:Z

.field public threadId:Ljava/lang/String;

.field public unread:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;-><init>()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->auxIntent:Landroid/content/Intent;

    return-void
.end method
