.class Lcom/lge/hiddenmenu/device_test/FontTest$1;
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
    .line 111
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$002(Lcom/lge/hiddenmenu/device_test/FontTest;I)I

    .line 113
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$100(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
