.class Lcom/lge/favoritecontacts/FavoritePopup$12;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->setMinusBtnOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoritePopup;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoritePopup;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$12;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    iput-object p2, p0, Lcom/lge/favoritecontacts/FavoritePopup$12;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup$12;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    const v1, 0x9c41

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$12;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(ILandroid/content/Intent;)V

    .line 777
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup$12;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    .line 778
    return-void
.end method
