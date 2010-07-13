.class Lcom/lge/favoritecontacts/FavoritePopup$6;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->setEmailBtnOperation()V
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
    .line 663
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$6;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 665
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$6;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup$6;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v4}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v4

    if-lt v3, v4, :cond_4d

    .line 666
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$6;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->access$200(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/widget/TextSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 667
    .local v2, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    .end local v2           #tv:Landroid/widget/TextView;
    .local v1, number:Ljava/lang/String;
    :goto_31
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 674
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$6;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    const v4, 0x9c46

    invoke-virtual {v3, v4, v0}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(ILandroid/content/Intent;)V

    .line 675
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$6;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    .line 676
    return-void

    .line 669
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :cond_4d
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$6;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->access$400(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .restart local v1       #number:Ljava/lang/String;
    goto :goto_31
.end method
