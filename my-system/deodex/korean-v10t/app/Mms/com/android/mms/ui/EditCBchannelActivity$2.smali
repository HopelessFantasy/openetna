.class Lcom/android/mms/ui/EditCBchannelActivity$2;
.super Ljava/lang/Object;
.source "EditCBchannelActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditCBchannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditCBchannelActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditCBchannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/mms/ui/EditCBchannelActivity$2;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 668
    if-eqz p2, :cond_f

    .line 669
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 670
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 672
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_f
    return-void
.end method
