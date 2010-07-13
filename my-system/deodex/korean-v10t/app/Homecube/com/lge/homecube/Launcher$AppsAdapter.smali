.class public Lcom/lge/homecube/Launcher$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation


# instance fields
.field final appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method public constructor <init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5598
    .local p3, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/lge/homecube/Launcher$AppsAdapter;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5599
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/homecube/Launcher$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5602
    iput-object p3, p0, Lcom/lge/homecube/Launcher$AppsAdapter;->appList:Ljava/util/ArrayList;

    .line 5604
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 5637
    iget-object v0, p0, Lcom/lge/homecube/Launcher$AppsAdapter;->appList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 5641
    iget-object v0, p0, Lcom/lge/homecube/Launcher$AppsAdapter;->appList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 5645
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5608
    iget-object v3, p0, Lcom/lge/homecube/Launcher$AppsAdapter;->appList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/ApplicationInfo;

    .line 5611
    .local v1, info:Lcom/lge/homecube/ApplicationInfo;
    if-nez p2, :cond_16

    .line 5612
    iget-object v3, p0, Lcom/lge/homecube/Launcher$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030003

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5615
    :cond_16
    move-object v0, p2

    check-cast v0, Lcom/lge/homecube/MenuTextView;

    move-object v2, v0

    .line 5616
    .local v2, textView:Lcom/lge/homecube/MenuTextView;
    invoke-virtual {v2, v5}, Lcom/lge/homecube/MenuTextView;->setFocusable(Z)V

    .line 5617
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v3, v6, v6}, Lcom/lge/homecube/MenuTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5618
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/lge/homecube/MenuTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5619
    invoke-virtual {v2, v1}, Lcom/lge/homecube/MenuTextView;->setTag(Ljava/lang/Object;)V

    .line 5620
    const/high16 v3, 0x3f80

    const v4, 0x3f4ccccd

    invoke-virtual {v2, v3, v4}, Lcom/lge/homecube/MenuTextView;->setLineSpacing(FF)V

    .line 5629
    const/4 v3, 0x3

    invoke-virtual {v2, v7, v3, v7, v5}, Lcom/lge/homecube/MenuTextView;->setPadding(IIII)V

    .line 5630
    invoke-virtual {v2, v5}, Lcom/lge/homecube/MenuTextView;->setCompoundDrawablePadding(I)V

    .line 5632
    return-object p2
.end method
