.class Lcom/lge/hiddenmenu/device_test/FontTest$4;
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
    .line 274
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$400(Lcom/lge/hiddenmenu/device_test/FontTest;)I

    move-result v0

    .line 276
    .local v0, tmp:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$500(Lcom/lge/hiddenmenu/device_test/FontTest;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$402(Lcom/lge/hiddenmenu/device_test/FontTest;I)I

    .line 277
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v1, v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$502(Lcom/lge/hiddenmenu/device_test/FontTest;I)I

    .line 278
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$600(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    .line 279
    const/4 v1, 0x1

    return v1
.end method
