.class public final Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;
.super Ljava/lang/Object;
.source "RecentCallsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecentCallsListItemViews"
.end annotation


# instance fields
.field callView:Landroid/view/View;

.field dateView:Landroid/widget/TextView;

.field durationView:Landroid/widget/TextView;

.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field line1View:Landroid/widget/TextView;

.field numberView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
