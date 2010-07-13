.class Lcom/lge/render/EssentialRenderer$1;
.super Ljava/lang/Object;
.source "EssentialRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/EssentialRenderer;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/EssentialRenderer;


# direct methods
.method constructor <init>(Lcom/lge/render/EssentialRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/lge/render/EssentialRenderer$1;->this$0:Lcom/lge/render/EssentialRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 489
    const-string v4, "com.android.contacts"

    .line 490
    .local v4, pkg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".SearchActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, acti:Ljava/lang/String;
    const-string v1, "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

    .line 492
    .local v1, action:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .local v2, assignActi:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 495
    const-string v5, "com.android.contacts.extra.TITLE_EXTRA"

    iget-object v6, p0, Lcom/lge/render/EssentialRenderer$1;->this$0:Lcom/lge/render/EssentialRenderer;

    invoke-static {v6}, Lcom/lge/render/EssentialRenderer;->access$000(Lcom/lge/render/EssentialRenderer;)Lcom/lge/favoritecontacts/FavoriteContacts;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v5, "starred"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v5, p0, Lcom/lge/render/EssentialRenderer$1;->this$0:Lcom/lge/render/EssentialRenderer;

    invoke-static {v5}, Lcom/lge/render/EssentialRenderer;->access$000(Lcom/lge/render/EssentialRenderer;)Lcom/lge/favoritecontacts/FavoriteContacts;

    move-result-object v5

    const/16 v6, 0x7d2

    invoke-virtual {v5, v3, v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->prepareStartApp(Landroid/content/Intent;I)V

    .line 502
    iget-object v5, p0, Lcom/lge/render/EssentialRenderer$1;->this$0:Lcom/lge/render/EssentialRenderer;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/lge/render/EssentialRenderer;->access$102(Lcom/lge/render/EssentialRenderer;Z)Z

    .line 503
    return-void
.end method
