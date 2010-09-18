.class public Lcom/android/mms/ui/DeliveryReportListItem;
.super Landroid/widget/LinearLayout;
.source "DeliveryReportListItem.java"


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mRecipientView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "recipient"
    .parameter "status"

    .prologue
    const v8, 0x7f020034

    .line 56
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    .line 57
    .local v0, cache:Lcom/android/mms/util/ContactInfoCache;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p2}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v6, 0x7f0700d3

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, receivedStr:Ljava/lang/String;
    const v6, 0x7f0700d4

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, failedStr:Ljava/lang/String;
    const v6, 0x7f0700d1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, pendingStr:Ljava/lang/String;
    const v6, 0x7f0700d6

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, rejectStr:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_48

    .line 71
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v7, 0x7f020033

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :cond_47
    :goto_47
    return-void

    .line 72
    :cond_48
    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_54

    .line 73
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 74
    :cond_54
    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_63

    .line 75
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v7, 0x7f020035

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 76
    :cond_63
    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_47

    .line 78
    iget-object v6, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    .line 49
    return-void
.end method
