.class final Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;
.super Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;
.source "SNMessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public authorName:Ljava/lang/String;

.field public auxIntent:Landroid/content/Intent;

.field public intent:Landroid/content/Intent;

.field public messageId:Ljava/lang/String;

.field public threadId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 601
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;-><init>()V

    .line 603
    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->auxIntent:Landroid/content/Intent;

    .line 604
    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->messageId:Ljava/lang/String;

    .line 605
    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->threadId:Ljava/lang/String;

    .line 606
    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->authorName:Ljava/lang/String;

    return-void
.end method
