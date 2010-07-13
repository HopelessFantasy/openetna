.class Lcom/lge/hiddenmenu/device_test/FontTest$3;
.super Ljava/lang/Object;
.source "FontTest.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/FontTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/FontTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/FontTest;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 152
    .local v0, mask:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$300(Lcom/lge/hiddenmenu/device_test/FontTest;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$300(Lcom/lge/hiddenmenu/device_test/FontTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 153
    const/4 v1, 0x1

    return v1
.end method
