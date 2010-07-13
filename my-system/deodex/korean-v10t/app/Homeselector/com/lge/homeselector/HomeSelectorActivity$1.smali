.class Lcom/lge/homeselector/HomeSelectorActivity$1;
.super Ljava/lang/Object;
.source "HomeSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homeselector/HomeSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homeselector/HomeSelectorActivity;


# direct methods
.method constructor <init>(Lcom/lge/homeselector/HomeSelectorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lge/homeselector/HomeSelectorActivity$1;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v3, 0x7f070003

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, i:I
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 90
    .local v0, c:Landroid/widget/CheckedTextView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 91
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity$1;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    iput p3, v2, Lcom/lge/homeselector/HomeSelectorActivity;->mSelectedHome:I

    .line 92
    :goto_12
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 94
    if-eq p3, v1, :cond_28

    .line 96
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #c:Landroid/widget/CheckedTextView;
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 97
    .restart local v0       #c:Landroid/widget/CheckedTextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 92
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 101
    :cond_2b
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity$1;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    invoke-virtual {v2}, Lcom/lge/homeselector/HomeSelectorActivity;->setHomescreen()V

    .line 102
    return-void
.end method
