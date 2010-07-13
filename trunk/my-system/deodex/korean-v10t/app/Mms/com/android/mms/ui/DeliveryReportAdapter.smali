.class public Lcom/android/mms/ui/DeliveryReportAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeliveryReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/DeliveryReportItem;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DeliveryReportAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    const v0, 0x7f030012

    const v1, 0x7f090032

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DeliveryReportAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    .line 44
    .local v2, item:Lcom/android/mms/ui/DeliveryReportItem;
    if-nez p2, :cond_23

    .line 45
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 46
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/DeliveryReportListItem;

    .line 56
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .local v3, listItem:Lcom/android/mms/ui/DeliveryReportListItem;
    :goto_1a
    iget-object v4, v2, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/DeliveryReportListItem;->bind(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 58
    .end local v3           #listItem:Lcom/android/mms/ui/DeliveryReportListItem;
    :goto_22
    return-object v4

    .line 49
    :cond_23
    instance-of v4, p2, Lcom/android/mms/ui/DeliveryReportListItem;

    if-eqz v4, :cond_2c

    .line 50
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/DeliveryReportListItem;

    move-object v3, v0

    .restart local v3       #listItem:Lcom/android/mms/ui/DeliveryReportListItem;
    goto :goto_1a

    .end local v3           #listItem:Lcom/android/mms/ui/DeliveryReportListItem;
    :cond_2c
    move-object v4, p2

    .line 52
    goto :goto_22
.end method
