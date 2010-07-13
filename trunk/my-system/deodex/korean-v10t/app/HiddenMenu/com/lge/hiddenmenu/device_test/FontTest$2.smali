.class Lcom/lge/hiddenmenu/device_test/FontTest$2;
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
    .line 127
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$200(Lcom/lge/hiddenmenu/device_test/FontTest;)I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$202(Lcom/lge/hiddenmenu/device_test/FontTest;I)I

    .line 129
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/FontTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->access$100(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method
