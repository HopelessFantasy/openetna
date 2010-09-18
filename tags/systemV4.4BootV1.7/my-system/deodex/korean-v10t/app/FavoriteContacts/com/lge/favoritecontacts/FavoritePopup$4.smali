.class Lcom/lge/favoritecontacts/FavoritePopup$4;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->setCallBtnOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoritePopup;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoritePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$4;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 622
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup$4;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v4}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/favoritecontacts/FavoritePopup$4;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v5}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v5

    if-ge v4, v5, :cond_4d

    .line 624
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup$4;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v4}, Lcom/lge/favoritecontacts/FavoritePopup;->access$200(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/widget/TextSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 625
    .local v3, tv:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .end local v3           #tv:Landroid/widget/TextView;
    .local v1, number:Ljava/lang/String;
    :goto_31
    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 634
    .local v2, telUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 635
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup$4;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    const v5, 0x9c43

    invoke-virtual {v4, v5, v0}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(ILandroid/content/Intent;)V

    .line 636
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup$4;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v4}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    .line 637
    return-void

    .line 627
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #telUri:Landroid/net/Uri;
    :cond_4d
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup$4;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v4}, Lcom/lge/favoritecontacts/FavoritePopup;->access$300(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .restart local v1       #number:Ljava/lang/String;
    goto :goto_31
.end method
