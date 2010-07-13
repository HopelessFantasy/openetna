.class final Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
.super Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;
.source "TwitterMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList;
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

    .line 650
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;-><init>()V

    .line 652
    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->auxIntent:Landroid/content/Intent;

    .line 653
    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->messageId:Ljava/lang/String;

    .line 654
    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->threadId:Ljava/lang/String;

    .line 655
    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->authorName:Ljava/lang/String;

    return-void
.end method
