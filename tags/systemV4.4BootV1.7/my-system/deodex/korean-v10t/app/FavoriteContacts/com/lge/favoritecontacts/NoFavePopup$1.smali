.class Lcom/lge/favoritecontacts/NoFavePopup$1;
.super Landroid/content/BroadcastReceiver;
.source "NoFavePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/NoFavePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/NoFavePopup;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/NoFavePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/favoritecontacts/NoFavePopup$1;->this$0:Lcom/lge/favoritecontacts/NoFavePopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    const-string v1, "favoriteContacts.synchronizing.action.ALLDIE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 42
    iget-object v1, p0, Lcom/lge/favoritecontacts/NoFavePopup$1;->this$0:Lcom/lge/favoritecontacts/NoFavePopup;

    const/16 v2, -0x12c

    invoke-virtual {v1, v2}, Lcom/lge/favoritecontacts/NoFavePopup;->setResult(I)V

    .line 43
    iget-object v1, p0, Lcom/lge/favoritecontacts/NoFavePopup$1;->this$0:Lcom/lge/favoritecontacts/NoFavePopup;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/NoFavePopup;->finish()V

    .line 45
    :cond_18
    return-void
.end method
