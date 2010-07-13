.class Lcom/lge/favoritecontacts/FavoritePopup$9;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->setArrowBtnOperation()V
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
    .line 727
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 728
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$200(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/widget/TextSwitcher;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$800(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 729
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$200(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/widget/TextSwitcher;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$900(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 731
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$010(Lcom/lge/favoritecontacts/FavoritePopup;)I

    .line 732
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v1

    if-gez v1, :cond_75

    .line 733
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->access$700(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$002(Lcom/lge/favoritecontacts/FavoritePopup;I)I

    .line 734
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$700(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v1

    if-lez v1, :cond_66

    .line 735
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$400(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v3

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 747
    .local v0, setNumber:Ljava/lang/String;
    :goto_5c
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$200(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 748
    return-void

    .line 737
    .end local v0           #setNumber:Ljava/lang/String;
    :cond_66
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$300(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #setNumber:Ljava/lang/String;
    goto :goto_5c

    .line 738
    .end local v0           #setNumber:Ljava/lang/String;
    :cond_75
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v2

    if-lt v1, v2, :cond_a1

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$700(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v1

    if-lez v1, :cond_a1

    .line 739
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$400(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v3

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .restart local v0       #setNumber:Ljava/lang/String;
    goto :goto_5c

    .line 741
    .end local v0           #setNumber:Ljava/lang/String;
    :cond_a1
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v1

    if-lez v1, :cond_b8

    .line 742
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$300(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v2

    aget-object v0, v1, v2

    .restart local v0       #setNumber:Ljava/lang/String;
    goto :goto_5c

    .line 744
    .end local v0           #setNumber:Ljava/lang/String;
    :cond_b8
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->access$400(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoritePopup;->access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$9;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I

    move-result v3

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .restart local v0       #setNumber:Ljava/lang/String;
    goto :goto_5c
.end method
